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
    │    ├── routes/
    │    │   └── transactions.js
    │    ├── server.js
    │    ├── supabaseClient.js
    │    ├── DonationABI.json
    │    ├── package.json
    │    ├── package-lock.json
    │    └── node_modules/
    ├─ smart-contracts/
    │  └─ DonationContract.sol
    │
    └─ README.md

## backend
    transactions.js
    * digunakan untuk untuk mangambil data transaksi
    * menyimpan transaksi ke database
    * mengambil riwayat donasi
    jadi file itu untuk jembatan antara frontend database dan blockchien

    server.js
    * Menghubungkan routes
    * Menentukan port server
    * menjalankan server express

    supabaseClient.js
    * Inisialisasi Supabase

    DonationABI.json
    * digunakan untuk interaksi dengan smart contract

## frontend
    WalletConnect.jsx
    * digunakan untuk conect ke wallet
    * mengammbil addres user

    BalanceDisplay.jsx
    * di gunakan untuk menampilkan saldo ETH

    DonateForm.jsx
    * tempat untuk donasi
    * memanggil smart contract

    TransactionList.jsx
    * menampilkan histori donasi yang menggambil data dari supabase

    App.jsx
    * untuk menggabungin semua componen

    main.jsx
    * menghubungkan react dengan index.html

    DonationABI.json
    * Interaksi langsung dengan smart contract via MetaMask


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




##
* Nama: **(MOH NURUL LANJIB)**
* NIM: **(241111042)**
* Mata Kuliah: **pemograman web**




