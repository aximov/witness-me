# witness-me
「あつまれどうぶつの森」のマイデザインを共有しよう

## 基本要求

- 「あつまれどうぶつの森」で作成したマイデザインを Twitter 経由で共有、一覧できる

## ユースケース

- ユーザーが Twitter 認証すると、Nintendo Switch から Twitter に投稿された「あつまれどうぶつの森」のマイデザインのスクリーンショットが自動で登録され、他の人に一覧として見てもらう
- 登録されたマイデザインのスクリーンショットをザッピングまたは検索し、好みのデザインを探す

## 基礎的要件

機能要件

- Twitter 認証できる
- Twitter のつぶやきの URL を登録することができる
- 登録されたつぶやきを一覧できる
- 登録されたつぶやきを登録解除できる

## 追加的要件

- 認証されたユーザーが望む場合は、つぶやきを自動取得し、「あつまれどうぶつの森」のスクリーンショットが含まれるつぶやきを（ハッシュタグの有無などにより）抽出し、自動で登録する
- 登録されたつぶやきにマイデザインのスクリーンショットが含まれるかを画像から自動判別できる（作者IDと作品IDを文字認識できるかなど）
- 登録されたつぶやきに含まれるマイデザインのスクリーンショットから作者IDや作品IDを抽出し、各IDでの検索ができる

## 用語の定義

|用語|英語表記|意味|
|---|---|---|
|ユーザー|user|このサービスの利用者|
|つぶやき|tweet|ユーザーのつぶやき一般|
|登録されたつぶやき|registered_tweet|このサービスに登録されたつぶやき|
|画像|image|登録されたつぶやきに含まれる画像|
|スクリーンショット|screenshot|登録されたつぶやきに含まれる「あつまれどうぶつの森」のスクリーンショット|

