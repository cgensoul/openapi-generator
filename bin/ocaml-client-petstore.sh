#!/bin/sh

SCRIPT="$0"
echo "# START SCRIPT: $SCRIPT"

while [ -h "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

executable="./modules/openapi-generator-cli/target/openapi-generator-cli.jar"

if [ ! -f "$executable" ]
then
  mvn -B clean package
fi

# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -Xmx1024M -DdebugOperations -DloggerPath=conf/log4j.properties"

args="generate -t modules/openapi-generator/src/main/resources/ocaml-client -i modules/openapi-generator/src/test/resources/2_0/petstore.yaml -g ocaml-client -o samples/client/petstore/ocaml-client --additional-properties packageName=petstore_client $@"
#args="debugModels -t modules/openapi-generator/src/main/resources/ocaml-client -i modules/openapi-generator/src/test/resources/2_0/petstore.yaml -g ocaml-client -o samples/client/petstore/ocaml-client --additional-properties packageName=petstore_client $@"

echo "java ${JAVA_OPTS} -jar ${executable} ${args}"
java $JAVA_OPTS -jar $executable $args