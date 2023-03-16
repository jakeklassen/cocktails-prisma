FROM node:lts-alpine

WORKDIR /app

COPY ./dist/apps/api .

ENV PORT=3333

EXPOSE ${PORT}

RUN npm install --production
RUN npm install reflect-metadata tslib rxjs @nestjs/platform-express

COPY prisma/ ./
RUN npx prisma generate

CMD node ./main.js
