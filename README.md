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

**Procfile**: Dùng để chạy các lệnh start Server. Run comand: `hivemind`

`bin/webpack-dev-server`: Start server webpack

`rails s`: Start server rails

`rails g component <component>` dùng để tạo ra components (js, css, html)

`rails g traiblazer <component>` dùng để tạo ra components và các file liên quan đến cấu trúc trailblazer (controller, concepts, contract)

`rails trailblazer:rm <component>` dùng để xoá các components và các file liên quan đến cấu trúc traiblazer (Rollback)

## Cài đặt plugin

ERB: `bundle exec rails webpacker:install:erb`

Coffee:: `bundle exec rails webpacker:install:coffee`

Hoặc `yarn add <plugin>`

## Cấu trúc thư mục
Controller -> call views -> load components

`controller`: Chỉ để điều hướng và trả kết quả ra views

`operation`: Xử lý logic

`contract`: Validate tâng params

`views`: Chỉ có file html theo các action và load các partial từ components. Có thể dùng Cell

`components`: Chứa các file js, css, images, partial. Path: `frontend/components/`

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

1. Bị nhấp nháy khi render ra view. Lý do trong quá trình build thì không build ra file css, mà css được load bởi javascript. Khắc phục: Trong file `webpacker.yml` sửa dòng `extract_css: true` thành `extract_css: false`

## Branch

Branch `master`: Vẫn giữ nguyên cấu trúc của Rails và cấu hình Webpack

Branch `config_traiblazer`: Thay đổi cấu trúc từ Rails sang Trailblazer và cấu hình webpack. Được merge từ nhánh `master`
