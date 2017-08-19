#bash util/mysql.start
java -Dconfig.file=application.conf -jar cromwell.jar run assessment_assembly.wdl assessment_assembly_plant.json - assessment_assembly.metadata busco.wdl.zip
#bash util/mysql.stop
