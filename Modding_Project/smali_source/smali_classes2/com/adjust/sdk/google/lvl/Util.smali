.class public Lcom/adjust/sdk/google/lvl/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getLicenseRequiredData(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;
    .locals 1

    .line 1
    const-class v0, Lcom/adjust/sdk/google/lvl/Util;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification;->fetchLicenseDate(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method
