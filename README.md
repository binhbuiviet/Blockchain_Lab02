# 🚀 Speedrun Ethereum – Hướng dẫn chạy chương trình

Tài liệu này hướng dẫn cách **clone, cài đặt, deploy và chạy frontend**
cho các challenge trong project **Speedrun Ethereum**.

---

## 🧩 Yêu cầu hệ thống

Trước khi bắt đầu, hãy đảm bảo máy bạn đã cài đặt:

- 🟢 **Node.js** >= `v20.18.3`
- 🧶 **Yarn** (v1 hoặc v2+)
- 💻 **Visual Studio Code**
- 🦊 **MetaMask Extension**

---

## 📥 Bước 1: Clone source code

Mở terminal tại thư mục bạn muốn lưu source code, ví dụ:

```
D:\NAM_4\Blockchain_and_Application\Lab02_TestCloneCode
```

Chạy lệnh sau để clone repository:

```
git clone https://github.com/binhbuiviet/Blockchain_Lab02.git
```

Sau khi clone xong, mở thư mục project bằng **Visual Studio Code**.

---

## 📂 Bước 2: Chọn challenge và cài đặt thư viện

Di chuyển vào **một challenge bất kỳ**, ví dụ:

```
cd Blockchain_Lab02/challenge-decentralized-staking
```

Cài đặt các thư viện cần thiết:

```
yarn install
```

⏳ Quá trình này có thể mất vài phút tùy tốc độ mạng.

---

## 👛 Bước 3: Import ví Ethereum

Import ví Ethereum của bạn vào môi trường:

```
yarn account:import
```

Bạn sẽ được yêu cầu nhập:
- 🔑 **Private Key** của ví
- 🔒 **Password** để mã hóa private key

Sau khi import xong, kiểm tra lại danh sách ví:

```
yarn account
```

---

## 🦊 Nếu bạn CHƯA có ví Ethereum

1. Cài extension **MetaMask** trên trình duyệt
2. Tạo một tài khoản mới (miễn phí)
3. Thêm và **chọn mạng Sepolia**
4. Nhận ETH testnet miễn phí (khuyến nghị ≥ 0.01 ETH):

   - 💧 https://sepolia-faucet.pk910.de/
   - 💧 https://cloud.google.com/application/web3/faucet/ethereum/sepolia

---

## 📜 Bước 4: Deploy smart contract

Deploy smart contract lên mạng đã cấu hình trong `hardhat.config.ts`
(mặc định là **Sepolia**):

```
yarn deploy
```

✅ Nếu deploy thành công, terminal sẽ hiển thị địa chỉ contract.

---

## 🌐 Bước 5: Chạy frontend

Khởi động ứng dụng web:

```
yarn start
```

Mở trình duyệt và truy cập địa chỉ:

```
http://localhost:3000
```

---

## 🔌 Bước 6: Kết nối ví với ứng dụng

- Ban đầu, ứng dụng sử dụng **burner wallet** (ví ngẫu nhiên)
- Bạn có thể dùng luôn ví này để test nhanh

👉 Nếu muốn dùng ví MetaMask của bạn:
1. Nhấn **Disconnect** (góc trên bên phải)
2. Kết nối lại bằng **MetaMask**

---

## ✅ Hoàn tất

🎉 Chúc mừng!  
Bạn đã **clone – deploy – chạy thành công** một challenge trong Speedrun Ethereum.

Nếu gặp lỗi trong quá trình chạy (gas fee, Sepolia RPC, replacement fee too low, …),
hãy kiểm tra lại:
- Số dư ETH Sepolia
- RPC URL
- Network đang sử dụng trong MetaMask

---

📘 Tham khảo:
- Speedrun Ethereum: https://speedrunethereum.com
