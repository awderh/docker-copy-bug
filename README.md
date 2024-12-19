# Docker COPY Bug?
The project is setup simply as `a/b.txt`.
The Dockerfile calls: `COPY a /usr/local/app`
The expected result in the container of `ls /usr/local/app` is:

```
a
```

but we see:

```
b.txt
```

This does not make sense to me.

Try it out:
```sh
docker run --rm -it --entrypoint ls $(docker build -q .)
```
