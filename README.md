# Guest Builder
An easy way to generate customized cloud images using Docker

[![Docker Repository on Quay](https://quay.io/repository/rebeccajae/guestbuilder/status "Docker Repository on Quay")](https://quay.io/repository/rebeccajae/guestbuilder)

## Impetus
I personally use a Mac for development, and wanted to get into prebuilding 
images for VMs, but it seemed like all of the tools that existed were
for Linux machines. I eventually figured out I could run these tasks
in Docker. Hence, this image.

## Examples
Modify the `guest-build.sh` file then run `host-run.sh`. The default will fetch
the Ubuntu Bionic cloudimg, set the root password to `rootpass`, convert it to
a VMDK, then put it in the `shared/` directory. 
