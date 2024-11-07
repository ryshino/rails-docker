.PHONY: up down ps build rebuild logs shell db-console migrate routes

# コンテナを起動
up:
	docker-compose up -d

# コンテナを停止・削除
down:
	docker-compose down

# コンテナの状態確認
ps:
	docker-compose ps

# イメージをビルド
build:
	docker-compose build

# イメージを再ビルド（キャッシュなし）
rebuild:
	docker-compose build --no-cache

# コンテナのログを表示
logs:
	docker-compose logs -f

# Railsコンテナに入る
shell:
	docker-compose exec web bash

# MySQLコンソールに入る
db-console:
	docker-compose exec db mysql -u root -p

# マイグレーション実行
migrate:
	docker-compose exec web bundle exec rails db:migrate

# ルーティング確認
routes:
	docker-compose exec web bundle exec rails routes

# データベースを作成
db-create:
	docker-compose exec web bundle exec rails db:create

# Railsコンソールを起動
console:
	docker-compose exec web bundle exec rails console

# テストを実行
test:
	docker-compose exec web bundle exec rails test

# 全てのコンテナ・イメージ・ボリュームを削除（注意：データが消えます）
clean:
	docker-compose down -v
	docker system prune -af

# コンテナを再起動
restart:
	docker-compose restart

# アセットをプリコンパイル
assets:
	docker-compose exec web bundle exec rails assets:precompile# Tailwind CSSをビルド
tailwind:
	docker-compose exec web bundle exec rails tailwindcss:build

# RSpecテストを実行（RSpec使用時）
rspec:
	docker-compose exec web bundle exec rspec

# Rubocop実行（Rubocop使用時）
lint:
	docker-compose exec web bundle exec rubocop

# データベースをリセット
db-reset:
	docker-compose exec web bundle exec rails db:reset

# 開発用シードデータを投入
db-seed:
	docker-compose exec web bundle exec rails db:seed