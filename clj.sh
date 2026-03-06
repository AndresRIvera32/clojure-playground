#!/bin/bash
export JAVA_HOME="/c/liberty_development_java21/liberty_development_java21/jdk-21.0.2+13"
export PATH="$JAVA_HOME/bin:$PATH"
CP="lib/clojure-1.12.0.jar;lib/spec.alpha-0.5.238.jar;lib/core.specs.alpha-0.4.74.jar;lib/nrepl-1.1.2.jar;src"

if [ "$1" == "nrepl" ]; then
    echo "Starting nREPL server on port 7888..."
    java -cp "$CP" clojure.main -e "(require 'nrepl.server) (let [s (nrepl.server/start-server :port 7888)] (println \"nREPL server started on port\" (:port s)) (spit \".nrepl-port\" (:port s)) (.join (Thread/currentThread)))"
elif [ $# -eq 0 ]; then
    echo "Starting Clojure REPL..."
    java -cp "$CP" clojure.main
else
    java -cp "$CP" clojure.main "$@"
fi

