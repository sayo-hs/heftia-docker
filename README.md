# heftia-docker
A docker sandbox for Heftia.


# Get Started

```console
$ git clone https://github.com/sayo-hs/heftia-docker
$ cd heftia-docker
$ docker build -t sayo-hs/heftia docker
$ docker run --rm -it -u $(id -u):$(id -g) -v $PWD:/work --workdir /work/example sayo-hs/heftia cabal run
...
Pre-applying: Goodbye world!
Post-applying: Hello world!!
$
```

The example of [Two Interpretations of the Censor Effect for Writer](https://github.com/sayo-hs/heftia/tree/v0.3.0?tab=readme-ov-file#two-interpretations-of-the-censor-effect-for-writer) will be executed.
