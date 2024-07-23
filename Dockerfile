FROM python:3.11

WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Jupyter Notebookをインストール
RUN pip install --no-cache-dir jupyter

# 作業ディレクトリにプロジェクトファイルをコピー
COPY jupyter.sh .

CMD ["bash"]