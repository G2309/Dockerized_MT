FROM alpine:3.13.5

RUN apk add --no-cache build-base libstdc++ linux-headers musl-dev libgcc g++ libgomp

COPY . .

RUN g++ -o code main.cpp -fopenmp

CMD ["./code"]
