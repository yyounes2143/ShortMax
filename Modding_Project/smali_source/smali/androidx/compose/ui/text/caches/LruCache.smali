.class public Landroidx/compose/ui/text/caches/LruCache;
.super Ljava/lang/Object;
.source "LruCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final keySet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private final monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x3f400000    # 0.75f

    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "maxSize <= 0"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public static final synthetic access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    return-object p0
.end method

.method private final safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/caches/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "Negative size: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x3d

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final createCount()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/caches/LruCache;->trimToSize(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final evictionCount()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/compose/ui/text/caches/LruCache;->hitCount:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Landroidx/compose/ui/text/caches/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :try_start_1
    iget v2, p0, Landroidx/compose/ui/text/caches/LruCache;->missCount:I

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    iput v2, p0, Landroidx/compose/ui/text/caches/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_2
    iget v3, p0, Landroidx/compose/ui/text/caches/LruCache;->createCount:I

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    iput v3, p0, Landroidx/compose/ui/text/caches/LruCache;->createCount:I

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-object v1, v3

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/caches/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    add-int/2addr v3, v4

    .line 92
    iput v3, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I

    .line 93
    .line 94
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    monitor-exit v2

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/compose/ui/text/caches/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_3
    iget p1, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/LruCache;->trimToSize(I)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :goto_1
    monitor-exit v2

    .line 111
    throw p1

    .line 112
    :goto_2
    monitor-exit v0

    .line 113
    throw p1
.end method

.method public final hitCount()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final maxSize()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final missCount()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->putCount:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p0, Landroidx/compose/ui/text/caches/LruCache;->putCount:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/caches/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v1, v2

    .line 23
    iput v1, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/text/caches/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    iput v2, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/compose/ui/text/caches/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget p1, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/LruCache;->trimToSize(I)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :goto_1
    monitor-exit v0

    .line 79
    throw p1

    .line 80
    :cond_3
    const/4 p1, 0x0

    .line 81
    throw p1
.end method

.method public final putCount()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/text/caches/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    iput v2, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/compose/ui/text/caches/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-object v1

    .line 45
    :goto_1
    monitor-exit v0

    .line 46
    throw p1
.end method

.method public resize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput p1, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I

    .line 7
    .line 8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/LruCache;->trimToSize(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1

    .line 18
    :cond_0
    const-string p1, "maxSize <= 0"

    .line 19
    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final size()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final snapshot()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw v1
.end method

.method public final synchronizedValue$ui_text_release(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/text/caches/LruCache;->access$getMonitor$p(Landroidx/compose/ui/text/caches/LruCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/compose/ui/text/caches/LruCache;->hitCount:I

    .line 5
    .line 6
    iget v2, p0, Landroidx/compose/ui/text/caches/LruCache;->missCount:I

    .line 7
    .line 8
    add-int/2addr v2, v1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v1, v1, 0x64

    .line 12
    .line 13
    div-int/2addr v1, v2

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "LruCache[maxSize="

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v3, p0, Landroidx/compose/ui/text/caches/LruCache;->maxSize:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ",hits="

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Landroidx/compose/ui/text/caches/LruCache;->hitCount:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ",misses="

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v3, p0, Landroidx/compose/ui/text/caches/LruCache;->missCount:I

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, ",hitRate="

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "%]"

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    .line 71
    return-object v1

    .line 72
    :goto_1
    monitor-exit v0

    .line 73
    throw v1
.end method

.method public trimToSize(I)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/caches/LruCache;->monitor:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-le v1, p1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v4, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/compose/ui/text/caches/LruCache;->map:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Landroidx/compose/ui/text/caches/LruCache;->keySet:Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v5, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/LruCache;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v1, v4}, Landroidx/compose/ui/text/caches/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    sub-int/2addr v5, v6

    .line 105
    iput v5, p0, Landroidx/compose/ui/text/caches/LruCache;->size:I

    .line 106
    .line 107
    iget v5, p0, Landroidx/compose/ui/text/caches/LruCache;->evictionCount:I

    .line 108
    .line 109
    add-int/2addr v5, v2

    .line 110
    iput v5, p0, Landroidx/compose/ui/text/caches/LruCache;->evictionCount:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "inconsistent state"

    .line 116
    .line 117
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_2
    move-object v1, v3

    .line 122
    move-object v4, v1

    .line 123
    :goto_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    monitor-exit v0

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    if-nez v4, :cond_3

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2, v1, v4, v3}, Landroidx/compose/ui/text/caches/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v1, "map/keySet size inconsistency"

    .line 145
    .line 146
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_3
    monitor-exit v0

    .line 151
    throw p1
.end method
