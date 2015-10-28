#!/bin/bash
rm ./vbox.box &&
vagrant package --output ./vbox.box vbox-base &&
sha256sum ./vbox.box

