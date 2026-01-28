# 🌐 Web Donasi Blockchain

Aplikasi Web Donasi Blockchain adalah aplikasi full-stack berbasis Web3 yang memungkinkan pengguna melakukan donasi ETH melalui MetaMask, menyimpan data donasi ke database (Supabase), serta menampilkan riwayat transaksi secara real-time.
teknoloig yang saya gunankan disini adalah frontend React (vite), backend express.js, database nya saya menggunakan supabase dan ethereum sepolia testnet sebagain jaringan ke blokchain



## Tujuan Proyek

* Mengimplementasikan aplikasi **full-stack Web3**
* Integrasi **frontend, backend, database, dan blockchain**
* Menghubungkan wallet **MetaMask**
* Melakukan transaksi melalui **smart contract**



## Teknologi yang Digunakan

### Frontend

* React (Vite)
* JavaScript (JSX)
* ethers.js
* CSS (Flexbox)

### Backend

* Node.js
* Express.js
* REST API
* Supabase (PostgreSQL)

### Blockchain

* Solidity
* Ethereum Sepolia Testnet
* MetaMask
* Remix IDE



##  Struktur Proyek

web3-dapp-uas/
├─ frontend/
│  ├─ src/
│  │  ├─ components/
│  │  │  ├─ WalletConnect.jsx
│  │  │  ├─ BalanceDisplay.jsx
│  │  │  ├─ DonateForm.jsx
│  │  │  └─ TransactionList.jsx
│  │  ├─ App.jsx
│  │  ├─ index.js
│  │  ├─ App.css
│  │  ├─ index.css
│  │  └─ DonationABI.json
│  └─ package.json
│
├─ backend/
│  ├─ server.js
│  ├─ supabaseClient.js
│  ├─ routes/
│  │  └─ transactions.js
│  └─ package.json
│
├─ smart-contracts/
│  └─ DonationContract.sol
│
└─ README.md



## Smart Contract

Smart contract ditulis menggunakan Solidity dan memiliki fungsi utama:

* `donate()` → menerima ETH dari pengguna
* `getDonations()` → membaca data donasi
* `DonationReceived` → event donasi

Kontrak di-deploy pada **Ethereum Sepolia Testnet**.



##  Cara Menjalankan Aplikasi

### 1️⃣ Prasyarat

* Node.js (LTS)
* ada MetaMask di browser nya
* punya minimal 0,001 Saldo ETH Sepolia 



### 2️ Jalankan Backend

bash
cd backend
npm install
npm start


Backend berjalan di:


http://localhost:5000


Endpoint:

* `GET /api/transactions`
* `POST /api/donate`



###  Jalankan Frontend

bash
cd frontend
npm install
npm run dev


Frontend berjalan di:


http://localhost:5173




## Cara Menggunakan Aplikasi

1. Buka aplikasi di browser
2. Klik Connect MetaMask
3. Pastikan network Sepolia
4. Masukkan jumlah ETH (contoh: `0.001`)
5. Klik Donasi
6. Konfirmasi transaksi di MetaMask
7. Donasi akan langsung muncul di Daftar Donasi



## Fitur Utama

* ✔ Koneksi MetaMask
* ✔ Menampilkan saldo wallet
* ✔ Kirim donasi ETH
* ✔ Simpan data donasi ke database
* ✔ Tampilkan riwayat transaksi
* ✔ Link transaksi ke Etherscan
* ✔ Responsive (desktop & mobile)



## Pengujian

* Transaksi berhasil dikirim di Sepolia Testnet
* Data donasi tersimpan di Supabase
* Riwayat donasi tampil real-time di frontend
* Error handling berjalan dengan baik





Nama: **(MOH NURUL LANJIB)**
NIM: **(241111042)**
Mata Kuliah: **Web3 / Blockchain Development**




