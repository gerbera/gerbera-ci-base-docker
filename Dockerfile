FROM debian:buster

RUN apt-get update && apt-get install -yq  \
	# Stops APT complaining
	libterm-readline-gnu-perl \
	# Build stuff
	autoconf \
	libtool \
	pkg-config \
	# libs
	uuid-dev \
	libspdlog-dev \
	libpugixml-dev \
	# upnp (184)
	libupnp-dev \
	# sqlite
	libsqlite3-dev \
	# magic
	libmagic-dev \
	# duktape
	libduktape203 \
	duktape-dev \
	# exif
	libexif-dev \
	# curl
	libcurl4-openssl-dev \
	# ffmpeg
	libavutil-dev \
	libavcodec-dev \
	libavformat-dev \
	libavdevice-dev \
	libavfilter-dev \
	libavresample-dev \
	libswscale-dev \
	libswresample-dev \
	libpostproc-dev \
	# ffmpegthumbnailer
	libffmpegthumbnailer-dev \
	# cmake
	cmake \
	# taglib
	libtag1-dev \
	dpkg-dev \
	# matroska
	libmatroska-dev \
	libebml-dev \
	# mysql
	default-libmysqlclient-dev \
	# exiv2
	libexiv2-dev \
	# For the scripts
	curl \
	wget \
	git \
	unzip \
	# compilers
	g++-8 \
	g++-7 \
	clang-7 \
	libc++-7-dev \
	libc++abi-dev 


