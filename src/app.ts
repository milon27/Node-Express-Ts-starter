import { config } from "dotenv";
import express, { Request, Response } from "express";

config();

const app = express();

app.get("/", (req: Request, res: Response) => {
  res.send("Welcome 🚀");
});

const port = process.env.PORT;

app.listen(port, () => console.log(`Api running on port ${port}`));
