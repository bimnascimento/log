@echo off

REM https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/

REM mongodump 
REM --host <hostname-of-mongoserver> 
REM --port HOST_PORT
REM --db <db-name> 
REM --collection <collection-name> 
REM --username <dbuser-name> 
REM --password <password> 
REM --gzip 
REM --out </backup/location/>
REM ----------------

REM mongorestore 
REM --db=<new_db_name> 
REM --collection=<collection_name> 
REM data/<db_name>/<collection_name>.bson
REM --dir ./directory name --db database-name
REM ----------------

REM SET host=localhost:27020
REM SET dbNameToDump=MyDB
REM SET backupsFolder=Backups
REM mongodump.exe --host %host% --db %dbNameToDump%
REM SET date="%date:~10,4%-%date:~4,2%-%date:~7,2%.%time:~0,2%-%time:~3,2%"
REM cd %backupsFolder%
REM md %date%
REM xcopy /e ..\dump %date%
REM rmdir /s /q ..\dump
REM ----------------

SET dirMongo=E:\WORK_BKP\MONGO
REM mongorestore.exe --host %host% --db %dbNameToRestore% %restoreFolder%
REM ----------------

REM PRODUCAO
REM mongodump --host 10.83.101.196 --port 27017 --out %dirMongo%\PR --db=EnergisaApiComercial --gzip --archive=dump.gz

SET empresa=1
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CConta.%empresa%.gz --db=EnergisaApiComercial --collection=CConta.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaH.%empresa%.gz --db=EnergisaApiComercial --collection=CContaH.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaI.%empresa%.gz --db=EnergisaApiComercial --collection=CContaI.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaR.%empresa%.gz --db=EnergisaApiComercial --collection=CContaR.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Cliente.%empresa%.gz --db=EnergisaApiComercial --collection=Cliente.%empresa%
mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Instalacao.%empresa%.gz --db=EnergisaApiComercial --collection=Instalacao.%empresa%

SET empresa=2
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CConta.%empresa%.gz --db=EnergisaApiComercial --collection=CConta.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaH.%empresa%.gz --db=EnergisaApiComercial --collection=CContaH.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaI.%empresa%.gz --db=EnergisaApiComercial --collection=CContaI.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaR.%empresa%.gz --db=EnergisaApiComercial --collection=CContaR.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Cliente.%empresa%.gz --db=EnergisaApiComercial --collection=Cliente.%empresa%
mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Instalacao.%empresa%.gz --db=EnergisaApiComercial --collection=Instalacao.%empresa%

SET empresa=3
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CConta.%empresa%.gz --db=EnergisaApiComercial --collection=CConta.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaH.%empresa%.gz --db=EnergisaApiComercial --collection=CContaH.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaI.%empresa%.gz --db=EnergisaApiComercial --collection=CContaI.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaR.%empresa%.gz --db=EnergisaApiComercial --collection=CContaR.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Cliente.%empresa%.gz --db=EnergisaApiComercial --collection=Cliente.%empresa%
mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Instalacao.%empresa%.gz --db=EnergisaApiComercial --collection=Instalacao.%empresa%

SET empresa=8
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CConta.%empresa%.gz --db=EnergisaApiComercial --collection=CConta.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaH.%empresa%.gz --db=EnergisaApiComercial --collection=CContaH.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaI.%empresa%.gz --db=EnergisaApiComercial --collection=CContaI.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaR.%empresa%.gz --db=EnergisaApiComercial --collection=CContaR.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Cliente.%empresa%.gz --db=EnergisaApiComercial --collection=Cliente.%empresa%
mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Instalacao.%empresa%.gz --db=EnergisaApiComercial --collection=Instalacao.%empresa%

SET empresa=9
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CConta.%empresa%.gz --db=EnergisaApiComercial --collection=CConta.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaH.%empresa%.gz --db=EnergisaApiComercial --collection=CContaH.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaI.%empresa%.gz --db=EnergisaApiComercial --collection=CContaI.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.CContaR.%empresa%.gz --db=EnergisaApiComercial --collection=CContaR.%empresa%
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Cliente.%empresa%.gz --db=EnergisaApiComercial --collection=Cliente.%empresa%
mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR.Instalacao.%empresa%.gz --db=EnergisaApiComercial --collection=Instalacao.%empresa%

REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR_FULL.gz --db=EnergisaApiComercial
REM mongodump --host 10.83.101.196 --port 27017 --gzip --archive=%dirMongo%\PR_2.gz --db=EnergisaApiComercial

REM HOMOLOGACAO
REM mongodump --host 10.200.1.133 --port 27017 --out %dirMongo%\HO --db=EnergisaApiComercial
REM mongodump --host 10.200.1.133 --port 27017 --gzip --archive=%dirMongo%\HO.gz --db=EnergisaApiComercial

REM DESENVOLVIMENTO
REM mongodump --host 10.200.1.133 --port 27017 --out %dirMongo%\DS --db=EnergisaApiComercial

REM LOCAL
REM mongodump --host localhost --port 27017 --db=EnergisaApiComercial --gzip --archive=%dirMongo%\dump.gz

REM RESTORE
REM mongorestore --host localhost --port 27017 --db=EnergisaApiComercial --gzip --archive=%dirMongo%\PR.gz