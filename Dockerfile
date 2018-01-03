FROM groonga/mroonga:latest

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

COPY entrypoint.sh /root/entrypoint.sh

