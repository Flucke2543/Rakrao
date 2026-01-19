# 1. ใช้ Node.js เป็นฐาน
FROM node:18-alpine

# 2. สร้างโฟลเดอร์ในตู้คอนเทนเนอร์
WORKDIR /app

# 3. ก๊อปปี้รายชื่อเครื่องมือและติดตั้ง
COPY package*.json ./
RUN npm install

# 4. ก๊อปปี้โค้ดทั้งหมดตามเข้าไป
COPY . .

# 5. เปิดรูระบายอากาศ (Port) ให้คนเข้าถึงได้
EXPOSE 3000

# 6. สั่งให้ระบบเริ่มทำงาน
CMD ["node", "server.js"]
