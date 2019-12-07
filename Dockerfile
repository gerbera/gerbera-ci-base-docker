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
	libexpat1-dev \
	libsqlite3-dev \
	default-libmysqlclient-dev \
	libmagic-dev \
	libexif-dev \
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
	# cmake
	cmake \
	# duktape \
	libduktape203 \
	duktape-dev \
	# taglib
	libtag1-dev \
	dpkg-dev \
	# matroska
	libmatroska-dev \
	libebml-dev \
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
	libc++abi-dev \
	# libupnp 1.8.x
	libupnp-dev \
	libupnp13