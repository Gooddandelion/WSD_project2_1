 # ----------------------------------
 # Stage 1: Build Stage (빌드를 위한 JDK 및 Maven 필요)
 # ----------------------------------
 FROM maven:3.8.7-openjdk-17 AS build
 # 컨테이너 내부의 작업 디렉토리 설정
 WORKDIR /app
 # pom.xml 및 소스 코드 복사
 COPY pom.xml .
 COPY src ./src
 # 애플리케이션 빌드 실행 (WAR 파일 생성)
 RUN mvn clean package -DskipTests

 # ----------------------------------
 # Stage 2: Deploy/Run Stage (실행을 위한 Tomcat 및 JRE 필요)
 # ----------------------------------
 # Tomcat 및 JRE만 포함된 이미지 사용
 FROM tomcat:9.0-jre17-temurin
 # 'build' 스테이지에서 생성된 WAR 파일을 최종 이미지로 복사
 # 프로젝트 이름에 따라 *.war 파일명을 조정해야 할 수도 있습니다.
 COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
 # Tomcat 실행 명령
 CMD ["catalina.sh", "run"]