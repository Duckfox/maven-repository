# maven-repository
### maven仓库
Gradle
```groovy
repositories {
    maven {
        url "https://raw.github.com/Duckfox/maven-repository/master/"
    }
}
```
Maven
```xml
    <repositories>
        <repository>
            <id>duckfox-maven-repo</id>
            <url>https://raw.github.com/Duckfox/maven-repository/master/</url>
        </repository>
    </repositories>
```
