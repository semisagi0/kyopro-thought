`.md`から`.html`に変換したい場合、次のコマンドを実行する。ただし`pandoc`が必要。
```
pandoc 2021-08.md -s --self-contained -t html5 -c style.css -o sample.html --metadata pagetitle="sample"
```