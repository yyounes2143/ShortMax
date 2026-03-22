.class public final Lcom/startshorts/androidplayer/repo/immersion/a;
.super Ljava/lang/Object;
.source "ImmersionLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/immersion/a$a;,
        Lcom/startshorts/androidplayer/repo/immersion/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/repo/immersion/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/startshorts/androidplayer/repo/immersion/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/immersion/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/immersion/a;->g:Lcom/startshorts/androidplayer/repo/immersion/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxg/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lxg/j;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/a$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/repo/immersion/a$b;-><init>(Lcom/startshorts/androidplayer/repo/immersion/a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->c:Lcom/startshorts/androidplayer/repo/immersion/a$b;

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->e:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/immersion/a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final j(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 5
    .line 6
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, p1, :cond_0

    .line 53
    .line 54
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 55
    .line 56
    const-string v5, "ImmersionLocalDS"

    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v7, "removeShortsDetailCache -> shortsId("

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v7, 0x29

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v2, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 84
    .line 85
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v0

    .line 106
    throw p1
.end method


# virtual methods
.method public final b(Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "detail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->j(I)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    const-string v1, "ImmersionLocalDS"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "addShortsDetailCache -> shortsId("

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x29

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->b:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 50
    .line 51
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map;

    .line 56
    .line 57
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-wide/32 v4, 0x927c0

    .line 64
    .line 65
    .line 66
    add-long/2addr v2, v4

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0

    .line 80
    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 5
    .line 6
    invoke-interface {v1}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 13
    .line 14
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw v1
.end method

.method public final d()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/startshorts/androidplayer/repo/immersion/a$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->c:Lcom/startshorts/androidplayer/repo/immersion/a$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 5
    .line 6
    invoke-interface {v1}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :cond_0
    :try_start_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 22
    .line 23
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-ne v8, p1, :cond_1

    .line 70
    .line 71
    cmp-long v8, v3, v6

    .line 72
    .line 73
    if-gez v8, :cond_2

    .line 74
    .line 75
    move-object v2, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->a:Lms/i;

    .line 78
    .line 79
    invoke-interface {v5}, Lms/i;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    monitor-exit v0

    .line 99
    return-object v2

    .line 100
    :goto_2
    monitor-exit v0

    .line 101
    throw p1
.end method

.method public final k(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->d:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/immersion/a;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
