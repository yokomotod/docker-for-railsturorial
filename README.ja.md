# Docker for Rails Tutorial

[Railsチュートリアル](https://railstutorial.jp/)用ローカル開発環境. Cloud9などのクラウドIDEではなくローカルで開発したい人向け.

環境セットアップのためにDockerを使いつつ、極力Dockerの無いローカル環境に近い開発体験を目指した.

- **データ永続化**: 作業データはコンテナが終了してもデータは消えない
- **ホスト編集**: ホスト側でファイルを編集できるので、普段のエディタ、IDEが使える
- **チュートリアル準拠**: Railsチュートリアルにかかれている手順やコマンドから一切変更の必要無し

## 利用可能なツール ...Railsチュートリアルに必要なものすべて

- Ruby
- Bundler
- Node.js
- Heroku CLI
- ImageMagick
- SQLite3
- Git

## 使い方

1. [Docker Desktop](https://www.docker.com/products/docker-desktop)と[docker-sync](http://docker-sync.io/)をインストール

1. レポジトリをクローン

    ```
    git clone https://github.com/yokomotod/docker-for-railsturorial.git
    cd docker-for-railsturorial
    ```

1. docker-syncを起動

    ```
    docker-sync start
    ```

1. dockerを起動

    ```
    docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d
    ```

1. dockerコンテナに接続

    ```
    docker-compose exec railstutorial bash
    ```

1. 以下、チュートリアル通り

    ```
    # 1.2 さっそく動かす

    $ printf "install: --no-rdoc --no-ri\nupdate:  --no-rdoc --no-ri\n" >> ~/.gemrc

    $ gem install rails -v 5.1.6


    # 1.3 最初のアプリケーション

    $ cd
    $ mkdir environment
    $ cd environment/
    ```
