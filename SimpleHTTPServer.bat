cls
@echo off
start http://127.0.0.1:8000/
python -m SimpleHTTPServer 8000
cmd /k