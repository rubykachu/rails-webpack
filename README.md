## Cấu hình
**Rails Webpack**
https://evilmartians.com/chronicles/evil-front-part-1
https://evilmartians.com/chronicles/evil-front-part-2
https://evilmartians.com/chronicles/evil-front-part-3

**Trailblazer**
https://github.com/trailblazer/trailblazer

Install gems:
```
gem 'trailblazer', '2.0.7'
gem 'trailblazer-rails', '1.0.8'
gem 'trailblazer-cells', '0.0.3'
gem 'cells-slim', '0.0.5'
gem 'cells-rails', '0.0.8'
```

## Chạy ứng dụng
Chạy lệnh `hivemind` để chạy server. File cấu hình chạy server **Procfile**
Có thể chạy riêng từng cái. Cho rails `rails s`. Cho webpack: `bin/webpack-dev-server`

**Tạo component**: `rails g component ten_component`
**Tạo thư mục trailblazer**: `rails g blazer ten_module`

## Cài đặt loader
ERB: `bundle exec rails webpacker:install:erb`
Coffee:: `bundle exec rails webpacker:install:coffee`

## Cấu trúc thư mục
** Logic **
Controller dùng để điều hướng.
Operation dùng để xử lý logic
Contract dùng để validate tầng params
View có thể dùng theo mặc định của Rails hoặc dùng Cell

** UI **
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

## Bug
- Bị nhấp nháy khi render ra view. Lý do trong quá trinh build thì không build ra file css, mà css được load bởi javascript. Khắc phục: Trong file `webpacker.yml` sửa dòng `extract_css: true` thành `extract_css: false`
