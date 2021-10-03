FROM golang:1.17.1-alpine3.14
WORKDIR /app
COPY . /app
ENV GOPROXY https://goproxy.io,direct
RUN go build -o tour .
CMD ["/app/tour"]