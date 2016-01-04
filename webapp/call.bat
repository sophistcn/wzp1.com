@call clean
@call build
del E:\JavaTools\apache-tomcat-7.0.59\webapps\webapp.war /Y /F 
rd E:\JavaTools\apache-tomcat-7.0.59\webapps\webapp /Q /Y 
@call copy
