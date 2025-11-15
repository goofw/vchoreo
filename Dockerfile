FROM alpine

USER 10014

WORKDIR /app
COPY config.json config.json
COPY app.tgz app.tgz
RUN tar -zxvf app.tgz && rm app.tgz

EXPOSE 8080

CMD [ "./app", "run", "-format", "jsonv5" ]
