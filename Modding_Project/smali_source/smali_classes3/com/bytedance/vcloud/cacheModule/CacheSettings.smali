.class public Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$CacheSettingsHandler;,
        Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheSettings"


# instance fields
.field private mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

.field private mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

.field private mGenerateFileKeyCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;

.field private final mStrOptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mStrOptionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mGenerateFileKeyCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/vcloud/cacheModule/CacheSettings$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;-><init>()V

    return-void
.end method

.method private native _setExchangeUrlCb(Z)V
.end method

.method private native _setGenerateFileKeyCb(Z)V
.end method

.method private native _setStringOption(ILjava/lang/String;)V
.end method

.method private static exchangeUrlCB(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-interface {v0, p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;->exchangeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static exchangeUrlCBInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
    .end annotation

    .line 1
    check-cast p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;->url:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;->exchangeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    return-object v0
.end method

.method private static exchangeUrlCBInfoV2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
    .end annotation

    .line 1
    check-cast p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->access$100(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->exchangeUrl2(Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;)Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->exchangeUrl(Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;->url:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    iget-object v2, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;->url:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v1, p0}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;->exchangeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iput-object p0, v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;->url:Ljava/lang/String;

    .line 61
    .line 62
    :cond_3
    return-object v0
.end method

.method public static generateFileKeyCB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mGenerateFileKeyCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    check-cast p2, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;->generateFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$CacheSettingsHandler;->sInstance:Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mStrOptionMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public setExchangeUrlCallback(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    .line 2
    sget-boolean p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->_setExchangeUrlCb(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api-native not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setExchangeUrlCallback(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;)V
    .locals 3

    .line 5
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    .line 6
    sget-boolean p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    if-eqz p1, :cond_1

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mExchangeUrlCallbackV2:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->_setExchangeUrlCb(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api-native not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setGenerateFileKeyCallback(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mGenerateFileKeyCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;

    .line 2
    .line 3
    sget-boolean p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mGenerateFileKeyCallback:Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->_setGenerateFileKeyCb(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "api-native not match: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    return-void
.end method

.method public setStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->mStrOptionMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->value()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->_setStringOption(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object p2, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "api-native not match: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method
