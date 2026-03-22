.class public Lcom/ss/ttvideoengine/EngineAdapter;
.super Ljava/lang/Object;
.source "EngineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;
    }
.end annotation


# static fields
.field private static final GET_DEVICE_ID_INTERVAL:I = 0x64

.field private static final GET_DEVICE_ID_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "EngineAdapter"

.field private static mInitSyncLicenseIdOnce:Z = false

.field private static sDeviceIdListener:Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;

.field private static sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static sSettingEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/EngineAdapter;->lambda$startDeviceIdExecutor$1(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/EngineAdapter;->lambda$initSettings$0(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static declared-synchronized checkDeviceId()Z
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/EngineAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDeviceId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    sget-object v2, Lcom/ss/ttvideoengine/EngineAdapter;->sDeviceIdListener:Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v2, v1}, Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;->onDeviceIdUpdate(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->updateSettingsWithDid()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->closeDeviceIdExecutor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    monitor-exit v0

    .line 34
    const/4 v0, 0x0

    .line 35
    return v0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v1
.end method

.method private static declared-synchronized closeDeviceIdExecutor()V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/EngineAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/EngineAdapter;->sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "EngineAdapter"

    .line 9
    .line 10
    const-string v2, "closeDeviceIdExecutor"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/ss/ttvideoengine/EngineAdapter;->sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/ss/ttvideoengine/EngineAdapter;->sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method static initDefaultEventUploader()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->isAppLogVer2Exist()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "_setDefaultEventUploader hasAppLogLib = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "EngineAdapter"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->instance()Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setVideoEventUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->instance()Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method static initSettings(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "china"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "mya"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 23
    .line 24
    const-string/jumbo v1, "singapore"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x75

    .line 38
    .line 39
    invoke-static {}, Lnc/a;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setRegionHost(ILjava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "Unsupported SDK region! Engine:CN TTSDK:GLOBAL"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/16 v1, 0x74

    .line 60
    .line 61
    invoke-static {}, Lnc/a;->e()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setRegionHost(ILjava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setContext(Landroid/content/Context;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/ss/ttvideoengine/b;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/ss/ttvideoengine/b;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addListener(Lcom/bytedance/vodsetting/SettingsListener;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->loadSettings()V

    .line 92
    .line 93
    .line 94
    sget-boolean v0, Lcom/ss/ttvideoengine/EngineAdapter;->mInitSyncLicenseIdOnce:Z

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    sput-boolean v0, Lcom/ss/ttvideoengine/EngineAdapter;->mInitSyncLicenseIdOnce:Z

    .line 100
    .line 101
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseLogger;->init(Landroid/content/Context;)Lcom/pandora/ttlicense2/LicenseLogger;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseLogger;->getInstance()Lcom/pandora/ttlicense2/LicenseLogger;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance v0, Lcom/ss/ttvideoengine/EngineAdapter$1;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/ss/ttvideoengine/EngineAdapter$1;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/pandora/ttlicense2/LicenseLogger;->addEventListener(Lcom/pandora/ttlicense2/LicenseLogger$EventListener;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    return-void
.end method

.method private static synthetic lambda$initSettings$0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo p1, "vod"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->maxRetryTimeOut()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "set maxRetryTimeOut "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "EngineAdapter"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setMaxRetryTimeOut(I)V

    .line 37
    .line 38
    .line 39
    if-lez p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->isRetryWhenFail(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->updateSettings()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->printSettings()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private static synthetic lambda$startDeviceIdExecutor$1(J)V
    .locals 4

    .line 1
    const-string v0, "deviceId executor check"

    .line 2
    .line 3
    const-string v1, "EngineAdapter"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->checkDeviceId()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v2, p0

    .line 20
    const-wide/16 p0, 0x7d0

    .line 21
    .line 22
    cmp-long p0, v2, p0

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    const-string p0, "deviceId executor timeout"

    .line 27
    .line 28
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object p1, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_ALL:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->closeDeviceIdExecutor()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private static loadSettings()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setEnableNotLoad(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->isAppLogVer2Exist()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "EngineAdapter"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "applog not exist"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_ALL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDeviceId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const-string v0, "deviceId exist"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->updateSettingsWithDid()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v2, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_VOD:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    :cond_2
    const-string/jumbo v0, "settings no cache"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_ALL:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->startDeviceIdExecutor()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static setsDeviceIdListener(Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/EngineAdapter;->sDeviceIdListener:Lcom/ss/ttvideoengine/EngineAdapter$DeviceIdListener;

    .line 2
    .line 3
    return-void
.end method

.method private static declared-synchronized startDeviceIdExecutor()V
    .locals 11

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/EngineAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    sget-object v3, Lcom/ss/ttvideoengine/EngineAdapter;->sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sput-object v4, Lcom/ss/ttvideoengine/EngineAdapter;->sGetDidExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    new-instance v5, Lcom/ss/ttvideoengine/a;

    .line 21
    .line 22
    invoke-direct {v5, v1, v2}, Lcom/ss/ttvideoengine/a;-><init>(J)V

    .line 23
    .line 24
    .line 25
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x64

    .line 30
    .line 31
    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v1
.end method

.method public static updateDeviceId()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "updateDeviceId:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDeviceId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "EngineAdapter"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->checkDeviceId()Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static declared-synchronized updateSettingsWithDid()V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/EngineAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/ttvideoengine/EngineAdapter;->sSettingEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/ss/ttvideoengine/EngineAdapter;->sSettingEnable:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_ALL:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/bytedance/vodsetting/SettingsManager;->shareSettings()Lcom/bytedance/vodsetting/SettingsManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/bytedance/vodsetting/SettingsManager;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v1
.end method
