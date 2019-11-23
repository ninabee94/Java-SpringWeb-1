# Java-SpringWeb-1

Simple Spring Web application for controlling page linking

![alt text](https://user-images.githubusercontent.com/57636419/69472293-29e78f00-0de3-11ea-8ecb-3a7e4cf87274.JPG)
![alt text](https://user-images.githubusercontent.com/57636419/69472296-2f44d980-0de3-11ea-8008-d422f8be92cc.JPG)

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
  
     Project name: Java-SpringWeb-1
     Target runtime: Apache Tomcat v9.0
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
     
<b>4. Generate web.xml</b>
	
     //(right click project) -> Java EE Tools -> Generate Deployment Descriptor Stub -> edit WebContent/WEB-INF/web.xml
     //add these before </web-app>
     
     <servlet>
        <servlet-name>newservlet</servlet-name>
        <servlet-class> org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
     </servlet>
     <servlet-mapping>
        <servlet-name>newservlet</servlet-name>
        <url-pattern>/</url-pattern>
     </servlet-mapping>
     
<b>5. Create WebContent/WEB-INF/newservlet-servlet.xml</b>
	
     //add these in new line
     
     <beans xmlns="http://www.springframework.org/schema/beans"
	  xmlns:mvc="http://www.springframework.org/schema/mvc"
	  xmlns:context="http://www.springframework.org/schema/context"
	  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xsi:schemaLocation="
          http://www.springframework.org/schema/beans     
          http://www.springframework.org/schema/beans/spring-beans.xsd
          http://www.springframework.org/schema/mvc 
          http://www.springframework.org/schema/mvc/spring-mvc.xsd
          http://www.springframework.org/schema/context 
          http://www.springframework.org/schema/context/spring-context.xsd">       
         <mvc:annotation-driven/>
	  <context:component-scan
		base-package="controllerPackage" />
	  <mvc:default-servlet-handler /> 
	  <bean id="viewResolver"
		class="org.springframework.web.servlet.view.UrlBasedViewResolver">
		<property name="viewClass"
			value="org.springframework.web.servlet.view.JstlView" />
		<property name="prefix" value="/WEB-INF/jsp/" />
		<property name="suffix" value=".jsp" />
	  </bean>	
     </beans>
     
<b>6. Create controllerClass.java (package: controllerPackage)</b>
	
     package controllerPackage;
     import org.springframework.stereotype.Controller;
     import org.springframework.web.bind.annotation.RequestMapping;
     import org.springframework.web.servlet.ModelAndView;
     @Controller
     public class controllerClass {	
	 @RequestMapping("/page1")
         public ModelAndView page1() {
             String text = "This message isfrom controllerClass<br><br>";
             return new ModelAndView("page1", "message", text);
         }
     }
     
<b>7. Create WebContent/index.jsp</b>

     //add in body
     
     <h3><a href="page1.html">Click to go to Page1... </a></h3>  
     
<b>8. Create WebContent/WEB-INF/jsp/page1.jsp</b>

     //add in body
     
     ${message}<br><h3>Welcome to Page1</h3>
     
<b>9. Run Project</b>

     (right click project) -> Run as -> Maven Build -> goals: clean install -> apply -> run ->refresh folder target
     
<b>10. Start Server</b>

     open server tab -> right click server -> start
     
     open http://localhost:8080/Java-SpringWeb-1/
     
     
     

     
