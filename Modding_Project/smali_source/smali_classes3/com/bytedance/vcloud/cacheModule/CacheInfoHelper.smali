.class public Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;
.super Ljava/lang/Object;
.source "CacheInfoHelper.java"


# static fields
.field private static cacheInfoHelper:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;


# instance fields
.field private mCacheModuleInfoListener:Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

.field private final mListenerLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mCacheModuleInfoListener:Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mMainHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mListenerLock:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;-><init>(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mMainHandler:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;)Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mCacheModuleInfoListener:Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static getInstance()Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->cacheInfoHelper:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->cacheInfoHelper:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->cacheInfoHelper:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->cacheInfoHelper:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method onInfo(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mMainHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method setCacheModuleInfoListener(Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->mCacheModuleInfoListener:Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method
