#!/bin/bash
FILE="Modding_Project/smali_source/smali_classes6/com/startshorts/androidplayer/bean/account/Account.smali"

# Patch isPaid
sed -i '/\.method public final isPaid()Z/,/\.end method/c\
.method public final isPaid()Z\n    .locals 1\n    const/4 v0, 0x1\n    return v0\n.end method' "$FILE"

# Patch isSubscription
sed -i '/\.method public final isSubscription()Z/,/\.end method/c\
.method public final isSubscription()Z\n    .locals 1\n    const/4 v0, 0x1\n    return v0\n.end method' "$FILE"

# Patch getHasSubscription
sed -i '/\.method public final getHasSubscription()Z/,/\.end method/c\
.method public final getHasSubscription()Z\n    .locals 1\n    const/4 v0, 0x1\n    return v0\n.end method' "$FILE"

# Patch isSubsExpired
sed -i '/\.method public final isSubsExpired()Z/,/\.end method/c\
.method public final isSubsExpired()Z\n    .locals 1\n    const/4 v0, 0x0\n    return v0\n.end method' "$FILE"

# Patch getSubscriptionType
sed -i '/\.method public final getSubscriptionType()I/,/\.end method/c\
.method public final getSubscriptionType()I\n    .locals 1\n    const/4 v0, 0x7\n    return v0\n.end method' "$FILE"

# Patch isRecharged
sed -i '/\.method public final isRecharged()Z/,/\.end method/c\
.method public final isRecharged()Z\n    .locals 1\n    const/4 v0, 0x1\n    return v0\n.end method' "$FILE"

# Patch getCoins
sed -i '/\.method public final getCoins()I/,/\.end method/c\
.method public final getCoins()I\n    .locals 1\n    const v0, 0xf423f\n    return v0\n.end method' "$FILE"

# Patch getBonus
sed -i '/\.method public final getBonus()I/,/\.end method/c\
.method public final getBonus()I\n    .locals 1\n    const v0, 0xf423f\n    return v0\n.end method' "$FILE"
