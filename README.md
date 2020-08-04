# ![blacklogo](https://user-images.githubusercontent.com/65549551/89267524-504c1280-d672-11ea-8323-a6735522faf1.png)
愛犬家のための写真・情報交換プラットフォームです。


## 制作背景
1. 勉強内容の集大成として、instagramをベースとした成果物を作ってみたいと思っていました。
2. 思い出を保存でき、愛犬家が犬自慢だけでなく悩み・おすすめ商品などのコミュニケーションを促進できるアプリを作りたいと思いました。


## 使用技術
- ruby 2.5.1, Rails 5.2.4.3
- MySQL 5.6.47
- Sass, Bootstrap, jQuery


## 機能一覧
- ユーザー機能
  - deviseを使用
  - 新規登録、ログイン、ログアウト機能
  - マイページ、登録情報編集機能
- 投稿関係
  - carrierwaveを使用
  - 投稿一覧表示、投稿詳細表示、記事投稿、投稿編集、投稿削除機能
- コメント関係
  - コメント表示、コメント投稿、コメント削除機能
- いいね機能
  - いいねの表示
- お気に入り機能
  - お気に入りの表示、マイページにてお気に入り投稿表示機能
- 検索機能
  - 投稿に対する曖昧検索
  
## 実際のビュー・動作
- トップページ

[![Image from Gyazo](https://i.gyazo.com/ed6a6a81a3c441caeae3a1d490991d95.gif)](https://gyazo.com/ed6a6a81a3c441caeae3a1d490991d95)

- マイページ

[![Image from Gyazo](https://i.gyazo.com/01e566cca7360e773c716dd31d5f0213.gif)](https://gyazo.com/01e566cca7360e773c716dd31d5f0213)

- いいね・お気に入り・コメント機能

[![Image from Gyazo](https://i.gyazo.com/26982c26288b71e896b6a3277217d2bd.gif)](https://gyazo.com/26982c26288b71e896b6a3277217d2bd)

- 検索機能

[![Image from Gyazo](https://i.gyazo.com/e7b1b2fb9659889473f26485c04583a6.gif)](https://gyazo.com/e7b1b2fb9659889473f26485c04583a6)


## 実装予定の内容
- カテゴリ機能
　-instagramはタグ機能を実装していますが、検索する手間やタグ表記が違うだけで同じ内容でも別枠となるため、カテゴリ機能を実装をしたいと考えております。
   ペット用品・里親などのカテゴリを作る事で、求める情報の一括表示を目指します。
- いいね機能（追加）
  - 人気順表示機能
- フォロー機能
  - フィード（フォロー相手の投稿一覧表示）
- ユーザー機能（追加）
  - SNS認証機能

## ER図
![dogstagram-Page-1](https://user-images.githubusercontent.com/65549551/89100123-9e250880-d42f-11ea-8079-c3a8fa52a3e9.png)


## 参考アプリケーション
[instagram](https://www.instagram.com/)
