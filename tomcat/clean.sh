PRGDIR=`dirname "$0"`

cd "$PRGDIR"/demo-tomcat
mvn clean
cd -

rm -rf "$PRGDIR"/apache-tomcat
rm "$PRGDIR"/apache-tomcat.tar.gz


