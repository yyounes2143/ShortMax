.class public final Lcom/startshorts/androidplayer/utils/CoroutineUtil;
.super Ljava/lang/Object;
.source "CoroutineUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,212:1\n47#2,4:213\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil\n*L\n27#1:213,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lgt/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    sget-object v0, Lgt/d0;->D8:Lgt/d0$b;

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$a;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$a;-><init>(Lgt/d0$b;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->b:Lgt/d0;

    .line 16
    .line 17
    new-instance v0, Lfk/k;

    .line 18
    .line 19
    invoke-direct {v0}, Lfk/k;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->c:Lms/i;

    .line 27
    .line 28
    new-instance v0, Lfk/l;

    .line 29
    .line 30
    invoke-direct {v0}, Lfk/l;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d:Lms/i;

    .line 38
    .line 39
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

.method public static synthetic a()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->q()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->r()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->h(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->f(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static final h(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->p()Lgt/g0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, p6, 0x4

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    :cond_1
    move v3, p3

    .line 16
    and-int/lit8 p1, p6, 0x10

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/4 p5, 0x0

    .line 21
    :cond_2
    move-object v5, p5

    .line 22
    move-object v0, p0

    .line 23
    move-object v2, p2

    .line 24
    move-object v4, p4

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->i(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    move-object v3, p3

    .line 10
    and-int/lit8 p3, p6, 0x4

    .line 11
    .line 12
    const/4 p7, 0x0

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    move-object v4, p7

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v4, p4

    .line 18
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    move-object v5, p7

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move-object v5, p5

    .line 25
    :goto_1
    move-object v0, p0

    .line 26
    move-wide v1, p1

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->m(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private final p()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/g0;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final q()Lgt/g0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->b:Lgt/d0;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private static final r()Lgt/g0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->b:Lgt/d0;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static synthetic t(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    move v3, p3

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->s(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->F(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$2;

    .line 20
    .line 21
    invoke-direct {v0, p2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$2;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$3;

    .line 29
    .line 30
    invoke-direct {p2, p3, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$3;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->N(Lkt/b;Lat/n;)Lkt/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$4;

    .line 38
    .line 39
    invoke-direct {p2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$4;-><init>(Lrs/c;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->i(Lkt/b;Lat/n;)Lkt/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final e(JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
    .locals 7
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;-><init>(JJLrs/c;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v6}, Lkotlinx/coroutines/flow/c;->F(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$6;

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-direct {p2, p5, p3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$6;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$7;

    .line 33
    .line 34
    invoke-direct {p2, p6, p3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$7;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->N(Lkt/b;Lat/n;)Lkt/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$8;

    .line 42
    .line 43
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$8;-><init>(Lrs/c;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->i(Lkt/b;Lat/n;)Lkt/b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public final f(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
    .locals 15
    .param p3    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v4, p4

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v3, p3

    .line 12
    .line 13
    :goto_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lfk/m;

    .line 31
    .line 32
    invoke-direct {v0, v4}, Lfk/m;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    move-object v8, p0

    .line 36
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->v(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v8, p0

    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$delay$2;

    .line 46
    .line 47
    invoke-direct {v0, v4, v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$delay$2;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    move-object v2, v3

    .line 54
    move-object v3, v4

    .line 55
    move-object v4, v0

    .line 56
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v7

    .line 60
    :cond_2
    move-object v8, p0

    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    new-instance v12, Lcom/startshorts/androidplayer/utils/CoroutineUtil$delay$3;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v0, v12

    .line 73
    move-wide/from16 v1, p1

    .line 74
    .line 75
    move-object/from16 v4, p4

    .line 76
    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$delay$3;-><init>(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 78
    .line 79
    .line 80
    const/4 v13, 0x2

    .line 81
    const/4 v14, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    invoke-static/range {v9 .. v14}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method

.method public final i(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
    .locals 9
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
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
            "Lgt/g0;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "taskName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "task"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lfk/p;

    .line 17
    .line 18
    invoke-direct {v0}, Lfk/p;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lfk/p;->d()Lfk/p;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v2, v0

    .line 29
    move-object v3, p4

    .line 30
    move v4, p3

    .line 31
    move-object v6, p2

    .line 32
    move-object v7, p5

    .line 33
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;-><init>(Lkotlin/jvm/functions/Function2;ZLfk/p;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    move-object v1, p1

    .line 41
    move-object v4, v0

    .line 42
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public final j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "taskName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "task"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->p()Lgt/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v7, 0x10

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move-object v3, p1

    .line 21
    move v4, p2

    .line 22
    move-object v5, p3

    .line 23
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final m(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
    .locals 2
    .param p3    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "onTickContext"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, p2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;-><init>(JLrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->F(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$2;

    .line 25
    .line 26
    invoke-direct {p2, p4, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$2;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$3;

    .line 38
    .line 39
    invoke-direct {p2, p5, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$3;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->i(Lkt/b;Lat/n;)Lkt/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final o()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/g0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
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
    instance-of v0, p5, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;-><init>(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p3, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->j:Z

    .line 39
    .line 40
    iget-object p1, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lfk/p;

    .line 43
    .line 44
    iget-object p2, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance p5, Lfk/p;

    .line 64
    .line 65
    invoke-direct {p5}, Lfk/p;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5}, Lfk/p;->d()Lfk/p;

    .line 69
    .line 70
    .line 71
    move-result-object p5

    .line 72
    iput-object p2, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->h:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object p5, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->i:Ljava/lang/Object;

    .line 75
    .line 76
    iput-boolean p3, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->j:Z

    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$innerTask$1;->m:I

    .line 79
    .line 80
    invoke-interface {p4, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    move-object p1, p5

    .line 88
    :goto_1
    if-nez p3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1}, Lfk/p;->c()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-nez p3, :cond_4

    .line 95
    .line 96
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 97
    .line 98
    new-instance p4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p5, "innerTask("

    .line 104
    .line 105
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, ") costTime("

    .line 112
    .line 113
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lfk/p;->b()J

    .line 117
    .line 118
    .line 119
    move-result-wide p1

    .line 120
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, "ms)"

    .line 124
    .line 125
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "CoroutineUtil"

    .line 133
    .line 134
    invoke-virtual {p3, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p1
.end method

.method public final u(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
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
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgt/j1;->m()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$runOnMain$2;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$runOnMain$2;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-ne p1, p2, :cond_0

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

.method public final v(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
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
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lgt/j1;->m()Lgt/j1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil$runOnUiThread$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$runOnUiThread$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
