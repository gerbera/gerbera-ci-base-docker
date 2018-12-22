# Gerbera CI Base Image
Docker image for use with Travis CI to build Gerbera Media Server.

Published on Docker Hub as `gerbera/gerbera-ci-base`

## Example usage
### GCC7
```
docker run --rm -v $PWD:/tmp/gerbera-src -w /tmp/build -e CXX=g++-7 -e CC=gcc-7 -e CXXFLAGS=-"stdlib=libc++" gerbera/gerbera-ci-base:latest bash -c "bash ../gerbera-src/scripts/install-googletest.sh && cmake . ./gerbera-src -DCMAKE_VERBOSE_MAKEFILE=ON -DWITH_SYSTEMD=0 -DWITH_TESTS=1 && make install && make test"
```
### GCC8
```
docker run --rm -v $PWD:/tmp/gerbera-src -w /tmp/build -e CXX=g++-7 -e CC=gcc-7 gerbera-ci-base:latest bash -c "bash ../gerbera-src/scripts/install-googletest.sh && cmake ../gerbera-src -DCMAKE_VERBOSE_MAKEFILE=ON -DWITH_SYSTEMD=0 -DWITH_TESTS=1 && make install && make test"
```
### Clang 7
```
docker run --rm -v $PWD:/tmp/gerbera-src -w /tmp/build -e CXX=clang++-7 -e CC=clang-7 -e CXXFLAGS=-"stdlib=libc++" gerbera-ci-base:latest bash -c "bash ../gerbera-src/scripts/install-googletest.sh && cmake ../gerbera-src -DCMAKE_VERBOSE_MAKEFILE=ON -DWITH_SYSTEMD=0 -DWITH_TESTS=1 && make install && make test"
```

