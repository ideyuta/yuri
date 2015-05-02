#YURI - Tumblr Theme

氷室友里ポートフォリオサイト用のTumblrテーマ

##準備

```bash
 $ bundle install
 $ npm install
```

###Tumblarghを利用するためにTumblrのAPI KEYを取得する

[https://www.tumblr.com/oauth/apps](https://www.tumblr.com/oauth/apps)

App Store URL、Google Play Store URLは記述しなくても良い

### config.rbのTumblarghの設定を変更

```rb
  require 'tumblargh'

  activate :tumblargh,
    api_key: 'API KEY', # This is your OAuth consumer key
    blog: 'staff.tumblr.com' # Tumblr URL or Custom Domain
```

###開発用サーバ起動

Middlemanを利用して開発用サーバを起動

```bash
 $ bundle exec middleman server
```

###静的ファイル生成

Gulpを利用してCSS、JS、Imageを生成

```bash
 $ gulp build
```

以下のコマンドでwatch

```bash
 $ gulp
```

##デプロイ

###ビルド

まずGulpで静的ファイルを生成
その後Middlemanを利用してデプロイ用ファイルを生成

```bash
 $ gulp build
 $ bundle exec middleman build
```

###静的ファイルをTumblrにアップロード

[Tumblr - Upload Static Files](https://www.tumblr.com/themes/upload_static_file)
上記URLからファイルをアップロードするとURLが取得できるのでビルドしたコード内のパスを変更する。

###TumblrのHTMLを編集

ビルドしたコードに置き換える
