# how to run

- clone the repo
- npm install
- npm run dev

# setup a typescript backend

```bash
mkdir server
cd server
touch src/app.ts

npm init -y
npm i express dotenv
npm i typescript @types/express @types/node ts-node nodemon -D

npx tsc --init # config it

```

```json
{
  "compilerOptions": {
    "target": "ESNext",
    "module": "CommonJS" /* Specify what module code is generated. */,
    "rootDir": "./src" /* Specify the root folder within your source files. */,
    "outDir": "./dist",
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "noImplicitAny": true,
    "strictNullChecks": true,
    "noImplicitThis": true,
    "alwaysStrict": true,
    "skipLibCheck": true,
    "allowSyntheticDefaultImports": true /* Allow 'import x from y' when a module doesn't have a default export. */
  }
}
```

package.json

```json
"scripts": {
    "dev": "nodemon ./src/app.ts",
    "start": "node ./dist/app.js",
    "build": "tsc"
},
```

<!-- app.ts -->

```ts
import { config } from "dotenv";
import express, { Request, Response } from "express";

config();

const app = express();

app.get("/", (req: Request, res: Response) => {
  res.send("Welcome 🚀");
});

const port = process.env.PORT;

app.listen(port, () => console.log(`Api running on port ${port}`));
```
