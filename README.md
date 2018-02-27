# Parsoid

MediaWiki uses its custom [Parsoid](https://www.mediawiki.org/wiki/Parsoid) service as part of its new WYSIWYG, [VisualEditor](https://www.mediawiki.org/wiki/VisualEditor). This is a simple container to run an instance of it.

Example:

```
docker run -p 8000:8000 -v /data:/data epuzanov/parsoid
```

