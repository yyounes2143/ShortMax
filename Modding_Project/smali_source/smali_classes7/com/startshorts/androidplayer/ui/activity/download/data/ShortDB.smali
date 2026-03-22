.class public final Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;
.super Ljava/lang/Object;
.source "ShortDB.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;

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

.method private final d()Z
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
.method public final a(Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$clearAll$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$clearAll$2;-><init>(Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    sget-object p1, Lwh/o;->a:Lwh/o;

    .line 32
    .line 33
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 34
    .line 35
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lwh/o;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;->e()Lwh/j;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lwh/j;->a()V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method

.method public final b(Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->d()Z

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$getAllShortTasks$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$getAllShortTasks$2;-><init>(Lrs/c;)V

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
    sget-object p1, Lwh/o;->a:Lwh/o;

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
    invoke-virtual {p1, v0}, Lwh/o;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;->e()Lwh/j;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lwh/j;->c()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final c(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->d()Z

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
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$insert$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB$insert$1;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Lrs/c;)V

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
    sget-object v0, Lwh/o;->a:Lwh/o;

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
    invoke-virtual {v0, v1}, Lwh/o;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB;->e()Lwh/j;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lwh/j;->b(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
