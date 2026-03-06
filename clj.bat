@echo off
set JAVA_HOME=C:\liberty_development_java21\liberty_development_java21\jdk-21.0.2+13
set PATH=%JAVA_HOME%\bin;%PATH%
set CP=lib\clojure-1.12.0.jar;lib\spec.alpha-0.5.238.jar;lib\core.specs.alpha-0.4.74.jar;lib\nrepl-1.1.2.jar;src

if "%~1"=="nrepl" (
    echo Starting nREPL server...
    java -cp "%CP%" clojure.main -e "(require 'nrepl.server) (let [s (nrepl.server/start-server :port 7888)] (println \"nREPL server started on port\" (:port s)) (spit \".nrepl-port\" (:port s)) (.join (Thread/currentThread)))"
) else if "%~1"=="" (
    echo Starting Clojure REPL...
    java -cp "%CP%" clojure.main
) else (
    java -cp "%CP%" clojure.main %*
)

