# 概要
ローカル環境を汚さないように、`Docker` 及び `Docker-compose` でAtcoder参加用のデフォルトセットを作成しました。

`VsCode` の `devcontainer` を利用して、自動フォーマットやデバックのメリットを受けることができます

- 保存時自動フォーマット
- 自動補完
- インテリセンス（メソッドやstructの内容をマウスオーバーで見えたり）
- 簡単にデバック環境が作れる

## 使用方法

## VsCode DevContainer で環境作成

- まず本プロジェクトを `git clone` 
- VsCodeで `Remote Container` の拡張をインストールしておく
  - [リンク](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
  - ↑は `Remote ssh` 等の拡張も一緒にインストールできて便利です
- VSCodeでcloneしてきたフォルダを開く
- VSCodeの以下緑になってい箇所をクリック
<img width="651" alt="スクリーンショット 2021-01-02 15 11 38" src="https://user-images.githubusercontent.com/73948280/103451929-5cb1c580-4d0d-11eb-8b6c-5c1d4eebfbf7.png">

- `Remote Containers: Reopen in Container` をクリックする

![image](https://user-images.githubusercontent.com/73948280/103451980-f0839180-4d0d-11eb-86d1-5a339d337647.png)

- クリックすると イメージのビルド及びコンテナの作成が始まります

<img width="1517" alt="スクリーンショット 2021-01-02 15 24 35" src="https://user-images.githubusercontent.com/73948280/103452059-cda5ad00-4d0e-11eb-804a-de5ea937133f.png">

- コンテナ作成に成功すると以下のようにコンテナにアタッチされます（ローカルで開いているようになります）

![image](https://user-images.githubusercontent.com/73948280/103452136-705e2b80-4d0f-11eb-9054-1b31f7e71538.png)

- インテリセンスや自動補完等が効くようになります（）

![画面収録 2021-01-02 15 38 38](https://user-images.githubusercontent.com/73948280/103452332-a2708d00-4d11-11eb-8eeb-5f2183876e3f.gif)

## atcoder-cli, oniline-judge-tools の設定

`acc` 及び `oj`コマンドでそれぞれAtcoderへのログインをしてください

```bash
# atcoder-cliでのログイン
acc login
# オンラインジャッジツールでのログイン
oj login https://beta.atcoder.jp/
# accとojが連携できているか確認
acc check-oj
```

## acc, ojの使い方

普段の使い方は以下のような感じです。

```bash
acc new コンテストID
cd コンテストID
cd a #解きたい問題のディレクトリへ移動。デフォルトですべての問題がダウンロードされるようにしています。
# テンプレートファイルを追加
addgo
# オンラインジャッジツールでテスト
ojgo
# 提出
acc s main.go
# Are you sure? Place type "abca"等と表示される場合は入力
# Docker環境のためホスト側のブラウザは自動で開かれないため、結果画面にアクセスして確かめる必要があります
```

インストールしている各ツールの詳しい内容は以下記事等を参照してくだい。

- [atcoder-cli github](https://github.com/Tatamo/atcoder-cli)
- [online-judte-tools github](https://github.com/online-judge-tools/oj/blob/master/docs/getting-started.ja.md)
- [atcoder初心者こそ環境構築しよう！(atcoder-cli,online-judge-toolsのインストール、使い方）](https://qiita.com/Adaachill/items/3d4ddad56c5c2cc372cd)
