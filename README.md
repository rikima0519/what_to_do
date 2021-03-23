# アプリケーション名	

What_to_do

# アプリケーション概要

やるべきことを整理できるアプリ。

直近でやるべきことをリスト化し、終了目安を設定できる。一覧表示画面にリストが期限の近い順に表示される。
やり終えたものは削除機能で削除できる。

# URL


# テスト用アカウント

# 利用方法

# 目指した課題解決

# 洗い出した要件

# 実装した機能についてのGIFと説明

# 実装予定の機能

# データベース設計


  ## users テーブル

   | Column             | Type    | Options                   |
   | ------------------ | ------- | ------------------------- |
   | name               | string  | null: false               |
   | email              | string  | null: false, unique: true |
   | encrypted_password | string  | null: false               |


   ### Association

    - has_many :lists
    - has_many :cards

   ##  lists テーブル

    | Column        | Type        | Options                        |
    | ------------- | ----------- | ------------------------------ |
    | title         | string      | null: false                    |
    | user          | references  | null: false                    |

   ### Association

    - belongs_to :user
    - has_many :cards

   ##  cards テーブル

    | Column   | Type         | Options                        |
    | ---------| -------------| ------------------------------ |
    | title    | string       | null: false                    |
    | memo     | text         | null: false                    |
    | list     | references   | null: false, foreign_key: true |

   ### Association

    - belongs_to :user
    - belongs_to :iist

# ローカルでの動作方法
