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

RUN go mod download

# Salin seluruh kode aplikasi
COPY . .

# Set variabel environment
ENV PORT=4040
ENV DB_HOST=127.0.0.1
ENV DB_USER=root
ENV DB_PASS=

RUN go build -o /popl-hostingproject

EXPOSE 4040
EXPOSE 3306

CMD ["/popl-hostingproject"]
