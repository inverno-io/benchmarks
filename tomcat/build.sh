PRGDIR=`dirname "$0"`
TOMCAT_MAJOR_VERSION=10
TOMCAT_VERSION=10.0.5

if ! [ -e "$PRGDIR"/apache-tomcat ]
then
    wget -O "$PRGDIR"/apache-tomcat.tar.gz https://downloads.apache.org/tomcat/tomcat-"$TOMCAT_MAJOR_VERSION"/v"$TOMCAT_VERSION"/bin/apache-tomcat-"$TOMCAT_VERSION".tar.gz
    tar xvfz "$PRGDIR"/apache-tomcat.tar.gz -C "$PRGDIR"
    mv "$PRGDIR"/apache-tomcat-"$TOMCAT_VERSION" "$PRGDIR"/apache-tomcat
    rm -r "$PRGDIR"/apache-tomcat/webapps/*
    cp -r "$PRGDIR"/conf/* "$PRGDIR"/apache-tomcat/conf/
fi

cd "$PRGDIR"/demo-tomcat
mvn clean package
cd -

cp -v "$PRGDIR"/demo-tomcat/target/demo-tomcat.war "$PRGDIR"/apache-tomcat/webapps
