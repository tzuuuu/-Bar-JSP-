DROP DATABASE IF EXISTS bookstore;

CREATE DATABASE bookstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE bookstore;

CREATE TABLE members (
  member_id INT PRIMARY KEY AUTO_INCREMENT, -- 會員ID，主鍵，自動遞增
  member_name VARCHAR(100) NOT NULL, -- 會員姓名，不可為空值
  email VARCHAR(100) UNIQUE NOT NULL, -- 電子郵件，唯一且不可為空值，作為登入帳號使用
  password VARCHAR(50) NOT NULL, -- 密碼，不可為空值，作為登入密碼使用
  gender VARCHAR(6) NOT NULL, -- 性別，包含男生、女生、其他
  phone_number VARCHAR(10), -- 電話號碼
  county VARCHAR(10), -- 縣市區
  district VARCHAR(10), -- 鄉鎮市區
  address VARCHAR(100), -- 詳細地址
  birthday DATE, -- 生日
  registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- 註冊日期，預設為目前時間
);
INSERT INTO members (member_name, email, password, gender, phone_number, county, district, address, birthday)
VALUES
  ('管理員', 'admin@com', 'admin', 'male',  '0912345678', '桃園市', '中壢區', '中北路200號', '1990-01-01'),
  ('李欣樺', '11044106@cycu.edu.tw', '11044106', 'female',  '0912345678', '桃園市', '中壢區', '中北路200號', '2002-11-01'),
  ('辜麗慈', '11044114@cycu.edu.tw', '11044114', 'female',  '0912345678', '桃園市', '中壢區', '中北路200號', '2003-02-01'),
  ('陳威宏', '11044144@cycu.edu.tw', '11044144', 'male',  '0912345678', '桃園市', '中壢區', '中北路200號', '2002-09-28'),
  ('許恬綺', '11044218@cycu.edu.tw', '11044218', 'female',  '0912345678', '桃園市', '中壢區', '中北路200號', '2002-11-01'),
  ('黃雅芳', '11044240@cycu.edu.tw', '11044240', 'female',  '0912345678', '桃園市', '中壢區', '中北路200號', '2003-02-01'),
  ('陳亮竹', '11044245@cycu.edu.tw', '11044245', 'female',  '0912345678', '桃園市', '中壢區', '中北路200號', '2002-09-28'),
  ('張三', 'zhangsan@example.com', '123456', 'male', '0912345678', '台北市', '中山區', '忠孝東路一段', '1990-01-01'),
  ('李四', 'lisi@example.com', 'abcdef', 'female', '0923456789', '新北市', '板橋區', '民生路', '1992-02-02'),
  ('王五', 'wangwu@example.com', 'password123', 'male', '0934567890', '台中市', '西屯區', '市政北一路', '1995-03-03'),
  ('陳六', 'chenliu@example.com', 'qwerty', 'female', '0945678901', '高雄市', '鳳山區', '鳳北路', '1998-04-04'),
  ('劉七', 'liuqi@example.com', '654321', 'female', '0956789012', '台南市', '安南區', '安中路', '2000-05-05');

