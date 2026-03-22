.class public Lcom/ss/ttvideoengine/VideoInfoCollector;
.super Ljava/lang/Object;
.source "VideoInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;,
        Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorUnregister;,
        Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoInfoCollecor"

.field private static final ourInstance:Lcom/ss/ttvideoengine/VideoInfoCollector;


# instance fields
.field private final mActiveEngines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPlayConsumedSize:J

.field private mWastedDataSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/VideoInfoCollector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/VideoInfoCollector;->ourInstance:Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mWastedDataSize:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mPlayConsumedSize:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 16
    .line 17
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/VideoInfoCollector;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoInfoCollector;->ourInstance:Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPlayConsumedSize(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mPlayConsumedSize:J

    .line 9
    .line 10
    add-long/2addr v0, p1

    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mPlayConsumedSize:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void
.end method

.method public declared-synchronized getPlayConsumedSize()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mPlayConsumedSize:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mPlayConsumedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public declared-synchronized getPlayWastDataSize()J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mWastedDataSize:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mWastedDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    :try_start_1
    iget-object v4, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v6, 0x51

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    cmp-long v7, v5, v2

    .line 46
    .line 47
    if-lez v7, :cond_0

    .line 48
    .line 49
    add-long/2addr v0, v5

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :try_start_2
    const-string v2, "VideoInfoCollecor"

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v4, "get play waste data size: "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-wide v0

    .line 77
    :catch_0
    monitor-exit p0

    .line 78
    return-wide v0

    .line 79
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    throw v0
.end method

.method public declared-synchronized registEngine(JLcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p3, "VideoInfoCollecor"

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "new engine: "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1
.end method

.method public declared-synchronized unregistEngine(J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_0
    const/16 v1, 0x51

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    cmp-long v2, v0, v2

    .line 45
    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mWastedDataSize:J

    .line 49
    .line 50
    add-long/2addr v2, v0

    .line 51
    iput-wide v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mWastedDataSize:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector;->mActiveEngines:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v2, "VideoInfoCollecor"

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "delete engine: "

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, ", waste data: "

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw p1

    .line 98
    :catch_0
    :cond_2
    :goto_2
    monitor-exit p0

    .line 99
    return-void
.end method
