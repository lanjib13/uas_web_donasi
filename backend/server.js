import express from "express";
import cors from "cors";
import transactionRoutes from "./routes/transactions.js";

const app = express();

app.use(cors());
app.use(express.json());


app.use("/api", transactionRoutes);

const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Backend running on http://localhost:${PORT}`);
});
