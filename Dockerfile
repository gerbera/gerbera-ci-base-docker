FROM alpine:3.11

RUN apk add --no-cache gcc g++ pkgconf make automake autoconf libtool \
	util-linux-dev sqlite-dev mariadb-connector-c-dev cmake zlib-dev fmt-dev \
	file-dev libexif-dev curl-dev ffmpeg-dev ffmpegthumbnailer-dev wget xz \
	libmatroska-dev libebml-dev clang taglib-dev pugixml-dev curl gtest-dev

RUN mkdir build && cd build && \
	curl https://raw.githubusercontent.com/gerbera/gerbera/master/scripts/install-pupnp.sh | bash && \
	curl https://raw.githubusercontent.com/gerbera/gerbera/master/scripts/install-duktape.sh | bash && \
	curl https://raw.githubusercontent.com/gerbera/gerbera/master/scripts/install-spdlog.sh | bash && \
	cd .. && rm -rf build
