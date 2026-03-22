.class public Lcom/ss/ttvideoengine/setting/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/setting/SettingsHelper$MyListener;,
        Lcom/ss/ttvideoengine/setting/SettingsHelper$HelperHolder;
    }
.end annotation


# static fields
.field public static HARDWARE_CONFIG_SETTINGS:I = 0x3

.field public static HARDWARE_CONFIG_VIDEO_MODEL:I = 0x2

.field public static MODULE_ALL:Ljava/lang/String; = "all"

.field public static MODULE_BIZ_PORTRAIT:Ljava/lang/String; = "biz_portrait"

.field public static MODULE_MDL:Ljava/lang/String; = "mdl"

.field public static MODULE_VOD:Ljava/lang/String; = "vod"

.field public static REGION_CN:Ljava/lang/String; = null

.field public static REGION_SG:Ljava/lang/String; = null

.field public static REGION_US:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VodSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDeviceId:Ljava/lang/String;

.field private mEnable:I

.field private final mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/setting/ISettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMdlVersion:Ljava/lang/String;

.field private mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private final mNetClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/net/TTVNetClient;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerVersion:Ljava/lang/String;

.field private final mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

.field private mVodCustomJSONObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_CN:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->REGION_CN:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_US:Ljava/lang/String;

    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->REGION_US:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_SG:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->REGION_SG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mPlayerVersion:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mMdlVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDebug:Z

    .line 7
    iput v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mNetClients:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListeners:Ljava/util/ArrayList;

    .line 12
    invoke-static {}, Lcom/bytedance/vodsetting/SettingsManager;->shareSettings()Lcom/bytedance/vodsetting/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 13
    new-instance v2, Lcom/ss/ttvideoengine/setting/SettingsHelper$MyListener;

    invoke-direct {v2, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper$MyListener;-><init>(Lcom/ss/ttvideoengine/setting/SettingsHelper$1;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/vodsetting/SettingsManager;->addListener(Lcom/bytedance/vodsetting/SettingsListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/setting/SettingsHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;-><init>()V

    return-void
.end method

.method private _mdlVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mMdlVersion:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getStringValue(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mMdlVersion:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mMdlVersion:Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method private _notifyListener(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/ss/ttvideoengine/setting/ISettingsListener;

    .line 41
    .line 42
    const/16 v2, 0x3e8

    .line 43
    .line 44
    if-ne p2, v2, :cond_0

    .line 45
    .line 46
    sget-object v2, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_BIZ_PORTRAIT:Ljava/lang/String;

    .line 47
    .line 48
    if-ne p1, v2, :cond_0

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/setting/ISettingsListener;->onNotify(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method private _playerVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mPlayerVersion:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mPlayerVersion:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mPlayerVersion:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method private _sdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.10.172.340-jzdrm-premium"

    .line 2
    .line 3
    return-object v0
.end method

.method private _settingsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.1.3"

    .line 2
    .line 3
    return-object v0
.end method

.method private _strategyVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "3.148.1"

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/setting/SettingsHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->buildURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mNetClients:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/setting/SettingsHelper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->_notifyListener(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addDeviceInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "player_unique_id"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getEngineUniqueId(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private addLicenseInfo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getLicenseIds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string v4, ","

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string/jumbo v0, "volc_license_ids"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private addSignatureInfo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x3e8

    .line 19
    .line 20
    div-long/2addr v1, v3

    .line 21
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getSignature(Ljava/lang/String;J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "bundle_id"

    .line 26
    .line 27
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "timestamp"

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "signature"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private buildURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_2
    :goto_1
    return-object p1
.end method

.method private getSignature(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "&"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDeviceId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/ss/ttvideoengine/utils/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->hmacSha1(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public static helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper$HelperHolder;->access$100()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/bytedance/vodsetting/SettingsListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->addListener(Lcom/bytedance/vodsetting/SettingsListener;)V

    return-void
.end method

.method public addListener(Lcom/ss/ttvideoengine/setting/ISettingsListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public config()Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "china"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_CN:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->setRegion(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v1, "singapore"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_SG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->setRegion(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->setRegion(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDeviceId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDeviceId:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    sget v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "aid"

    .line 65
    .line 66
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v1, "app_name"

    .line 70
    .line 71
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v1, "device_id"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDeviceId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v1, "app_channel"

    .line 84
    .line 85
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppChannel:Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v1, "app_version"

    .line 91
    .line 92
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addSignatureInfo(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addDeviceInfo(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->setAppInfo(Ljava/util/Map;)Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v1, "ttsdk_version"

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTTSDKVersion()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addLicenseInfo(Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "sdk_version"

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->_sdkVersion()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v1, "player_version"

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->_playerVersion()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v1, "st_version"

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->_strategyVersion()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "settings_version"

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->_settingsVersion()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->setSDKInfo(Ljava/util/Map;)Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    return-object p0
.end method

.method public getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_VOD:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    monitor-exit p0

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1

    .line 28
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public getMDLInt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 7
    .line 8
    const-string v1, "mdl"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getMDLJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 8
    .line 9
    const-string v1, "mdl"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getMDLLong(Ljava/lang/String;J)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-wide p2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 7
    .line 8
    const-string v1, "mdl"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    return-wide p1
.end method

.method public getMDLString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 7
    .line 8
    const-string v1, "mdl"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getVodInt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-exit p0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 21
    .line 22
    const-string/jumbo v1, "vod"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public getVodJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getVodJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 22
    .line 23
    const-string/jumbo v1, "vod"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public getVodLong(Ljava/lang/String;J)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-wide p2

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 21
    .line 22
    const-string/jumbo v1, "vod"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    return-wide p1

    .line 30
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public getVodString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 21
    .line 22
    const-string/jumbo v1, "vod"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/vodsetting/SettingsManager;->loadLocalAndRefresh(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-object p0
.end method

.method public loadMDLCache()Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/SettingsManager;->loadLocal(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-object p0
.end method

.method public removeListener(Lcom/ss/ttvideoengine/setting/ISettingsListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->setContext(Landroid/content/Context;)Lcom/bytedance/vodsetting/SettingsManager;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDebug:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/bytedance/vodsetting/SettingsManager;->setDebug(Z)Lcom/bytedance/vodsetting/SettingsManager;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;-><init>(Lcom/ss/ttvideoengine/setting/SettingsHelper;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->setNet(Lcom/bytedance/vodsetting/NetInterface;)Lcom/bytedance/vodsetting/SettingsManager;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mDebug:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnable(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getRegion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_ALL:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->load(Ljava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setEnableNotLoad(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mEnable:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setRegionHost(ILjava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {p2}, Lcom/bytedance/vodsetting/ConfigEnv;->setHostForUS(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/vodsetting/ConfigEnv;->setHostForSG(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-static {p2}, Lcom/bytedance/vodsetting/ConfigEnv;->setHostForCN(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVodCustomJSONObject(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mVodCustomJSONObject:Lorg/json/JSONObject;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public settings()Lcom/bytedance/vodsetting/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper;->mSettingsManager:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    return-object v0
.end method
