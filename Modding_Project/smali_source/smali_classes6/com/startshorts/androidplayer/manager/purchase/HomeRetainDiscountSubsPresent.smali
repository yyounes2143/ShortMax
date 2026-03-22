.class public final Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;
.super Ljava/lang/Object;
.source "HomeRetainDiscountSubsPresent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeRetainDiscountSubsPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,119:1\n47#2,4:120\n47#2,4:124\n*S KotlinDebug\n*F\n+ 1 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n*L\n35#1:120,4\n52#1:124,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 7
    .line 8
    new-instance v0, Lqf/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lqf/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->e:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lqf/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lqf/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->f:Lms/i;

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->n()Lgt/g0;

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->m()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->f(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method private final f(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->d:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 2
    .line 3
    return-void
.end method

.method private final i()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->e:Lms/i;

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
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$a;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$a;-><init>(Lgt/d0$b;)V

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
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$b;-><init>(Lgt/d0$b;)V

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
.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->f(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final g()Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->d:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->i(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lud/b;->H0(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final j()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->f:Lms/i;

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

.method public final k()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->c:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sput-boolean v1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->b:Z

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->i()Lgt/g0;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v6, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;

    .line 22
    .line 23
    invoke-direct {v6, v2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;-><init>(Lrs/c;)V

    .line 24
    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->c:Lkotlinx/coroutines/r;

    .line 35
    .line 36
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->i(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lud/b;->H0(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Lud/b;->T3(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
