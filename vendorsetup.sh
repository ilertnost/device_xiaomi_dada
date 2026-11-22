#
# SPDX-License-Identifier: Apache-2.0
#

# Apply the source patches carried by the common device tree on top of the
# synced projects. This only runs for the patch-based manifest: with the old
# fork-based manifest the patches are already part of the fork branches.
#
# See device/xiaomi/sm8750-common/patches/README.md.
if grep -q 'patch-based variant of dada.xml' \
        "$(gettop)/.repo/local_manifests/dada.xml" 2>/dev/null; then
    bash "$(gettop)/device/xiaomi/sm8750-common/patches/apply-patches.sh" \
        device/xiaomi/sm8750-common/patches
fi
