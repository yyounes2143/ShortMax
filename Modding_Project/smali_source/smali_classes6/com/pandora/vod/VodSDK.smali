.class public Lcom/pandora/vod/VodSDK;
.super Ljava/lang/Object;
.source "VodSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VodSDK"


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

.method public static init(Llc/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/pandora/vod/VodSDK$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/pandora/vod/VodSDK$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/EngineAdapter;->setsDeviceIdListener(Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Llc/a;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "appname"

    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v1, "appid"

    .line 24
    .line 25
    invoke-virtual {p0}, Llc/a;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v1, "appchannel"

    .line 33
    .line 34
    invoke-virtual {p0}, Llc/a;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "region"

    .line 42
    .line 43
    invoke-virtual {p0}, Llc/a;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v1, "appversion"

    .line 51
    .line 52
    invoke-virtual {p0}, Llc/a;->e()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Llc/a;->f()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setAppInfo(Landroid/content/Context;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/pandora/vod/VodSDK;->initMDL(Llc/a;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/pandora/vod/a;->b()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static initLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/pandora/vod/a;->d(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Lcom/pandora/vod/VodSDK$b;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/pandora/vod/VodSDK$b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addListener(Lcom/bytedance/vodsetting/SettingsListener;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/pandora/vod/a;->b()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static initMDL(Llc/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Llc/a;->f()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Llc/a;->j()Llc/c;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Llc/c;->c()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Llc/c;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Llc/c;->b()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStringValue(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x2330

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->startDataLoader(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static openAllVodLog()V
    .locals 5

    .line 1
    const-string v0, "VodSDK"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v1}, Lmc/b;->e(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->turnOn(II)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setPlayerOutputLog(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->turnOn(II)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {v1}, Lcom/pandora/ttlicense2/LicenseManager;->turnOnLogcat(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "open LicenseLog e:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_1
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->turnLogLevel(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "open CacheModule e:"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    :try_start_2
    invoke-static {v1}, Lb7/q;->setLogcatOutPut(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "open exo log e:"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method public static updateDeviceID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->updateDeviceId()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/pandora/vod/a;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
