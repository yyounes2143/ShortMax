.class public final Lcom/ss/ttvideoengine/log/EngineInstanceHolder;
.super Ljava/lang/Object;
.source "EngineInstanceHolder.java"


# static fields
.field private static volatile sInstance:Lcom/ss/ttvideoengine/log/EngineInstanceHolder;


# instance fields
.field private mEngineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->mEngineMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/log/EngineInstanceHolder;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->sInstance:Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->sInstance:Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->sInstance:Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

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
    sget-object v0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->sInstance:Lcom/ss/ttvideoengine/log/EngineInstanceHolder;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public add(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->mEngineMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->mEngineMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->mEngineMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public remove(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/EngineInstanceHolder;->mEngineMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
