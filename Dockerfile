FROM luszczynski/jdk

COPY rh-sso-7.1.0.Beta.zip /opt/rh-sso-7.1.0.Beta.zip

RUN unzip /opt/rh-sso-7.1.0.Beta.zip -d /opt/ && /opt/rh-sso-7.1/bin/add-user-keycloak.sh -u admin -p redhat@123

WORKDIR /opt/rh-sso-7.1

EXPOSE 8080 9990

CMD ["/opt/rh-sso-7.1/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
