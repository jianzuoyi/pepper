#!/bin/bash
java -Dconfig.file=../modules/cromwell/application.conf -jar cromwell.jar run -i stats.inputs -o stats.options -m stats.metadata ../modules/stats.wdl
