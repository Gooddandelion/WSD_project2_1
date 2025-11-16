# 1. Tomcat 9.0 버전을 사용하되, JDK 17이 포함된 버전을 기반으로 합니다.
FROM tomcat:9.0-jdk17-temurin

# 2. Tomcat의 기본 환영 페이지 등을 삭제합니다.
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. 우리가 만든 'webapp' 폴더의 모든 내용을 'ROOT' 폴더로 복사합니다.
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT