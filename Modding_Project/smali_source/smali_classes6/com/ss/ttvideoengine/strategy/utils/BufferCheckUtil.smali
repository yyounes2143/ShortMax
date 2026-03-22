.class public Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;
.super Ljava/lang/Object;
.source "BufferCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Strategy CheckUtil"


# instance fields
.field private mEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mInternal:I

.field private mListener:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mInternal:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->checkBuffer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkBuffer()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isReleased()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x3e

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/16 v3, 0x3d

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->isCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;J)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getVideoID()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mListener:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;->onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    iget-object v3, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mListener:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    invoke-interface {v3, v0, v1, v2}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;->onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void

    .line 55
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->stop()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mEngine:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 12
    .line 13
    return-object v0
.end method

.method public static instance()Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$Holder;->access$100()Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private isCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;J)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->isMdlCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getDuration()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCurrentPlaybackTime()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    int-to-long v2, p1

    .line 20
    add-long/2addr p2, v2

    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    .line 23
    add-long/2addr p2, v2

    .line 24
    int-to-long v2, v0

    .line 25
    cmp-long p1, p2, v2

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method private isMdlCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheKeys()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-wide v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 42
    .line 43
    iget-wide v5, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 44
    .line 45
    cmp-long v2, v3, v5

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    :cond_3
    move v1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return v1

    .line 52
    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public setInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mInternal:I

    .line 2
    .line 3
    return-void
.end method

.method public start(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->stop()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Strategy CheckUtil"

    .line 8
    .line 9
    const-string/jumbo v1, "start"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mEngine:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mListener:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-direct {v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    new-instance v2, Lcom/ss/ttvideoengine/strategy/utils/a;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/strategy/utils/a;-><init>(Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mInternal:I

    .line 38
    .line 39
    int-to-long v5, p1

    .line 40
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Strategy CheckUtil"

    .line 7
    .line 8
    const-string/jumbo v2, "stop"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->mEngine:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    return-void
.end method
