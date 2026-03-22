.class public final Lcom/ss/ttvideoengine/TTVideoEnginePool;
.super Ljava/lang/Object;
.source "TTVideoEnginePool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEnginePool"

.field private static volatile instance:Lcom/ss/ttvideoengine/TTVideoEnginePool;


# instance fields
.field public final CORE_POOL_SIZE_UPPER_LIMIT:I

.field private corePool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

.field private refreshingEnginesCount:I

.field private resetingEngines:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private weakHashOfEngineInUse:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->CORE_POOL_SIZE_UPPER_LIMIT:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 28
    .line 29
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    .line 30
    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/TTVideoEnginePool;
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->instance:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/TTVideoEnginePool;->instance:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/TTVideoEnginePool;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/TTVideoEnginePool;->instance:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 18
    .line 19
    const-string v1, "TTVideoEnginePool"

    .line 20
    .line 21
    const-string v2, "Construct TTVideoEnginePool"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->instance:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public declared-synchronized doReleaseCoreEnginesAndCodecAsync()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_4

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, ""

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v1, "can not close codecpool because corePool is null"

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    const-string v1, "do not close codecpool because weakHashOfEngineInUse is not Empty!"

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    if-eqz v2, :cond_3

    .line 73
    .line 74
    const/16 v1, 0x3d9

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v2, v1, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 78
    .line 79
    .line 80
    const-string v1, "do close codecpool!"

    .line 81
    .line 82
    :cond_3
    :goto_2
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->release()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_3
    const-string v2, "TTVideoEnginePool"

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "releaseCoreEnginesAndCodecAsync finished, corePool.size:"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, " -> 0, "

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :cond_5
    :goto_4
    :try_start_1
    const-string v0, "TTVideoEnginePool"

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "releaseCoreEnginesAndCodecAsync thread enters wait mode. Current resetingEngines.size = "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ", refreshingEnginesCount = "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    throw v0
.end method

.method public getEngine(Landroid/content/Context;I)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEnginePool;->getEngine(Landroid/content/Context;ILjava/util/Map;)Lcom/ss/ttvideoengine/TTVideoEngine;

    move-result-object p1

    return-object p1
.end method

.method public getEngine(Landroid/content/Context;ILjava/util/Map;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 4

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    invoke-direct {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    .line 3
    const-string p1, "TTVideoEnginePool"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEngine finished, Engine:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,Type is :"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , do not manage in Enginepool! "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    const-string v0, "params is null, "

    if-eqz p3, :cond_1

    .line 5
    const-string v0, "params is not null, "

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 9
    iget v3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x4b5

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngine;->refreshEnginePara(Landroid/content/Context;ILjava/util/Map;)V

    .line 12
    const-string p1, "get existing from EnginePool"

    invoke-virtual {v2, v3, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStringOption(ILjava/lang/String;)V

    .line 13
    const-string p1, "get an existing Engine from corePool"

    goto :goto_0

    .line 14
    :cond_2
    new-instance v2, Lcom/ss/ttvideoengine/TTVideoEngine;

    invoke-direct {v2, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    .line 15
    const-string p1, "new by EnginePool"

    invoke-virtual {v2, v3, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStringOption(ILjava/lang/String;)V

    .line 16
    const-string p1, "create a new Engine by TTVideoEnginePool"

    .line 17
    :goto_0
    monitor-enter p0

    .line 18
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    .line 20
    iget p3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->refreshingEnginesCount:I

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    iget-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    const/16 v3, 0x4b6

    .line 25
    invoke-virtual {v2, v3, p3}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    const/16 p3, 0x4b7

    .line 26
    invoke-virtual {v2, p3, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    const/16 p3, 0x4b8

    .line 27
    invoke-virtual {v2, p3, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 28
    const-string p3, "TTVideoEnginePool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEngine finished, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Engine:  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", corePool.size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", countOfEngineInUse:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 32
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getIntStatus(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :goto_0
    return p1
.end method

.method public giveBackEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isPlayerType(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "TTVideoEnginePool"

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "giveBackEngine , Engine:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " released directly, do not manage in Enginepool! "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->release()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string v0, "TTVideoEnginePool"

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "giveBackEngine Enter\uff0c Engine:"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 71
    .line 72
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    const/16 v0, 0x39

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIntOption(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v1, 0x5

    .line 93
    if-eq v1, v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 96
    .line 97
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->resetByPoolSyncPart()V

    .line 102
    .line 103
    .line 104
    const-string v0, "TTVideoEnginePool"

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "giveBackEngine\uff0cbefore engine.resetByPoolEngine:"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->resetByPool()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    :try_start_1
    const-string v0, "TTVideoEnginePool"

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "giveBackEngine got canceled! because the engine has already been giveback before! Engine:"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 156
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    throw p1
.end method

.method public releaseCoreEngines()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->release()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v1, "TTVideoEnginePool"

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "releaseCoreEngines finished, corePool.size:"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " -> 0"

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0
.end method

.method public releaseCoreEnginesAndCodecAsync()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/q;-><init>(Lcom/ss/ttvideoengine/TTVideoEnginePool;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public resetFinish(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 4

    .line 1
    const-string v0, "TTVideoEnginePool"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "giveBackEngine resetFinish Enter, Engine:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", curLooper:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", corePool.size = "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x1

    .line 63
    if-ge v0, v1, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const-string v0, "TTVideoEnginePool"

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "giveBackEngine Engine:"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " give back to corePool"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_0
    const-string v0, "TTVideoEnginePool"

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "giveBackEngine Engine:"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, " , Warning:give back to corePool failed!"

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v2, :cond_2

    .line 134
    .line 135
    const-string v0, "TTVideoEnginePool"

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "giveBackEngine Engine:"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, " need release"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->release()V

    .line 163
    .line 164
    .line 165
    const-string v0, "TTVideoEnginePool"

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "giveBackEngine Engine:"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " released by TTVideoEnginePool"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_2
    monitor-enter p0

    .line 193
    :try_start_1
    const-string v0, "TTVideoEnginePool"

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v2, "giveBackEngine Engine:"

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, " remove..."

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->weakHashOfEngineInUse:Ljava/util/WeakHashMap;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->resetingEngines:Ljava/util/Set;

    .line 232
    .line 233
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 237
    .line 238
    .line 239
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    const-string v1, "TTVideoEnginePool"

    .line 241
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v3, "giveBackEngine resetFinish End, Engine:"

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p1, ", corePool.size = "

    .line 256
    .line 257
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePool:Ljava/util/Queue;

    .line 261
    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string p1, ", countOfEngineInUse:"

    .line 270
    .line 271
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :catchall_1
    move-exception p1

    .line 286
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    throw p1

    .line 288
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    throw p1
.end method

.method public setCorePoolSizeUpperLimit(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEnginePool;->corePoolSizeUpperLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "setCorePoolSizeUpperLimit, size:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "TTVideoEnginePool"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
