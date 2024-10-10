# heftia-docker
A docker sandbox for Heftia.


# Get Started

* Use Docker Hub

```console
$ git clone https://github.com/sayo-hs/heftia-docker
$ cd heftia-docker
$ docker run --rm -it -v $PWD:/work --workdir /work/example lanexpr/heftia:v0.4.0 cabal run
...
Pre-applying: Goodbye world!
Post-applying: Hello world!!
$
```

* Build it yourself

```console
$ git clone https://github.com/sayo-hs/heftia-docker
$ cd heftia-docker
$ docker build -t sayo-hs/heftia docker
$ docker run --rm -it -v $PWD:/work --workdir /work/example sayo-hs/heftia cabal run
...
Pre-applying: Goodbye world!
Post-applying: Hello world!!
$
```

The example of [Two Interpretations of the Censor Effect for Writer](https://github.com/sayo-hs/heftia/tree/v0.4.0?tab=readme-ov-file#two-interpretations-of-the-censor-effect-for-writer) will be executed.
