.class public Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
.super Ljava/lang/Object;
.source "StrategyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;,
        Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;,
        Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyALogCallBak;,
        Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;,
        Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$StrategyHelperHolder;
    }
.end annotation


# static fields
.field public static final LOG_KEY_PRECISE_CACHE_CONTROL:Ljava/lang/String; = "st_play_task_op"

.field static final TAG:Ljava/lang/String; = "VCStrategy"


# instance fields
.field private mAppID:I

.field private mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;

.field private mCheckPlayerVer:Z

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

.field private mDidSetAppInfo:Z

.field private mEnableSpeedInfoUpdate:I

.field private mEventListener:Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;

.field private mIOManager:J

.field private mIOManagerVersion:J

.field private mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

.field private mJsonStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBandwidth:F

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLogLevel:I

.field private mModuleSwitchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

.field private mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerIsMatch:Z

.field private mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

.field private mSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedInfoUpdate:Z

.field private mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mStorageProvider:Lcom/ss/ttvideoengine/database/IKVStorageProvider;

.field private mSupplier:Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSupplier:Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDidSetAppInfo:Z

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManager:J

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManagerVersion:J

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    iput v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLogLevel:I

    .line 24
    .line 25
    iput v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mAppID:I

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCheckPlayerVer:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPlayerIsMatch:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDBHelper:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 43
    .line 44
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mModuleSwitchMap:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v2, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 57
    .line 58
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSettingMap:Ljava/util/Map;

    .line 64
    .line 65
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mJsonStringMap:Ljava/util/Map;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mStorageProvider:Lcom/ss/ttvideoengine/database/IKVStorageProvider;

    .line 73
    .line 74
    iput v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mEnableSpeedInfoUpdate:I

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedInfoUpdate:Z

    .line 78
    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    .line 80
    .line 81
    iput v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F

    .line 82
    .line 83
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    .line 90
    return-void
.end method

