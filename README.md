# GTKern Implementation (PRE-RELEASE)  
Fully Free and Open-Source hobby project  
## What is GTechOS?  
GTechOS, or GDucpm GTechOS, is a fully FOSS operating system with a custom kernel (not Linux). It's focused on six core philosophies:  
 - **Privacy**: Users aren't prisoners. We don't want to spy on them.  
 - **Customization**: Tweak your system in different ways.  
 - **Modernization**: Features try to be as modern as possible to make it feel like 2050.  
 - **Freedom**: Do anything you want, even if it means `:(){:|:&};:`.  
 - **Transparency**: Come on, the EFI System Partition is not a government secret.  
 - **Empowerment**: Teach users instead of leaving them in the dark.  
## Basic info  
**License**: GPLv3  
**Project Restart Count**: 1 (*shows the number of times I quitted the old project and erased old code*)  
**Original Maintainer** (new maintainers please **DO NOT change**): GDucpm  
**Current Maintainer**: GDucpm  
**Current Version**: PreRelease pv1.0.0  
## Questions to answer (not really FAQ)  
### What tutorial is this based on?  
In order to successfully create an operating system kernel, I had to search up for tutorials. The one this is based on:  
<https://youtu.be/FkrpUaGThTQ?si=iEaf869V_-9OOrWR> (*Part #1*)  
## Dependencies (in Arch Linux package names)  
 - **Compile-time**:  
     - `docker`  
     - `base`  
     - `base-devel`  
 - **Runtime**:  
     - `docker`  
     - `qemu-full`  
     - `base`  
     - `base-devel`  
## Compile and run  
 - Clone this GitHub repository:  
     - SSH: `git clone "git@github.com:gducpm/gtkern.git"` (if you have set it up)  
     - HTTPS: `git clone "https://github.com/gducpm/gtkern"` (if you haven't set up GitHub SSH)  
 - If either of these below commands **fail**, try running `chmod +x docker_setup.sh docker_run.sh qemu_run.sh`  
 - **Initialize a docker environment** by running `./docker_setup.sh`  
 - **Enter the Docker environment** by running `./docker_run.sh`  
 - **Run `make`** inside the Docker environment  
 - **On the host system**, run `./qemu_run.sh` to run the kernel  
## Dirtree for current release  
```tree
.
├── build
│   └── x86_64
│       └── boot
│           ├── header.o
│           └── main.o
├── buildenv
│   └── Dockerfile
├── dist
│   └── x86_64
│       ├── gtkern.iso
│       └── gtkern.kern
├── docker_run.sh
├── docker_setup.sh
├── etc
├── LICENSE
├── Makefile
├── qemu_run.sh
├── README.md
├── src
│   └── impl
│       └── x86_64
│           └── boot
│               ├── header.asm
│               └── main.asm
└── targets
    └── x86_64
        ├── iso
        │   └── boot
        │       ├── grub
        │       │   └── grub.cfg
        │       └── gtkern.kern
        └── linker.ld

17 directories, 16 files
```  
## Contribution  
To **contribute code** please start a new issue  
## Final notes  
Thanks for viewing my project! It definitely makes me happy that my OS is getting recognized. I make these OSes because I have always wished that one day, people will be using more FOSS.  