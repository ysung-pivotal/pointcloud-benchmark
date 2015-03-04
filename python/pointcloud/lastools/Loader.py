#!/usr/bin/env python
################################################################################
#    Created by Oscar Martinez                                                 #
#    o.rubi@esciencecenter.nl                                                  #
############################
import os, logging, psycopg2
from pointcloud import utils, lidaroverview
from pointcloud.AbstractLoader import AbstractLoader
from pointcloud.lastools.CommonLASTools import CommonLASTools

class Loader(AbstractLoader,CommonLASTools):
    def __init__(self, configuration):
        """ Set configuration parameters and create user if required """
        AbstractLoader.__init__(self, configuration)
        self.setVariables(configuration)
        
    def initialize(self):
        # Remove possible previous data
        os.system('rm -rf ' + self.dataFolder)
        os.system('mkdir -p ' + self.dataFolder)
        
    def process(self):
        inputFiles = utils.getFiles(self.inputFolder, self.extension)[self.fileOffset:]
        return self.processMulti(inputFiles, self.numProcessesLoad, self.processFile)
    
    def processFile(self, index, fileAbsPath):
        
        if self.extension == self.dataExtension:
            outputAbsPath = self.dataFolder + '/' + os.path.basename(fileAbsPath)
        else:
            outputAbsPath = self.dataFolder + '/' + os.path.basename(fileAbsPath).replace(self.extension, self.dataExtension)
        commands = []
        if self.sort:
            commands.append('lassort.exe -i ' + fileAbsPath + ' -o ' + outputAbsPath)
        else:
            if self.extension == self.dataExtension:
                commands.append('ln -s ' + fileAbsPath + ' ' + outputAbsPath)
            else:
                commands.append('las2las -i ' + fileAbsPath + ' -o ' + outputAbsPath)
        commands.append('lasindex -i ' + outputAbsPath)
        
        for command in commands:
            logging.debug(command)
            os.system(command)
        
    def close(self):
        if self.dbIndex:
            logging.info('Creating index DB')
            lidaroverview.run(self.dataFolder, self.dataExtension, self.numProcessesLoad, self.dbName, self.userName, self.password, self.dbHost, self.dbPort, True, self.lasIndexTableName, 'lastools', self.srid)
        
    def size(self):
        try:
            size_indexes = float(((os.popen("stat -Lc %s " + self.dataFolder + "/*.lax | awk '{t+=$1}END{print t}'")).read().split('\t'))[0]) / (1024. * 1024.)
        except:
            size_indexes = 0.
        if self.dbIndex:
            connection = self.connect()
            cursor = connection.cursor()
            size_indexes += float(utils.getPostgresSizes(cursor)[-1])
            connection.close()
        try:
            size_ex_indexes = float(((os.popen("stat -Lc %s " + self.dataFolder + "/*." +  self.dataExtension + " | awk '{t+=$1}END{print t}'")).read().split('\t'))[0]) / (1024. * 1024.)
        except:
            size_ex_indexes = 0
        size_total = size_indexes + size_ex_indexes
        return ' Size indexes= ' +  ('%.3f MB' % size_indexes) + '. Size excluding indexes= ' +  ('%.3f MB' % size_ex_indexes) + '. Size total= ' +  ('%.3f MB' % size_total)

    def getNumPoints(self) :
        try:
            if self.dbIndex:
                connString = self.connectString(False, True)
                return int(os.popen('psql ' + connString + ' -c "select sum(num) from ' + self.lasIndexTableName + '" -t -A').read())
            else:
                return int(os.popen("lasinfo -i " + self.dataFolder + "/*." +  self.dataExtension + " 2>&1 | grep 'number of point records' | awk '{t+=$5}END{print t}'").read())
        except: 
            return 0

    def connect(self, superUser = False):
        return psycopg2.connect(self.connectString(superUser))