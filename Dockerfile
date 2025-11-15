FROM alpine

USER 10014

WORKDIR /app
COPY app app
COPY config.json

EXPOSE 8080

CMD [ "./app", "run", "-format", "jsonv5" ]
