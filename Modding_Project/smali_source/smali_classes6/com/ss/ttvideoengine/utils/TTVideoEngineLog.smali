.class public Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;
.super Ljava/lang/Object;
.source "TTVideoEngineLog.java"


# static fields
.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_ERROR:I = 0x6

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_KILL:I = 0x4

.field public static final LOG_TRACK:I = 0x3

.field public static final LOG_VERBOSE:I = 0x0

.field public static final LOG_WARN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TTVideoEngineLog"


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

.method private static _notifyListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->_notifyListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e()Z

    move-result v0

    return v0
.end method

.method public static getLogNotifyLevel()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogNotifyLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getLogTurnOn()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->LogTurnOn:I

    .line 2
    .line 3
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setListener(Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->setListener(Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setLogNotifyLevel(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->setLogNotifyLevel(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static turnOn(II)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->turnOn(II)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setLoglevel(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x21

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setDebug(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setDebug(Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-lez p1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setPreloadLogLevel(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x6

    .line 55
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setPreloadLogLevel(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
