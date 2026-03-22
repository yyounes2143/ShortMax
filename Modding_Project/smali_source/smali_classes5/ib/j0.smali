.class public Lib/j0;
.super Ljava/lang/Object;
.source "HmsAPKVersionCheckUtil.java"


# direct methods
.method public static a()I
    .locals 1

    .line 1
    const v0, 0x1c9c380

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public static b(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V
    .locals 6

    .line 1
    const-string v0, "HmsAPKVersionCheckUtil"

    .line 2
    .line 3
    const-string v1, "====== HMSSDK version: 61200300 ======"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lib/j0;->a()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "check minVersion:"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v0, v4, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/huawei/hms/adapter/AvailableAdapter;

    .line 38
    .line 39
    invoke-direct {v0, v3}, Lcom/huawei/hms/adapter/AvailableAdapter;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1, v1}, Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;->onComplete(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isUserResolvableError(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->startResolution(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1, v1}, Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;->onComplete(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
