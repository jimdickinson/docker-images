FROM openjdk:8u252-slim

ARG STARGATE_VERSION=v1.0.0

RUN apt update && apt install curl unzip iproute2 libaio1 -y
RUN curl -sL https://github.com/stargate/stargate/releases/download/${STARGATE_VERSION}/stargate-jars.zip > stargate-jars.zip

RUN unzip stargate-jars -x "*/persistence-*"
RUN unzip stargate-jars "*/persistence-api*"
RUN unzip stargate-jars "*/persistence-cassandra-4.0*"

RUN chmod +x starctl
ENTRYPOINT ["./starctl"]