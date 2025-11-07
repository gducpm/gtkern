# === Docker environment for build ===

# Download Docker image

FROM randomdude/gcc-cross-x86_64-elf

# Update the system

RUN apt-get update
RUN apt-get upgrade -y

# Install necessary packages

RUN apt-get install -y grub-pc-bin
RUN apt-get install -y grub-common
RUN apt-get install -y nasm
RUN apt-get install -y xorriso

# Define a repository mountpoint

VOLUME /root/env
WORKDIR /root/env