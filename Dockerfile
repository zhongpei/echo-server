FROM ubuntu:18.04
COPY ./bin/echo-server /echo-server
ENV PORT 8080
EXPOSE 8080
RUN chmod +x /echo-server
CMD ["/echo-server"]
