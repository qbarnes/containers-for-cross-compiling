There are two ways to build, either local containers on your own machine
or publishing to GitHub Packages.

To build locally, just clone this repo and run `make` on the Linux
distro of your choice.  Depending on your distro, you may need to
install `make` and either `docker` or `podman`.

To publish your own copies of the container images to GitHub Packages:

    * Fork the project,
    * Go to the GitHub "Actions" tab for your fork,
    * Select the "Build and push container images for cross-compiling" workflow,
    * Click on the "Run workflow" button, and
    * Select the "Run workflow" button on the dropdown menu.
