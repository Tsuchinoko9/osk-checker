# アプリケーション名
OSKチェッカー(オーエスケーチェッカー)
<br>
<br>

# アプリケーション概要
アプリで入力されたお気に入りのWebサイトを登録し、一覧で表示する。  
そして登録されたWebサイトの更新を自動的に検知し、その旨を表示する。
<br>
<br>

# URL
https://osk-checker.onrender.com/  

認証ユーザー名/パスワード  
ユーザー名： tsuchiko  
パスワード： 3333
<br>
<br>

# テスト用アカウント
（現在準備中）
<br>
<br>

# 利用方法
## お気に入りのWebサイトを登録
1. トップページのヘッダーにある「ユーザー新規登録」のボタンからユーザーの新規登録を行う。
2. ログイン状態で、トップページのヘッダーからマイページに遷移する。
3. マイページにある「お気に入りを登録する」ボタンから、  
   お気に入りのWebサイトの情報(URL、Webサイトの名前、優先表示順位)を入力し、登録する。
4. 登録したお気に入りのWebサイトの名前が優先表示順位に基いて  
   上から順番にトップページに一覧表示される。  
   Webサイトの名前をクリックするとそのWebサイトに遷移する。
## お気に入りのWebサイトの更新をチェック
1. ログイン状態でトップページに遷移すると、  
   登録したお気に入りのWebサイトが更新されているか自動的にチェックが行われる。
2. 更新を確認したWebサイトの名前の左側に「New」の文字が表示される。  
   また、更新を確認したWebサイトは一覧の一番上に表示される。  
   更新を確認したWebサイトが複数ある場合はその中で優先表示順位が適用される。
3. 「New」の文字が表示されるWebサイトの名前をクリックして一度遷移すると  
   「New」の文字の表示は消える。
<br>
<br>

# アプリケーションを作成した背景
お気に入りのWebサイトの巡回は、その数が多いほど時間がかかる。  
一度にそれらの更新を確認できるアプリをつくれば、その時間を節約することができると考えた。  
また、Webサイトの更新を調べる方法という、アプリを企画した時点の自分にとっては  
未知のものに挑戦してみたいという思いもあった。
<br>
<br>

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1RSRxNoCk-KSOVSHsFRz4-vcimIRg7nWaF92uDXcuWlo/edit#gid=982722306)
<br>
<br>

# 実装した機能についての画像やGIFおよびその説明
（現在準備中）
<br>
<br>

# 実装予定の機能
（現在準備中）
<br>
<br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/82510032541f563708c3f79a047de579.png)](https://gyazo.com/82510032541f563708c3f79a047de579)
<br>
<br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/1afa1d6502b5dc4d47404e59e6383446.png)](https://gyazo.com/1afa1d6502b5dc4d47404e59e6383446)
（未実装部分あり）
<br>
<br>

# 開発環境
- フロントエンド  
  HTML / CSS
- バックエンド  
  Ruby / Ruby on Rails
- インフラ  
  MySQL / devise
- テスト  
  RSpec / FactoryBot / Faker
- テキストエディタ  
  Visual Studio Code
- タスク管理  
  Github
<br>
<br>

# 工夫したポイント
(現在準備中)
<br>
<br>

# 改善点
お気に入り表示順位の変更の操作をしやすくする
<br>
<br>

# 制作時間
約45時間
<br>
<br>


<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
