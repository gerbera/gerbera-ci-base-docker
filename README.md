### Gerbera CI Base Image

## Example usage
```docker run -v $PWD:/tmp/gerbera-src -w /tmp/build -e CXX=clang++-7 -e CC=clang-7 -e CXXFLAGS=-"stdlib=libc++" gerbera-ci-base:latest bash -c "bash ../gerbera-src/scripts/install-googletest.sh && cmake ../gerbera-src -DCMAKE_VERBOSE_MAKEFILE=ON -DWITH_SYSTEMD=0 -DWITH_TESTS=1 && make install && make test"```