.class public final Laf/g;
.super Ljava/lang/Object;
.source "FixedReportManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Laf/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laf/g;

    .line 2
    .line 3
    invoke-direct {v0}, Laf/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laf/g;->a:Laf/g;

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

.method public static synthetic a(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Laf/g;->c(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(I)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object p0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s(Lcom/startshorts/androidplayer/manager/event/EventManager;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 12

    .line 1
    sget-object v0, Laf/g;->b:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getFixedReportEvent()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    const-string v2, "FixedReportManager"

    .line 21
    .line 22
    const-string/jumbo v3, "start"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 29
    .line 30
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getFixedReportInterval()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    int-to-long v0, v0

    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    mul-long v5, v0, v2

    .line 42
    .line 43
    new-instance v8, Laf/f;

    .line 44
    .line 45
    invoke-direct {v8}, Laf/f;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v10, 0xa

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-static/range {v4 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->n(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Laf/g;->b:Lkotlinx/coroutines/r;

    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Laf/g;->b:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "FixedReportManager"

    .line 15
    .line 16
    const-string/jumbo v3, "stop"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sput-object v1, Laf/g;->b:Lkotlinx/coroutines/r;

    .line 23
    .line 24
    return-void
.end method
