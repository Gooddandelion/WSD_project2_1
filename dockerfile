# ----------------------------------
# Stage 1: Build Stage (빌드를 위한 Java 8 및 Maven 설정)
# ----------------------------------
# Java 8 (1.8) 기반의 Maven 이미지를 사용하여 JAVA_HOME 문제를 해결합니다.
FROM maven:3.6.3-jdk-8 AS build
# 컨테이너 내부의 작업 디렉토리 설정
WORKDIR /app
# pom.xml 및 소스 코드 복사 (빌드에 필요한 모든 파일 복사)
COPY pom.xml .
COPY src ./src
# 빌드 명령 실행. 이 명령이 바로 Railway에서 실패한 명령과 동일합니다.
# -Pproduction 프로파일이 있다면 포함합니다.
RUN mvn -DoutputFile=target/mvn-dependency-list.log -B -DskipTests clean dependency:list install -Pproduction

# ----------------------------------
# Stage 2: Deploy/Run Stage (배포를 위한 Tomcat 및 JRE 8 설정)
# ----------------------------------
# 애플리케이션 실행을 위해 JRE 8 기반의 Tomcat 이미지를 사용합니다.
FROM tomcat:9.0-jre8-temurin
# Stage 1에서 빌드된 WAR 파일을 Tomcat의 배포 디렉토리로 복사합니다.
# 프로젝트의 artifactId가 'project2_1_WSD'이므로 파일명은 project2_1_WSD-1.0-SNAPSHOT.war일 가능성이 높습니다.
# 하지만 *와일드카드를 사용하면 파일명을 정확히 몰라도 됩니다.
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
# Tomcat 기본 포트 노출
EXPOSE 8080
# Tomcat 실행 명령
CMD ["catalina.sh", "run"]