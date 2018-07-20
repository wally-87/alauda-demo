FROM 180.200.2.42:5000/java:8
MAINTAINER <alauda> 

# 添加代码jar包
ADD tomcat /usr/share/tomcat


# 修改容器时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

# 暴露访问端口
EXPOSE 8080

# 容器启动参数
ENTRYPOINT ["sh","/usr/share/tomcat/apache-tomcat-8.5.32/bin/catalina.sh","run"]
