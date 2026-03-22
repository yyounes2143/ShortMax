.class public Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$tB;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "gaid_task"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "TTAD.DeviceUtils"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6, v5}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception v2

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    :goto_0
    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->oJ(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v3

    .line 39
    :goto_1
    if-eq v4, v3, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "limit_ad_track"

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(I)V

    .line 71
    .line 72
    .line 73
    const-string v1, "getLmtTask error : signaling connection to Google Play Services failed."

    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
