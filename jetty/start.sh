PRGDIR=`dirname "$0"`
JETTY_HOME="$PRGDIR"/jetty-home
JETTY_BASE="$PRGDIR"/jetty-base
$JAVA_HOME/bin/java -jar "$JETTY_HOME"/start.jar jetty.base="$JETTY_BASE"
