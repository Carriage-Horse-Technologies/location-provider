FROM golang:latest as builder
WORKDIR /workdir
COPY ./src ./
# COPY ./docker/app/config ./config
RUN go mod tidy
# Set Environment Variable
ENV CGO_ENABLED=0
# Build
RUN go build -o app

FROM gcr.io/distroless/base
WORKDIR /
COPY --from=builder /workdir/app /app

ENTRYPOINT ["/app"]
