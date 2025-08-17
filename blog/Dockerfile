FROM oven/bun:1

WORKDIR /app

COPY . .
RUN bun install
RUN bun run build

EXPOSE 3000

ENV PORT=3000
ENV HOSTNAME="0.0.0.0"

CMD ["bun", "start"]