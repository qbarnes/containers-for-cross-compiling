This repo provides containers with cross-compilation environments
for building binaries for ARM 64-bit (aarch64), ARM 32-bit (armv7l),
MS-DOS, and Microsoft Windows 32-bit and 64-bit.

I reference these containers in other repos for use with GitHub Actions.
For an example use case, see
[here](https://github.com/qbarnes/dmkdump/blob/master/BUILDING.md#cross-building-with-github-actions).

The containers can also be used for building locally on your computer.
See [here](https://github.com/qbarnes/dmkdump/blob/master/BUILDING.md#cross-building-dmkdump-using-oci-containers)
for an example case.

Feel free to use the published container images for your own GitHub
Actions workflows.  You can see how to use them in workflows
[here](https://github.com/qbarnes/dmkdump/blob/master/.github/workflows/dmkdump-build.yml).

If you find any problems or have suggestions, please
[submit a PR](https://github.com/qbarnes/containers-for-cross-compiling/pulls).
