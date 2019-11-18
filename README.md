# Java-SpringWeb-1

Simple Spring Web application for controlling page linking

![alt text](https://user-images.githubusercontent.com/57636419/69020984-4bb2d180-09f1-11ea-8cca-131ab132da20.JPG)
![alt text](https://user-images.githubusercontent.com/57636419/69020995-50778580-09f1-11ea-81ee-47371b2fe30e.JPG)

     file created :
     
     pom.xml
     WebContent/WEB-INF/web.xml
     WebContent/WEB-INF/newservlet-servlet.xml
     WebContent/index.jsp
     WebContent/WEB-INF/jsp/page1.jsp
     controllerClass.java  (package: controllerPackage)
     
<b>1. Configure Server</b>

     Windows -> Show View -> Others -> Server
     
     open server tab -> (click this link to add new server…) -> Add Tomcat v9 server -> Finish
     
     Tomcat installation directory: download & extract https://tomcat.apache.org/download-90.cgi<br>
     JRE: download & extract https://www.oracle.com/technetwork/java/javase/downloads/jdk13-downloads-5672538.html
     
     ->Finish
     
<b>2. Create New Dynamic Web Project</b>
  
     Project name: Java-SpringWeb-1<br>
     Target runtime: Apache Tomcat v9.0<br>
     Configuration: Default Configuration
     
<b>3. Convert to Maven Project to generate pom.xml</b>

     //(right click project) -> configure -> convert to Maven project -> edit pom.xml:
     //add these before </project>
     
     <dependencies>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-core</artifactId>
			<version>5.1.3.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>5.1.3.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-aop</artifactId>
			<version>5.1.3.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>5.1.3.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-web</artifactId>
			<version>5.1.3.RELEASE</version>
		</dependency> 
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
     </dependencies>
     
     

     
