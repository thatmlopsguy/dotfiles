#! /usr/bin/env bash

set -Eeuo pipefail

krew update
krew install ctx
krew install ns
krew install ktop
krew install kubescape
krew install oomd
krew install doctor
krew install tree
krew install cost
krew install kor
krew install neat
krew install slice
krew install score
krew install safe
krew install pv-migrate

krew upgrade
