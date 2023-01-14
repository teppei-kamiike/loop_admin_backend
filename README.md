# Read Me First

The following was discovered as part of building this project:

- The original package name 'com.tech-voice.loop' is invalid and this project uses 'com.techvoice.loop' instead.

# Getting Started

## 開発環境構築

### Docker Desktop のインストール
IntelチップかAppleのチップかでインストール方法が異なるので注意
以下URLからインストール
- https://matsuand.github.io/docs.docker.jp.onthefly/desktop/mac/install/

起動してacceptやらstartする。  

### GitHub からプロジェクトを clone
```
git clone git@github.com:teppei-kamiike/loop_admin_backend.git
```

### .env ファイルの作成
プロジェクト内のdockerディレクトリ配下に.envファイルを作成する。  
```
docker/.env
```

### VSCodeで拡張機能をインストールする
Remote Development をインストール。  

### dockerを起動する
プロジェクト内のdockerディレクトリに移動し、docker-composeコマンドを実行する。  
```
cd docker
docker-compose up -d
```
（時間かかる）  

### VSCodeでSpringプロジェクトをRemote Containerで開く
1. VSCodeの左下緑の部分をクリック。  
1. Reopen in Container を選択。
1. フォルダが選べるので、loop_admin_bakendを選択。
1. SpringBootやJavaDevelopmentのGetStartedが表示される場合、不要なので無視。  
1. 拡張機能のインストールレコメンドが表示される場合も無視。  

### SpringBoot プロジェクトのビルド（依存パッケージインストール）と動作確認
VSCodeでターミナルを開く。  
bash-4.4みたいなのが表示される。  
以下コマンドを実行。  
```
./gradlew build
```
Permission deniedになる場合は以下を実行。  
```
chmod +x gradlew
```

デバッグ実行。Launch LoopAdminBackendApplication で実行。  

以下URLで動作確認。  
http://localhost:8080/hello  
Hello World!が表示されればOK。  

