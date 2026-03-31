FROM dart:stable AS build
WORKDIR /app
COPY pubspec.* .
RUN dart pub get

COPY . .
RUN dart pub global activate jaspr_cli
RUN dart pub global run jaspr build

FROM debian:bookworm-slim

WORKDIR /app
COPY --from=build /app/build/jaspr/ /app/

EXPOSE 8080

CMD ["./server"]