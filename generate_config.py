#!/usr/bin/env python

import json


class ProjectConfig():
    def __init__(self):
        self.project_name = 'Test'
        self.version = '0.1'
        self.description = 'generic project template'
        self.mainfile = 'main.cpp'
        self.dependencies = ['yaml-cpp/0.7.0']
        self.exe_name = 'test'
    
    
def main():
    config = ProjectConfig()
    print(json.dumps(config.__dict__))

    
if __name__ == '__main__':
    main()
