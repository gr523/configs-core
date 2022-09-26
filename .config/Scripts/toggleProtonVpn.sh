#!/bin/sh

protonvpn-cli s | grep IP && protonvpn-cli d || protonvpn-cli c -f
