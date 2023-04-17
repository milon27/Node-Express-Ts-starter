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
        "module": "CommonJS", /* Specify what module code is generated. */
        "rootDir": "./src", /* Specify the root folder within your source files. */
        "outDir": "./dist",
        "esModuleInterop": true,
        "forceConsistentCasingInFileNames": true,
        "strict": true, 
        "noImplicitAny": true,
        "strictNullChecks": true,
        "noImplicitThis": true,
        "alwaysStrict": true,
        "skipLibCheck": true ,
        "allowSyntheticDefaultImports": true, /* Allow 'import x from y' when a module doesn't have a default export. */
    }
}


```

package.json
```json
"scripts": {
    "dev": "nodemon ./src/app.ts"
}
```

<!-- app.ts -->

```ts
import express from 'express'

const app = express()


app.get('/', (req, res) => {
    res.send("okk")
})

app.listen(process.env.PORT, () => console.log("running on app:2727"))

```
