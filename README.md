# Guest Builder
An easy way to generate customized cloud images using Docker

[![Docker Repository on Quay](https://quay.io/repository/rebeccajae/guestbuilder/status "Docker Repository on Quay")](https://quay.io/repository/rebeccajae/guestbuilder)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Frebeccajae%2Fguestbuilder.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Frebeccajae%2Fguestbuilder?ref=badge_shield)

## Impetus
I personally use a Mac for development, and wanted to get into prebuilding 
images for VMs, but it seemed like all of the tools that existed were
for Linux machines. I eventually figured out I could run these tasks
in Docker. Hence, this image.

## Examples
Modify the `guest-build.sh` and `host-run.sh` files then run `host-run.sh`. The default
will fetch the Ubuntu Bionic cloudimg, set the root password to `rootpass`, convert it
to a VMDK, then put it in the `shared/` directory. 


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Frebeccajae%2Fguestbuilder.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Frebeccajae%2Fguestbuilder?ref=badge_large)