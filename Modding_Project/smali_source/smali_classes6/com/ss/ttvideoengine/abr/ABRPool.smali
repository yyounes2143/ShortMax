.class public Lcom/ss/ttvideoengine/abr/ABRPool;
.super Ljava/lang/Object;
.source "ABRPool.java"


# static fields
.field private static final MAX_COUNT:I = 0x8

.field private static mEnabled:Z = false

.field private static singleton:Lcom/ss/ttvideoengine/abr/ABRPool;


# instance fields
.field private mCreated:I

.field private final mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IABRModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IABRModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mCreated:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method

.method public static clear()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lcom/ss/ttvideoengine/abr/ABRPool;->clearPool()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private clearPool()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 60
    .line 61
    invoke-interface {v2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->release()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/abr/ABRPool;->singleton:Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/abr/ABRPool;->singleton:Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/abr/ABRPool;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/abr/ABRPool;->singleton:Lcom/ss/ttvideoengine/abr/ABRPool;

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
    sget-object v0, Lcom/ss/ttvideoengine/abr/ABRPool;->singleton:Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 27
    .line 28
    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mEnabled:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getFromCache()Lcom/bytedance/vcloud/abrmodule/IABRModule;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/abr/ABRPool;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mCreated:I

    .line 32
    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    if-ge v0, v3, :cond_2

    .line 36
    .line 37
    new-instance v1, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;-><init>()V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mCreated:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mCreated:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x6

    .line 56
    if-lt v0, v3, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v1, v0

    .line 73
    check-cast v1, Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 74
    .line 75
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public getFromPreloaded(Ljava/lang/String;)Lcom/bytedance/vcloud/abrmodule/IABRModule;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/abr/ABRPool;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public giveBack(Lcom/bytedance/vcloud/abrmodule/IABRModule;)V
    .locals 1
    .param p1    # Lcom/bytedance/vcloud/abrmodule/IABRModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mListCache:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public preloadDone(Ljava/lang/String;Lcom/bytedance/vcloud/abrmodule/IABRModule;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/vcloud/abrmodule/IABRModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapCache:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mMapOrder:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttvideoengine/abr/ABRPool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
