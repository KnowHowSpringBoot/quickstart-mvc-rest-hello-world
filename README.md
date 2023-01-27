# Hello, World! - Sample Restful Application

Minimal Spring Boot based RESTful 'Hello World' example, including Swagger.

## Technology stack

Java 17, Spring Boot

## Prerequisites

The following items should be installed in your system:

* Java 17 or newer.
* git command line tool (https://help.github.com/articles/set-up-git)
* Your preferred IDE (IDEA preferably)

### Running locally

This application is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built
using [Maven](https://spring.io/guides/gs/maven/). You can build a jar file and run it from the command line:

```
git clone https://github.com/ujar-org/bs-rst-hello-world.git
cd bs-rst-hello-world
./mvnw package
java -jar target/*.jar
```

You can then access Swagger UI here: http://localhost:8080/swagger-ui.html

### Working with Application in your IDE

1) On the command line

```
git clone https://github.com/ujar-org/bs-rst-hello-world.git
```

2) Inside IDE

In the main menu, choose `File -> Open` and select the HelloWorldApplication [pom.xml](pom.xml). Click on the `Open` button.
Activate "local" profile in the Run settings or set it via environment
variables. [instruction](https://stackoverflow.com/questions/38520638/how-to-set-spring-profile-from-system-variable)
Wait to indexing completion and push the green "play" button.

3) Navigate to Swagger UI

Visit [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html) in your browser.

## Code conventions

The code follows [Google Code Conventions](https://google.github.io/styleguide/javaguide.html). Code
quality is measured by:

- [Sonarqube](https://sonarqube.c2a2.com/dashboard?id=ujar-org%3Abs-rst-hello-world)
- [PMD](https://pmd.github.io/)
- [CheckStyle](https://checkstyle.sourceforge.io/)
- [SpotBugs](https://spotbugs.github.io/)

### Tests

This project has standard JUnit tests. To run them execute this command:

```text
./mvnw test
```

It is mandatory to keep test code coverage not below **80** percents and cover all business logic and edge cases.
