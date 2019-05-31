## Cấu hình rails webpack
https://evilmartians.com/chronicles/evil-front-part-1
https://evilmartians.com/chronicles/evil-front-part-2
https://evilmartians.com/chronicles/evil-front-part-3

## Chạy ứng dụng

**Procfile**: Dùng để chạy các lệnh start Server. Run comand: `hivemind`

`bin/webpack-dev-server`: Start server webpack

`rails s`: Start server rails

`rails g component <component>` dùng để tạo ra components (js, css, html)

## Cài đặt plugin

ERB: `bundle exec rails webpacker:install:erb`

Coffee:: `bundle exec rails webpacker:install:coffee`

Hoặc `yarn add <plugin>`

## Cấu trúc thư mục
Controller -> call views -> load components

`controller`: Viết logic business

`views`: Chỉ có file html theo các action và load các partial từ components

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
