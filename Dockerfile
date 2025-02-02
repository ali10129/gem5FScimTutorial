
### full system compute in memory framework in gem5 from scratch.
### Base docker file with QEMU and gem5 dependencies

FROM ubuntu:latest


# Install gem5 dependencies
RUN apt -y update && apt -y upgrade && \
    apt -y install build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev doxygen libboost-all-dev libhdf5-serial-dev python3-pydot \
    libpng-dev libelf-dev pkg-config pip python3-venv black \
    telnet

RUN pip install --break-system-packages mypy pre-commit

# Install QEMU-KVM dependencies
RUN apt update && \
    apt install -y \
    qemu-kvm \
    libvirt-daemon-system libvirt-clients bridge-utils virt-manager 

# Install QEMU-SYSTEM dependencies
RUN apt update && \
    apt install -y \
    qemu-system \ 
    libcanberra-gtk-module libcanberra-gtk3-module

RUN apt clean




