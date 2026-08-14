FROM ghcr.io/containerpak/mesa:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
    cabextract ca-certificates libc-bin libfontconfig1 libfreetype6 libgl1 \
    libglib2.0-0 libgnutls30t64 libgstreamer1.0-0 \
    libgstreamer-plugins-base1.0-0 libpulse0 libunwind8 libusb-1.0-0 \
    libvulkan1 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 \
    libxfixes3 libxi6 libxinerama1 libxrandr2 libxrender1 libxss1 \
    libxxf86vm1 libsmbclient libkrb5-3 libodbc2 libopencl1 p7zip-full \
    libasound2t64 libdbus-1-3 libjpeg-turbo8 liblcms2-2 libmpg123-0 \
    libopenal1 libosmesa6 libsdl2-2.0-0 libudev1 libv4l-0 libva2 \
    libwayland-client0 libwayland-egl1 libxml2-16 libxslt1.1 libxshmfence1 \
    libfontconfig1:i386 libfreetype6:i386 libgl1:i386 \
    libgnutls30t64:i386 libgstreamer1.0-0:i386 \
    libgstreamer-plugins-base1.0-0:i386 libpulse0:i386 libunwind8:i386 \
    libusb-1.0-0:i386 libvulkan1:i386 libx11-6:i386 libxcomposite1:i386 \
    libxcursor1:i386 libxdamage1:i386 libxext6:i386 libxfixes3:i386 \
    libxi6:i386 libxinerama1:i386 libxrandr2:i386 libxrender1:i386 \
    libxxf86vm1:i386 libasound2t64:i386 libdbus-1-3:i386 \
    libjpeg-turbo8:i386 liblcms2-2:i386 libmpg123-0:i386 \
    libopenal1:i386 libosmesa6:i386 libsdl2-2.0-0:i386 libudev1:i386 \
    libv4l-0:i386 libva2:i386 libwayland-client0:i386 \
    libwayland-egl1:i386 libxml2-16:i386 libxslt1.1:i386 libxshmfence1:i386 && \
    cpak-clean-junk

ENV LD_LIBRARY_PATH="/usr/lib:/usr/lib/i386-linux-gnu:/usr/lib/x86_64-linux-gnu" \
    GST_PLUGIN_SYSTEM_PATH="/usr/lib/extensions/gstreamer-1.0:/usr/lib/x86_64-linux-gnu/gstreamer-1.0:/usr/lib/i386-linux-gnu/gstreamer-1.0"
