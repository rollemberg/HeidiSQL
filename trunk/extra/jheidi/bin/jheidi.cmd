@echo off

java -DstartEDT=true -DusePrecompiledClassFiles=true -cp jheidi.jar;lib/ajl.jar;lib/swing-worker-1.1.jar;lib/editor.jar;lib/mysql-connector-java-5.0.7-bin.jar;lib/drizzle-jdbc-0.1.jar;lib/slf4j-api-1.5.6.jar;lib/slf4j-nop-1.5.6.jar;lib/ojdbc14.jar;lib/log4j-1.2.13.jar -Dlog4jconfig=logs/log4jconfig.xml com.rendion.ajl.AjlScript jheidi
