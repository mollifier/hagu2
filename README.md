# Hagu2 (Hagu Hagu)

## 概要

- 任意のサービスの Webhook を受けとり、別のサービスの API を呼び出す
- 社内では Haguruma と呼ばれていた同コンセプトの Webアプリをより汎用的に作り直したもの


## インストール
Macで動作させる手順は次の通りです。
Ruby, bundle, bundleはインストール済みとします。

```
$ brew update
$ brew install libxml2 --with-xml2-config
$ brew link --force libxml2

$ brew install libxslt
$ brew link --force libxslt

$ brew install libiconv
$ brew link --force libiconv

$ bundle config build.nokogiri --use-system-liblaries --with-xml2-include=/usr/include/libxml2
$ bundle install --path vendor/bundle
```

## bundle install

```
$ bundle install --path vendor/bundle
```

## マイグレーション

```
$ bundle exec rake db:migrate
```

## テスト

```
$ bundle exec rspec

# または、gaurdによる自動テストを行う場合は次の通り
$ bundle exec guard
```

