.class public final Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;
.super Ljava/lang/Object;
.source "Ad2PayPresent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAd2PayPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,392:1\n1863#2,2:393\n295#2,2:395\n47#3,4:397\n47#3,4:401\n*S KotlinDebug\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n*L\n231#1:393,2\n332#1:395,2\n59#1:397,4\n75#1:401,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile c:Z

.field private static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 7
    .line 8
    new-instance v1, Lqf/a;

    .line 9
    .line 10
    invoke-direct {v1}, Lqf/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->d:Lms/i;

    .line 18
    .line 19
    new-instance v1, Lqf/b;

    .line 20
    .line 21
    invoke-direct {v1}, Lqf/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->e:Lms/i;

    .line 29
    .line 30
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
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

.method private final B(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0, p2}, Lud/b;->t2(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final C()Lgt/g0;
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
    new-instance v2, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$a;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$a;-><init>(Lgt/d0$b;)V

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

.method private static final D()Lgt/g0;
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
    new-instance v2, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$b;-><init>(Lgt/d0$b;)V

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

.method public static synthetic a()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->C()Lgt/g0;

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->D()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method private final f(Ljava/util/List;ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getInterval()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getCycle()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    mul-int v6, v4, v5

    .line 33
    .line 34
    add-int/2addr v6, v1

    .line 35
    if-le p2, v6, :cond_1

    .line 36
    .line 37
    move v1, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sub-int p1, p2, v1

    .line 40
    .line 41
    if-gtz p1, :cond_2

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_2
    rem-int v1, p1, v4

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    move v1, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move v1, v0

    .line 52
    :goto_1
    div-int/2addr p1, v4

    .line 53
    if-gt v6, p1, :cond_4

    .line 54
    .line 55
    if-gt p1, v5, :cond_4

    .line 56
    .line 57
    move v0, v6

    .line 58
    :cond_4
    if-eqz v1, :cond_5

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 63
    .line 64
    invoke-direct {p1, p3, p2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->n(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_5
    return-object v3
.end method

.method private final g(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;->getScene()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v2, v1

    .line 37
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;->getConfig()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    return-object v1
.end method

.method private final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            ">;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "watchDrama"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->g(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private final i()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 1

    .line 1
    const-string/jumbo v0, "watchDramaGroupB"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->g(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0
.end method

.method private final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            ">;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "taskCenter"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->g(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private final n(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lud/b;->f2(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private final o()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->d:Lms/i;

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

.method private final p()Ljava/lang/String;
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
    return-object v0
.end method

.method private final q()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v1

    .line 20
    :goto_1
    xor-int/2addr v0, v1

    .line 21
    return v0
.end method

.method private final r()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->i()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private final s()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->j()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v1

    .line 20
    :goto_1
    xor-int/2addr v0, v1

    .line 21
    return v0
.end method


# virtual methods
.method public final A(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onReachedShowAd2PayDialog"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onNotReachedShowAd2PayDialog"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->t()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    const/4 v3, 0x1

    .line 25
    if-lez v2, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, v3, :cond_1

    .line 34
    .line 35
    move p1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p1, v1

    .line 38
    :goto_1
    if-eqz p1, :cond_2

    .line 39
    .line 40
    move p1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move p1, v1

    .line 43
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->k()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getCycle()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v4, v1

    .line 55
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->l()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    move v6, v3

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move v6, v1

    .line 64
    :goto_4
    if-eqz p1, :cond_5

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    if-ge v5, v4, :cond_5

    .line 69
    .line 70
    move v1, v3

    .line 71
    :cond_5
    const-string p1, "A"

    .line 72
    .line 73
    if-eqz v6, :cond_6

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lkotlin/Unit;

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    if-eqz v1, :cond_7

    .line 85
    .line 86
    const-string p1, "B"

    .line 87
    .line 88
    invoke-interface {p2, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lkotlin/Unit;

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_7
    if-eqz v6, :cond_8

    .line 96
    .line 97
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lkotlin/Unit;

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lkotlin/Unit;

    .line 109
    .line 110
    :goto_5
    return-void
.end method

.method public final k()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->i()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final l()I
    .locals 3

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const-string v1, "B"

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lud/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final m(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lud/b;->a:Lud/b;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Lud/b;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->v()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->h()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "A"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->m(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {p0, v0, v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->f(Ljava/util/List;ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final u()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->s()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->j()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "C"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->m(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {p0, v0, v2, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->f(Ljava/util/List;ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final v()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->g:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x1388

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->f:Lkotlinx/coroutines/r;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sput-boolean v1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->c:Z

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->o()Lgt/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v6, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;-><init>(Lrs/c;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->f:Lkotlinx/coroutines/r;

    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->l()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    const-string v3, "B"

    .line 14
    .line 15
    invoke-virtual {v2, v3, v0, v1}, Lud/b;->r2(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    const-string v0, "A"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->m(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->B(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final y(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->p()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1, p2}, Lud/b;->s2(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    const-string v0, "C"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->m(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->B(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
