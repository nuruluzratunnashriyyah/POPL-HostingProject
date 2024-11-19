FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY views ./views
COPY config ./config
COPY controllers ./controllers
COPY models ./models
COPY go.sum ./
COPY routes ./routes

RUN go build -o /POPL-HostingProject

EXPOSE 3000

CMD ["/popl-hostingproject"]
