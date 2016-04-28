FROM oracle/openjdk:8
ADD target/demo-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
log_driver: "gelf"
  log_opt:
     gelf-address: udp://mucsgvpintng01:12201

CMD java -jar /demo-0.0.1-SNAPSHOT.jar
