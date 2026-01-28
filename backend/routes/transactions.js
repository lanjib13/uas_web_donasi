import express from "express";
import { supabase } from "../supabaseClient.js";

const router = express.Router();

// GET semua transaksi donasi
router.get("/transactions", async (req, res) => {
  try {
    const { data, error } = await supabase
      .from("donations")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) throw error;

    res.json({
      success: true,
      data
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: err.message
    });
  }
});

// POST simpan donasi
router.post("/donate", async (req, res) => {
  try {
    const { donor_address, amount_eth, tx_hash } = req.body;

    if (!donor_address || !amount_eth || !tx_hash) {
      return res.status(400).json({
        success: false,
        message: "Data donasi tidak lengkap"
      });
    }

    const { error } = await supabase
      .from("donations")
      .insert([
        { donor_address, amount_eth, tx_hash }
      ]);

    if (error) throw error;

    res.json({
      success: true,
      message: "Donation saved"
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: err.message
    });
  }
});

export default router;
