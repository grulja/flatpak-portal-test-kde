#!/bin/sh

flatpak-builder --force-clean --ccache --require-changes --repo=repo app org.kde.portaltest.json
