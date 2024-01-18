# 使用するPythonのイメージを指定
FROM python:3.8

# /appディレクトリを作成し、作業ディレクトリとして設定
WORKDIR /app

# 現在のディレクトリの内容をコンテナの/appディレクトリにコピー
COPY . /app

# requirements.txtを使って必要なパッケージをインストール
RUN pip install -r requirements.txt

# コンテナのポート8000番を外部に公開
EXPOSE 8000

# Djangoのrunserverコマンドでサーバーを起動
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
