# Delitable

## URL
http://delitable.work/
[![image](https://user-images.githubusercontent.com/62997834/92128993-efb12080-ee3d-11ea-8e33-bba828f2b3f4.png)](http://delitable.work/)
### ログイン方法
* ユーザーログイン：ヘッダー右上のゲストユーザーログイン
* 管理者ログイン：フッター右下の、ロゴマークよりゲスト管理者ログイン


## 概要
* 野菜の購入・配送と、それらの野菜を使った料理レシピの投稿・共有ができるポートフォリオです。
* 作りたい料理に必要な野菜を購入したり、逆に興味のある野菜を使った料理調べて作ったりと、  
日々の料理をサポートできるようなサービスです。
![image](https://user-images.githubusercontent.com/62997834/96968269-b8ace080-154b-11eb-9c39-eb3401c36b0b.png)


### テーマ
* 自分もよく使うamazonのようなECサイト、クックパッドのようなレシピのSNSサイトは多くありますが、  
2個両立したものがあれば便利かと考え野菜の配送＋レシピの投稿の、2つの主な機能を持ったものを  
作成しました。  

* サイト名の意味は　Delivery, Delicious, vegetable, tableの4つを掛け合わせ、  
「美味しい野菜を食卓へ届ける」がテーマです。


### テーマを選んだ理由
* 料理が好きで現在実家にて家族の晩ご飯の用意を担当しているのですが、  
食品の半分以上が毎週配送で来ており自分ではなかなか買わなかったり  
季節が感じられる野菜が入っているため色々なバリエーションの料理を作れるのが楽しく思っています。

- ただ、毎回調べて作ったり自分でレシピを考えるのではなく、届く食材と合ったレシピが  
発見できたり、時には共有できればもっと料理するのが楽しくなるのではと思いテーマに選びました。  

- **ちなみにレシピのデモデータは、全て自分が作った手作り料理のため実際に活用できるレシピになっています。**

### ターゲットユーザ
* 料理をあまりしない一人暮らし
* いつも同じ野菜やレシピが多くバリエーションを増やしたい人
* 作る量が多く、食材の買い出しが大変な家庭

### 画面紹介
* レシピの詳細画面
![image](https://user-images.githubusercontent.com/62997834/98104758-3e307900-1eda-11eb-8127-9e4d7b7e8923.png)


## 機能・技術
- HTML/CSS
	- Bootstrap
	- SCSS
	- レスポンシブ対応

- Ruby on Rails
	- レシピの投稿
		- 概要、材料、作り方の入力
		- 材料、作り方のデータ順の入れ替え
		- タグ付け
		- 足跡機能
		- 検索機能
		- ランキング表示
		- いいね
		- コメント

	- 野菜の購入
		- 買い物かご機能
		- クレジット決済機能(テストモード)
		- 購入したもののレビュー、評価
		- 検索機能
		- 配送先の登録

	- その他
		- コードフォーマット: rubocop
		- テスト: Rspec(213項目)

- JavaScript
	- 非同期通信 ：ajax
	- 星評価：raty.js
	- 郵便番号から住所自動入力：jpostal.js

- AI
	- 自然言語処理：Natural Language API(管理者ログイン時、商品レビューの感情分析を表示)

## 環境
- フロントエンド
	- Bootstrap 4.4.1
	- SCSS
	- JavaScript、jQuery

- バックエンド
	- Ruby 2.5.7
	- Rails 5.2.4.3

- インフラ
	- Docker/Docker-compose
	- CircleCI
	- Capistrano
	- MySQL2
	- AWS (EC2、RDS for MySQL、Route53)
	- Nginx、 Puma

- 構成図
![image](https://user-images.githubusercontent.com/62997834/96968357-daa66300-154b-11eb-83f3-105c92e4388b.png)

## 設計
- ER図
	![image](https://user-images.githubusercontent.com/62997834/95577178-9c4d7600-0a6c-11eb-8f79-d0f1bfb7843c.png)


