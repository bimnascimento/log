@echo off

REM curl ^
REM     --location ^
REM     --retry 0 ^
REM     --output "./graylog/logs-bkp/*.log" ^
REM     "http://192.168.246.250:8080/next-platform/8084/*.log"

REM cat **/file*.txt
REM xargs -n 1 curl -s -o /dev/null -w "%{http_code} - %{url_effective}\n" < 'file.txt'
REM xargs -n 1 echo %{http_code} < ./list.txt

REM curl -s -u user:password https://myURL/ws/ | grep .zip
REM curl http://192.168.246.250:8080/next-platform/8084/ | grep .log
REM curl -s "$site" --list-only | sed -n 's%.*href="\([^.]*\.rdf\.gz\)".*%\n\1%; ta; b; :a; s%.*\n%%; p'


REM while read -r fn; do
REM     REM curl -X POST "http://user:key@x.x.x.xxx:8080/job/$fn/build"
REM     echo $fn
REM done < list.txt

REM :loop
REM echo Ooops
REM goto loop

REM ----------------------
REM curl -s http://192.168.246.250:8080/next-platform/8084/ --list-only | sed -n 's%.*href="\([^.]*\.log\)".*%\n\1%; ta; b; :a; s%.*\n%%; p' > list.txt

for /f %%i in (list.txt) do (
    REM call :process %1 %2 %%i
    echo downloading... %%i
    curl ^
        --progress-bar ^
        --location ^
        --retry 0 ^
        --output "./logs/%%i" ^
        "http://192.168.246.250:8080/next-platform/8084/%%i"
)
ls -la ./logs/