## Cấu hình rails webpack
https://evilmartians.com/chronicles/evil-front-part-1

## Chạy ứng dụng
Chạy lệnh `hivemind` để khởi tạo server. File cấu hình chạy server **Procfile**

## Cài đặt loader
ERB: `bundle exec rails webpacker:install:erb`
Coffee:: `bundle exec rails webpacker:install:coffee`

## Cấu trúc thư mục
Thư mục **views** vẫn là thư mục chính. Các components con của views sẽ chứa trong thư mục **frontend/components/**. Mỗi component sẽ chứa `css`, `js`, `assets`

## eslintrc
Nếu dùng biến toàn cục thì bổ sung vào file `eslintrc` biến toàn cục đó
```
"env": {
    "browser": true,
    "jquery": true,
    "Routes": true
  },
```
