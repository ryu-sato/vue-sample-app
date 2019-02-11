# Vue Sample Application 概要

Vue 勉強用の Sample Application。

## 利用するフレームワークやプラットフォームへの公式ページリンク

- Ruby on Rails
    - https://rubyonrails.org/
- Node.js
    - https://nodejs.org/
- Vue
    - https://jp.vuejs.org/

# 動作環境

Node.js, npm, Yarn は package.json の engines 記載の version を使うこと。

尚、別途 Ruby, Node.js, npm バージョン管理ツールのために .ruby-version, .node-version, .npm-version ファイルを用意している。
(記述されているバージョンは package.json の engines と同じ)

# 開発スタートアップ

## 開発環境構築

動作させるためには、事前に Ruby, Node.js, Yarn をインストールしておく必要がある。

* リポジトリからコードを clone する
    ```shell
    $ git clone https://github.com/ryu-sato/vue-sample-app
    $ cd vue-sample_app
    ```
* 依存関係を解消する
    ```shell
    $ bundle install
    $ yarn
    ```
* "DBマイグレーション" の項目を参照してマイグレーションを行う

## 毎回起動

```
$ bin/rails s
```

# DBマイグレーション

マイグレーションファイルが追加される都度実行すること。

## 事前作業

- `config/database.yml` にてDB 接続設定を記述する

## 実行コマンド(初回/初期化したい場合)

```
$ bin/rails db:drop db:create db:migrate
```

## 実施コマンド(毎回)

```
$ bin/rails db:migrate
```
