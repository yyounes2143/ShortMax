.class public final Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
.super Ljava/lang/Object;
.source "ImmersionJobsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$a;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;",
            "Lkotlinx/coroutines/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$a;

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
    new-instance v0, Lgf/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lgf/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->h()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :cond_0
    move-object v4, p4

    .line 10
    and-int/lit8 p4, p6, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const/4 p5, 0x0

    .line 15
    :cond_1
    move-object v5, p5

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-wide v2, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->d(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :cond_0
    move-object v4, p4

    .line 10
    and-int/lit8 p4, p6, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const/4 p5, 0x0

    .line 15
    :cond_1
    move-object v5, p5

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-wide v2, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->f(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final h()Ljava/util/concurrent/ConcurrentHashMap;
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


# virtual methods
.method public final b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ImmersionJobsManager"

    .line 2
    .line 3
    const-string v1, "jobType"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 9
    .line 10
    invoke-interface {v1}, Lms/i;->isInitialized()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 17
    .line 18
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lkotlinx/coroutines/r;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "cancelJob -> jobType("

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 p1, 0x29

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "cancelJob failed -> "

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "next(...)"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v1, Lkotlinx/coroutines/r;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 51
    .line 52
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "cancelJobs failed -> "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "ImmersionJobsManager"

    .line 86
    .line 87
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_2
    return-void
.end method

.method public final d(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;",
            "J",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "jobType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completeContext"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 20
    .line 21
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->f(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    iget-object p5, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 28
    .line 29
    invoke-interface {p5}, Lms/i;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    check-cast p5, Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance p5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "delay -> jobType("

    .line 46
    .line 47
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ") millis("

    .line 54
    .line 55
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, "ms)"

    .line 62
    .line 63
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "ImmersionJobsManager"

    .line 71
    .line 72
    invoke-virtual {p4, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;",
            "J",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "jobType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onTickContext"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 20
    .line 21
    const/16 v7, 0x8

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move-wide v2, p2

    .line 26
    move-object v4, p4

    .line 27
    move-object v5, p5

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->n(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    iget-object p5, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->a:Lms/i;

    .line 33
    .line 34
    invoke-interface {p5}, Lms/i;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    check-cast p5, Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {p5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    new-instance p5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "fixed -> jobType("

    .line 51
    .line 52
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, ") millis("

    .line 59
    .line 60
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, "ms)"

    .line 67
    .line 68
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "ImmersionJobsManager"

    .line 76
    .line 77
    invoke-virtual {p4, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
