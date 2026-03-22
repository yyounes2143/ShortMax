.class public final Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;
.super Ljava/lang/Object;
.source "DownloadDB.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Luh/h0;->e()Lgt/g0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$clearAll$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$clearAll$1;-><init>(Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lwh/i;->a:Lwh/i;

    .line 26
    .line 27
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 28
    .line 29
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lwh/a;->a()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final b(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Luh/h0;->e()Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$delete$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$delete$1;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lwh/i;->a:Lwh/i;

    .line 31
    .line 32
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 33
    .line 34
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lwh/a;->b(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final c(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$deleteCancelData$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$deleteCancelData$2;-><init>(Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lwh/i;->a:Lwh/i;

    .line 23
    .line 24
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x6

    .line 39
    invoke-interface {p1, v0}, Lwh/a;->e(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final d(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$getAllTasks$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$getAllTasks$2;-><init>(Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lwh/i;->a:Lwh/i;

    .line 23
    .line 24
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lwh/a;->d()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Luh/h0;->e()Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$insert$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$insert$1;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lwh/i;->a:Lwh/i;

    .line 31
    .line 32
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 33
    .line 34
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lwh/a;->c(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "taskList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Luh/h0;->e()Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$insertAll$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB$insertAll$1;-><init>(Ljava/util/List;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lwh/i;->a:Lwh/i;

    .line 31
    .line 32
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 33
    .line 34
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lwh/i;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;->e()Lwh/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lwh/a;->f(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
