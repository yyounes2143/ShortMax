.class public final synthetic Lub/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic a(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
