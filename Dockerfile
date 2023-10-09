FROM node:18.13.0-alpine as build
RUN npm install -g pnpm

WORKDIR /app

COPY package.json .
COPY pnpm-lock.yaml .

RUN pnpm install

COPY . .

RUN pnpm build

# # ------------------production -------------------

FROM node:18.13.0-alpine as production
RUN npm install -g pnpm

WORKDIR /app

COPY --from=build /app/.env.prod ./.env
COPY --from=build /app/package.json .
COPY --from=build /app/pnpm-lock.yaml .
COPY --from=build /app/node_modules/ ./node_modules/
COPY --from=build /app/dist/ ./dist/

EXPOSE 4000

CMD ["/bin/sh", "-c", "node dist/app.js"]