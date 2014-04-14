#!/bin/sh
# Reads the Java 7 version installed on OS X
# Modified by Owen Pragel in 2013.. taken from a thread he can't find anymore. Credit to the original guy!

# Check if java_home is defined
javaHome=`/usr/libexec/java_home 2> /dev/null`;

if [ ! -z $javaHome ]; then
  vers=`java -version 2>&1 | grep "java version" | awk '{print substr($3,2,length($3)-2);}'`
  echo "<result>$vers</result>"
else
  echo "<result>Not installed</result>"
fi

exit 0
