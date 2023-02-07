import express from "express";
import cors from "cors";
import { PORT } from "./config.js";
import userRouter from "./routers/user.router.js";
import regionRouter from "./routers/region.router.js";
import scienceRouter from "./routers/science.router.js";
import courseofstudyRouter from "./routers/courseofstudy.router.js";

const app = express();

app.use(express.json());
app.use(cors());
app.use(userRouter);
app.use(regionRouter);
app.use(scienceRouter);
app.use(courseofstudyRouter);

app.listen(PORT, () => {
  console.log("server started at " + PORT);
});