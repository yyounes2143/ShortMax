.class public final Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;
.super Ljava/lang/Object;
.source "ApiLimitManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->a:Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lgt/j1;->m()Lgt/j1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->c:Lgt/g0;

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->e:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    sput v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f:I

    .line 46
    .line 47
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

.method public static final synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->g(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(I)V
    .locals 0

    .line 1
    sput p0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final f()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private final g(Lrs/c;)Ljava/lang/Object;
    .locals 4
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

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager$incrementLaunchCount$2;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v0, v3}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager$incrementLaunchCount$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method


# virtual methods
.method public final e()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lud/a;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->d:Lkotlinx/coroutines/r;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    sget-object v3, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->c:Lgt/g0;

    .line 29
    .line 30
    new-instance v6, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager$checkShouldLimit$1;

    .line 31
    .line 32
    invoke-direct {v6, v1}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager$checkShouldLimit$1;-><init>(Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->d:Lkotlinx/coroutines/r;

    .line 44
    .line 45
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lud/b;->k1(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sput v1, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f:I

    .line 25
    .line 26
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->e:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->f:I

    .line 29
    .line 30
    const/16 v1, 0x1e

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method
