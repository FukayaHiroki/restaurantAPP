# URL
http://52.194.208.28/

AWSでのデプロイ
EC2+S3を使用しました。capistranoを使用して自動デプロイ設定をしています。

# 詳細
### 使用技術
* Ruby on Rails
* Mysql
* 'carrierwave'+'mini_magick'にて画像アップロード機能の実装
* devise
ユーザー登録機能とレストラン投稿機能は上記のgemを使用。


* bootstrap４
* haml-rails
* sass-rails 
フロント機能は上記の３点で実装。

* capistrano
* AWS（EC2+S3）
デプロイはAWS使用。
## Qiita
技術的な面で引っかかった所などはQiitaにまとめています。

### 経緯
私は月に一度、どこか美味しいレストランに行くのが習慣になっているのですが、どこに行くか決めるときに大手のサイトだと、低価格なレストランも多く検索に引っかかってしまうことがあり、探すのが非常に手間だったので、なるべくその様なお店が引っかからない様なサイトを制作しました。
ユーザー1人に対して、レストランの情報１件しか登録出来ない様にする事で、実現しようとしました。

**実装済み機能**
* レストラン投稿機能
* レストラン検索機能
* ユーザー登録、削除機能
* 記事一覧表示機能

**未実装機能（実装予定）**
* 単体テスト
* 統合テスト
* 管理ユーザー機能
* 記事一覧表示機能
* ランキング機能（何らか絞り込みが必要）