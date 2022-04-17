# Hello World Rest API

### Running the Application

Run RestfulWebServicesApplication as a Java Application.

- http://localhost:8080/hello-world

```txt
Hello World
```

- http://localhost:8080/hello-world-bean

```json
{"message":"Hello World"}
```

- http://localhost:8080/hello-world/path-variable/Eric

```json
{"message":"Hello World, Eric"}
```

### Plugin configuration

```
<plugin>
	<groupId>com.microsoft.azure</groupId>
	<artifactId>azure-webapp-maven-plugin</artifactId>
	<version>1.7.0</version>
</plugin>
```
				
### Azure CLI

- https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

### Final Plugin Configuration
```
<plugin>
	<groupId>com.microsoft.azure</groupId>
	<artifactId>azure-webapp-maven-plugin</artifactId>
	<version>1.7.0</version>
	<configuration>
		<schemaVersion>V2</schemaVersion>
		<resourceGroup>hello-world-rest-api-rg</resourceGroup>
		<appName>hello-world-rest-api-elsior</appName>
		<pricingTier>B1</pricingTier>
		<region>westeurope</region>
		<appSettings>
			<property>
				<name>JAVA_OPTS</name>
				<value>-Dserver.port=80</value>
			</property>
		</appSettings>
		<runtime>
			<os>linux</os>
			<javaVersion>java11</javaVersion>
			<webContainer>java11</webContainer>
		</runtime>
		<deployment>
			<resources>
				<resource>
					<directory>${project.basedir}/target</directory>
					<includes>
						<include>*.jar</include>
					</includes>
				</resource>
			</resources>
		</deployment>
	</configuration>
</plugin>

```
### Logging Configuration

```
-Dlogging.level.org.springframework=DEBUG
```