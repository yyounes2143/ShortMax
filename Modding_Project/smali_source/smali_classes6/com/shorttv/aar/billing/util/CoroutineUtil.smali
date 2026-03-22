.class public final Lcom/shorttv/aar/billing/util/CoroutineUtil;
.super Ljava/lang/Object;
.source "CoroutineUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,81:1\n47#2,4:82\n47#2,4:86\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n*L\n13#1:82,4\n17#1:86,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/shorttv/aar/billing/util/CoroutineUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/shorttv/aar/billing/util/CoroutineUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 7
    .line 8
    new-instance v0, Lcd/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcd/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcd/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lcd/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->c:Lms/i;

    .line 29
    .line 30
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
    invoke-static {}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->m()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->j(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Throwable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->n()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/shorttv/aar/billing/util/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->d(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static synthetic h(Lcom/shorttv/aar/billing/util/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->l()Lgt/g0;

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
    invoke-virtual/range {v0 .. v5}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->f(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic i(Lcom/shorttv/aar/billing/util/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->g(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final j(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Throwable;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, ") costTime("

    .line 2
    .line 3
    const-string v1, "executeTask("

    .line 4
    .line 5
    const-string v2, "CoroutineUtil"

    .line 6
    .line 7
    if-eqz p4, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcd/f;->c()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    sget-object p3, Lbd/b;->a:Lbd/b;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcd/f;->b()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "ms) failed -> "

    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p3, v2, p0}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcd/f;->c()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    sget-object p2, Lbd/b;->a:Lbd/b;

    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcd/f;->b()J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, "ms)"

    .line 99
    .line 100
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p2, v2, p0}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method

.method private final k()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->c:Lms/i;

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

.method private final l()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->b:Lms/i;

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

.method private static final m()Lgt/g0;
    .locals 3

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
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Lcom/shorttv/aar/billing/util/CoroutineUtil$a;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/shorttv/aar/billing/util/CoroutineUtil$a;-><init>(Lgt/d0$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static final n()Lgt/g0;
    .locals 3

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
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Lcom/shorttv/aar/billing/util/CoroutineUtil$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/shorttv/aar/billing/util/CoroutineUtil$b;-><init>(Lgt/d0$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method


# virtual methods
.method public final d(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
    .locals 3
    .param p3    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "completeContext"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p1, p2, v2}, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$1;-><init>(JLrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lkotlinx/coroutines/flow/c;->F(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$2;

    .line 30
    .line 31
    invoke-direct {p2, v0, p4, v2}, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->N(Lkt/b;Lat/n;)Lkt/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/c;->I(Lkt/b;Lkotlin/coroutines/CoroutineContext;)Lkt/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$3;

    .line 43
    .line 44
    invoke-direct {p2, v2}, Lcom/shorttv/aar/billing/util/CoroutineUtil$delay$3;-><init>(Lrs/c;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->i(Lkt/b;Lat/n;)Lkt/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->k()Lgt/g0;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lkotlinx/coroutines/r;

    .line 62
    .line 63
    return-object p1
.end method

.method public final f(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "taskName"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "task"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcd/f;

    .line 19
    .line 20
    invoke-direct {v0}, Lcd/f;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcd/f;->d()Lcd/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v1, p1

    .line 32
    move-object v4, p4

    .line 33
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p4, Lcd/e;

    .line 38
    .line 39
    invoke-direct {p4, v0, p2, p5, p3}, Lcd/e;-><init>(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p4}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final g(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
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
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "taskName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "task"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->l()Lgt/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v1, p0

    .line 22
    move-object v3, p1

    .line 23
    move v4, p2

    .line 24
    move-object v5, p3

    .line 25
    invoke-static/range {v1 .. v8}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->h(Lcom/shorttv/aar/billing/util/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
