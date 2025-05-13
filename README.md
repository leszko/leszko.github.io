# Rafał Leszko

```
docker build -t my_jekyll .
docker run -p 4000:4000 -it -v .:/srv/jekyll my_jekyll bash
# jekyll serve
```