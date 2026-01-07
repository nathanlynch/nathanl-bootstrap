#!/bin/bash

set -eu

dnf_opts=(--setopt=install_weak_deps=False)

set -a pkgs
pkgs=(ansible-core just)

rpm --query --quiet "${pkgs[@]}" || \
    sudo dnf "${dnf_opts[@]}" install -y "${pkgs[@]}"

just bootstrap-local