.method private _configParams()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Landroid/content/Context;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDBHelper:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x2710

    .line 15
    .line 16
    iget v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLogLevel:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x321

    .line 26
    .line 27
    sget v2, Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;->mInteractionBlockDurationPreloaded:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x322

    .line 37
    .line 38
    sget v2, Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;->mInteractionBlockDurationNonPreloaded:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mJsonStringMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v3, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setAlgorithmJson(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSettingMap:Ljava/util/Map;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v2, v3, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    return-void
.end method

.method private _mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    return-object v0
.end method

.method private static final _netState(I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x2

    .line 12
    if-eq p0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne p0, v1, :cond_3

    .line 22
    .line 23
    :cond_2
    const/16 v0, 0xa

    .line 24
    .line 25
    :cond_3
    :goto_0
    return v0
.end method

.method private _netStateListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$3;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 12
    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x10

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->startListen(Ljava/lang/ref/WeakReference;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private _stringToIntValueMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ","

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    :try_start_0
    array-length v4, p1

    .line 25
    if-ge v3, v4, :cond_2

    .line 26
    .line 27
    aget-object v4, p1, v3

    .line 28
    .line 29
    const-string v5, ":"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    array-length v5, v4

    .line 36
    if-ne v5, v1, :cond_1

    .line 37
    .line 38
    aget-object v5, v4, v2

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    aget-object v4, v4, v6

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-object v0

    .line 61
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :catchall_0
    return-object v0

    .line 65
    :cond_3
    :goto_3
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method private _stringToMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    :cond_3
    return-object p2

    .line 54
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSupplier:Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/database/IKVStorageProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mStorageProvider:Lcom/ss/ttvideoengine/database/IKVStorageProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_netState(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_stringToMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_mapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDBHelper:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mEventListener:Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static buildMaskInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "infos"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "file_hash"

    .line 29
    .line 30
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    const-string/jumbo p2, "urls"

    .line 40
    .line 41
    .line 42
    filled-new-array {p1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string p1, "media_type"

    .line 50
    .line 51
    const-string p2, "mask"

    .line 52
    .line 53
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    const-string p1, "VCStrategy"

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void
.end method

.method public static buildMediaInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "infos"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "urls"

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p3, "file_hash"

    .line 35
    .line 36
    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-string/jumbo p3, "vid"

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move-object p1, p2

    .line 52
    :cond_1
    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :goto_1
    const-string p1, "VCStrategy"

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    return-void
.end method

.method public static helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$StrategyHelperHolder;->access$000()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private internalStart(Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "internalStart needLoadLibrary="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VCStrategy"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0, v2, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->create(Landroid/content/Context;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const-string p1, "internalStart isLoadLibrarySucceed false"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_configParams()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_netStateListener()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mJsonStringMap:Ljava/util/Map;

    .line 55
    .line 56
    const/16 v2, 0x7919

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mAppID:I

    .line 69
    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    if-ne v0, v3, :cond_1

    .line 73
    .line 74
    const-string/jumbo v0, "{\"strategy_center_v1\":{\"feed\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}},\"fullscreen_immersive\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}},\"story\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}}}}"

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "{\"strategy_center_v1\":{\"engine_default\":{\"preload_strategy\":{\"name\":\"default\",\"tasks\":[{\"download_progress\":100,\"count\":5,\"offset\":0,\"size\":800}]}},\"video_range_request\":{\"enable_concurrent_download\":0,\"allowed_segment_download\":0,\"fixed_size\":3000,\"fixed_duration\":10}}}"

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setAlgorithmJson(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-wide v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManager:J

    .line 89
    .line 90
    iget-wide v4, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManagerVersion:J

    .line 91
    .line 92
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIOManager(JJ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isIOManagerVersionMatch()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    const-string p1, "io manager interface not match, start fail."

    .line 106
    .line 107
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyALogCallBak;

    .line 116
    .line 117
    invoke-direct {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyALogCallBak;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setLogCallback(Lcom/bytedance/vcloud/strategy/ILogCallback;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;

    .line 132
    .line 133
    invoke-direct {v1, p0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setAppServer(Lcom/bytedance/vcloud/strategy/IAppService;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v1, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_VOD:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v2, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_VOD:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setSettingsInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    new-instance v0, Lcom/ss/ttvideoengine/preload/PreloadScene;

    .line 165
    .line 166
    const-string v1, "engine_default"

    .line 167
    .line 168
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/preload/PreloadScene;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iput-object v1, v0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mSceneId:Ljava/lang/String;

    .line 172
    .line 173
    const-string v2, "engine_brief_default"

    .line 174
    .line 175
    iput-object v2, v0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mBriefSceneId:Ljava/lang/String;

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    iput v2, v0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAutoPlay:I

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    iput v3, v0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMute:I

    .line 182
    .line 183
    iput v2, v0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMaxVisibleCardCnt:I

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preload/PreloadScene;->setAlgorithmName(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/preload/PreloadScene;->toJsonString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->createScene(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v2, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;

    .line 208
    .line 209
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$1;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setStateSupplier(Lcom/bytedance/vcloud/strategy/IStrategyStateSupplier;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v0, v2, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->start(Landroid/content/Context;Z)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->switchToScene(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getAllLabels()Ljava/util/Map;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p1, :cond_6

    .line 244
    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 246
    .line 247
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    const/16 v1, 0x79ee

    .line 259
    .line 260
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .line 262
    .line 263
    :catch_0
    :cond_6
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    new-instance v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$2;

    .line 268
    .line 269
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$2;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->addPortraitListener(Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method


# virtual methods
.method public checkPlayerVersion(I)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCheckPlayerVer:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->iPlayerVersion()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPlayerIsMatch:Z

    .line 30
    .line 31
    :cond_1
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPlayerIsMatch:Z

    .line 32
    .line 33
    return p1
.end method

.method public configAppInfo(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDidSetAppInfo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setAppInfo(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mDidSetAppInfo:Z

    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const-string p1, "appid"

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->parseInt(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mAppID:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public enableSpeedInfoUpdate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mEnableSpeedInfoUpdate:I

    .line 2
    .line 3
    return-void
.end method

.method public getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 15
    .line 16
    new-instance v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;

    .line 17
    .line 18
    invoke-direct {v1, p0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;-><init>(Lcom/bytedance/vcloud/strategy/IStrategyEventListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCenter:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 42
    .line 43
    return-object v0
.end method

.method public getLogData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->getLogData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getLogData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->getLogData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getLogLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLogLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetworkSpeed()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mEnableSpeedInfoUpdate:I

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/16 v2, 0x4fb1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->getFloatValue(IF)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedInfoUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    const-string v3, "VCStrategy"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :try_start_1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F

    .line 35
    .line 36
    cmpl-float v0, v0, v4

    .line 37
    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "speed doesnt need to be updated, update: "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedInfoUpdate:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", last: "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    .line 79
    .line 80
    return v0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->getFloatValue(IF)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    cmpl-float v1, v0, v4

    .line 96
    .line 97
    if-lez v1, :cond_2

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v2, "speed update success, result: "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v3, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedInfoUpdate:Z

    .line 124
    .line 125
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLastBandwidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    .line 131
    .line 132
    return v0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public getSupplier()Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSupplier:Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public loadPluginLibrary(Lcom/ss/ttvideoengine/LibraryLoaderProxy;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/vcloud/strategy/StrategyCenterJniLoader;->loadCustomLibrary()V

    .line 7
    .line 8
    .line 9
    const-string v0, "preload"

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    const-string v0, "VCStrategy"

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public moduleSwitch(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mModuleSwitchMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->getIntValue(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mModuleSwitchMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return v1

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mModuleSwitchMap:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public needCheckPlayerVersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mCheckPlayerVer:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public playerIsMatch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPlayerIsMatch:Z

    .line 2
    .line 3
    return v0
.end method

.method public popOneEventLog(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->popLogData(ILjava/lang/String;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public popOnePlayLog(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->popLogData(ILjava/lang/String;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public removeLogData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mInnerEvent:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->removeLogData(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;
    .locals 1
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_mapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->selectBitrate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "[GearStrategy]StrategyHelper.selectResolution result invalid retString="

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "VCStrategy"

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_stringToIntValueMap(Ljava/lang/String;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public selectResolutionStringMap(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;
    .locals 3
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "[GearStrategy]GearStrategy called"

    .line 2
    .line 3
    const-string v1, "VCStrategy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableSelectUseObject()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_mapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->selectBitrateStringMapWithObject(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_mapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->selectBitrateStringMap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p3, "[GearStrategy]StrategyHelper.selectResolution result invalid retString="

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->_stringToMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    if-eqz p3, :cond_2

    .line 89
    .line 90
    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string/jumbo p3, "video"

    .line 99
    .line 100
    .line 101
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p4

    .line 105
    if-eqz p4, :cond_3

    .line 106
    .line 107
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    check-cast p4, Ljava/lang/String;

    .line 112
    .line 113
    if-eqz p4, :cond_3

    .line 114
    .line 115
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_3
    const-string p3, "audio"

    .line 127
    .line 128
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    if-eqz p4, :cond_4

    .line 133
    .line 134
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Ljava/lang/String;

    .line 139
    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_4
    return-object p1
.end method

.method public setAlgorithmJson(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "[preload] Algorithm json "

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "VCStrategy"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setAlgorithmJson(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mJsonStringMap:Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public setEventListener(Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mEventListener:Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setIOManager(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iput-wide p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManager:J

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mIOManagerVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public setIntValue(II)V
    .locals 1

    .line 1
    const v0, 0xc350

    .line 2
    .line 3
    .line 4
    if-le p1, v0, :cond_3

    .line 5
    .line 6
    const v0, 0xea60

    .line 7
    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v0, 0xe290

    .line 13
    .line 14
    .line 15
    if-lt p1, v0, :cond_1

    .line 16
    .line 17
    const v0, 0xe677

    .line 18
    .line 19
    .line 20
    if-gt p1, v0, :cond_1

    .line 21
    .line 22
    const v0, 0xe291

    .line 23
    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->enableSpeedInfoUpdate(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSettingMap:Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public setKVStorageProvider(Lcom/ss/ttvideoengine/database/IKVStorageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mStorageProvider:Lcom/ss/ttvideoengine/database/IKVStorageProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setLogLevel(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2710

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setIntValue(II)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLogLevel:I

    .line 11
    .line 12
    return-void
.end method

.method public setPortraitService(Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;

    .line 17
    .line 18
    invoke-direct {v1, p0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setAppServer(Lcom/bytedance/vcloud/strategy/IAppService;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mPortraitService:Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public setStringValue(ILjava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0xc350

    .line 2
    .line 3
    .line 4
    if-le p1, v0, :cond_2

    .line 5
    .line 6
    const v0, 0xea60

    .line 7
    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->isLoadLibrarySucceed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->setStringValue(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mJsonStringMap:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public setSupplier(Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSupplier:Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;

    .line 2
    .line 3
    return-void
.end method

.method public speedInfoUpdate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "VCStrategy"

    .line 7
    .line 8
    const-string/jumbo v1, "speed info update"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedInfoUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mSpeedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public start(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->internalStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    const-string v0, "VCStrategy"

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    return-void

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
