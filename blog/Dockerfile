FROM oven/bun:1

WORKDIR /app

COPY . .

RUN bun install

ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1
ENV CI=true
ENV SKIP_ENV_VALIDATION=true

RUN NODE_OPTIONS="--max-old-space-size=4096" bun run build

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs
d
RUN chown -R nextjs:nodejs /app

USER nextjs

EXPOSE 3000

ENV PORT=3000
ENV HOSTNAME="0.0.0.0"

CMD ["bun", "start"]