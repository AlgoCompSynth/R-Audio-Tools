# Container Hosting

R-Audio-Tools was developed on
[Bluefin](https://projectbluefin.io/), a container-based
Linux using the GNOME desktop. Among other features,
Bluefin ships with the Distrobox and `podman` container
hosting packages that R-Audio-Tools depends on as standard
equipment.

However, the R-Audio-Tools Distrobox container should run
on any recent Linux desktop once you install `podman` and
Distrobox.

- Fedora: run script `dnf-container-hosting.sh`
- Debian or Ubuntu: run script `apt-container-hosting.sh`
- openSUSE: run script `zypper-container-hosting.sh`
- Arch / Arch derivatives: run script `pacman-container-hosting.sh`

If you need another distro, please open an issue at
<https://github.com/AlgoCompSynth/R-Audio-Tools/issues/new>.
