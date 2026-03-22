.class public final Lcom/moloco/sdk/publisher/Moloco;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/moloco/sdk/publisher/Moloco;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final adCreator$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final bidTokenHandler$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static initJob:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final initializationHandler$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/publisher/Moloco;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/Moloco;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/publisher/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/publisher/Moloco;->initializationHandler$delegate:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/publisher/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/publisher/Moloco;->bidTokenHandler$delegate:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/publisher/e;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/e;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/publisher/Moloco;->adCreator$delegate:Lms/i;

    .line 40
    .line 41
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    sput v0, Lcom/moloco/sdk/publisher/Moloco;->$stable:I

    .line 58
    .line 59
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

.method public static synthetic a()Lcom/moloco/sdk/internal/publisher/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->adCreator_delegate$lambda$6()Lcom/moloco/sdk/internal/publisher/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getAdCreator(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/publisher/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/publisher/Moloco;->getAdCreator()Lcom/moloco/sdk/internal/publisher/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getBidTokenHandler(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/services/bidtoken/k;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/publisher/Moloco;->getBidTokenHandler()Lcom/moloco/sdk/internal/services/bidtoken/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getInitializationHandler(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/publisher/v;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$initializeAndroidClientMetrics(Lcom/moloco/sdk/publisher/Moloco;Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/publisher/Moloco;->initializeAndroidClientMetrics(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$initializeILRD(Lcom/moloco/sdk/publisher/Moloco;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/publisher/Moloco;->initializeILRD()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$processInitConfigs(Lcom/moloco/sdk/publisher/Moloco;Lcom/moloco/sdk/Init$SDKInitResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/publisher/Moloco;->processInitConfigs(Lcom/moloco/sdk/Init$SDKInitResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateAndroidClientMetricsOnInitSuccess(Lcom/moloco/sdk/publisher/Moloco;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/publisher/Moloco;->updateAndroidClientMetricsOnInitSuccess(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final adCreator_delegate$lambda$6()Lcom/moloco/sdk/internal/publisher/b;
    .locals 10

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/b;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/v;->j()Lkt/i;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v9, Lcom/moloco/sdk/internal/publisher/x;

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    move-object v3, v9

    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/moloco/sdk/internal/publisher/x;-><init>(Ljava/util/Map;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/moloco/sdk/publisher/Moloco$adCreator$2$1;

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/moloco/sdk/publisher/Moloco$adCreator$2$1;-><init>(Lrs/c;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v9, v3}, Lcom/moloco/sdk/internal/publisher/b;-><init>(Lkt/i;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/publisher/x;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static synthetic b()Lcom/moloco/sdk/internal/publisher/v;
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->initializationHandler_delegate$lambda$4()Lcom/moloco/sdk/internal/publisher/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final bidTokenHandler_delegate$lambda$5()Lcom/moloco/sdk/internal/services/bidtoken/i;
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/i;

    .line 2
    .line 3
    invoke-static {}, Lcom/moloco/sdk/internal/services/bidtoken/q;->a()Lcom/moloco/sdk/internal/services/bidtoken/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/services/bidtoken/i;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/o;Lcom/moloco/sdk/internal/publisher/v;Lcom/moloco/sdk/internal/services/j;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static synthetic c()Lcom/moloco/sdk/internal/services/bidtoken/i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->bidTokenHandler_delegate$lambda$5()Lcom/moloco/sdk/internal/services/bidtoken/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final createBanner(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/Banner;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating banner async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createBanner$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createBanner$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createBanner$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createBanner(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final createBannerTablet(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/Banner;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating banner tablet async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createBannerTablet$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createBannerTablet(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final createInterstitial(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/InterstitialAd;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating interstitial ad for mediation async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createInterstitial$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createInterstitial$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createInterstitial$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createInterstitial(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final createMREC(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/Banner;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating banner MREC async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createMREC$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createMREC$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createMREC$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createMREC(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final createNativeAd(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/NativeAd;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating native ad for mediation async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createNativeAd$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createNativeAd$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createNativeAd$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createNativeAd(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final createRewardedInterstitial(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "mediationInfo"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "adUnitId"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "callback"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "[Thread id: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", name: "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "] Creating rewarded ad for mediation async for adUnitId: "

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/16 v10, 0xc

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v6, "Moloco"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v12, Lcom/moloco/sdk/publisher/Moloco;->scope:Lgt/g0;

    .line 84
    .line 85
    new-instance v15, Lcom/moloco/sdk/publisher/Moloco$createRewardedInterstitial$1;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v0, v15

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createRewardedInterstitial$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    const/16 v16, 0x3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v12 .. v17}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static synthetic createRewardedInterstitial$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/Moloco;->createRewardedInterstitial(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final getAdCreator()Lcom/moloco/sdk/internal/publisher/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->adCreator$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/publisher/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final getBidRequestEndpoint()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/v;->k()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getAdServerUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "http://"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "https://"

    .line 31
    .line 32
    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    :goto_0
    return-object v0

    .line 55
    :cond_2
    return-object v1
.end method

.method public static synthetic getBidRequestEndpoint$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getBidToken(Lcom/moloco/sdk/publisher/MediationInfo;Landroid/content/Context;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;)V
    .locals 8
    .param p0    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MolocoBidTokenListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mediationInfo"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/moloco/sdk/internal/android_context/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "[Thread id: "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", name: "

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "] Fetching bid token"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/16 v6, 0xc

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const-string v2, "Moloco"

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lcom/moloco/sdk/acm/recorder/a;->Companion:Lcom/moloco/sdk/acm/recorder/a$a;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Lcom/moloco/sdk/acm/recorder/a$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/acm/recorder/a;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Lcom/moloco/sdk/internal/scheduling/e;->a:Lcom/moloco/sdk/internal/scheduling/e;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/scheduling/e;->a()Lgt/g0;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v3, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    invoke-direct {v3, p0, p2, p1}, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;Lrs/c;)V

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x3

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private final getBidTokenHandler()Lcom/moloco/sdk/internal/services/bidtoken/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->bidTokenHandler$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/k;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getInitJob$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getInitParams$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    return-void
.end method

.method private final getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->initializationHandler$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/publisher/v;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initializationHandler_delegate$lambda$4()Lcom/moloco/sdk/internal/publisher/v;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/v;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/v;-><init>(Lcom/moloco/sdk/internal/services/j;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final initialize(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V
    .locals 2
    .param p0    # Lcom/moloco/sdk/publisher/init/MolocoInitParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initParam"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/moloco/sdk/publisher/Moloco;->initialize$default(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized initialize(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;)V
    .locals 9
    .param p0    # Lcom/moloco/sdk/publisher/init/MolocoInitParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/publisher/MolocoInitializationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/moloco/sdk/publisher/Moloco;

    monitor-enter v0

    :try_start_0
    const-string v1, "initParam"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    invoke-direct {v1, p0}, Lcom/moloco/sdk/publisher/Moloco;->logMolocoInfo(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V

    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 4
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/Moloco;->getAppKey$moloco_sdk_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const-string v2, "Moloco"

    const-string v3, "Already initialized. Returning and notifying listener"

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 7
    sget-object p0, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/v$a;->a()Lcom/moloco/sdk/publisher/MolocoInitStatus;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/moloco/sdk/internal/publisher/r0;->a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 8
    :cond_0
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const-string v2, "Moloco"

    const-string v3, "Already initialized but with different appKey. Returning error and notifying listener"

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 9
    sget-object p0, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    const-string v1, "Moloco SDK failed to initialize due to unexpected app key"

    invoke-virtual {p0, v1}, Lcom/moloco/sdk/internal/publisher/v$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/publisher/MolocoInitStatus;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/moloco/sdk/internal/publisher/r0;->a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 10
    :cond_2
    :try_start_1
    sget-object v1, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlinx/coroutines/r;->isActive()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const-string v2, "Moloco"

    const-string v3, "Init Job active with same appKey. Returning"

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_4
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const-string v2, "Moloco"

    const-string v3, "Init Job active with different appKey. Notifying listener and avoiding init"

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 14
    sget-object p0, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    const-string v1, "Moloco SDK failed to initialize due to unexpected app key"

    invoke-virtual {p0, v1}, Lcom/moloco/sdk/internal/publisher/v$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/publisher/MolocoInitStatus;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/moloco/sdk/internal/publisher/r0;->a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    .line 15
    :cond_6
    :try_start_2
    sput-object p0, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 16
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/moloco/sdk/internal/android_context/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 17
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    move-result-object v3

    new-instance v6, Lcom/moloco/sdk/publisher/Moloco$initialize$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/moloco/sdk/publisher/Moloco$initialize$1;-><init>(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lrs/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object p0

    sput-object p0, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    .line 18
    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Moloco SDK initialized with empty appKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static synthetic initialize$default(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/moloco/sdk/publisher/Moloco;->initialize(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final initializeAndroidClientMetrics(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V
    .locals 16

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/v;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    const/16 v6, 0xc

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "Moloco"

    .line 17
    .line 18
    const-string v3, "ACM cannot be initialized as Moloco SDK cannot be initialized"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/internal/configs/b;->a()Lcom/moloco/sdk/internal/configs/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 31
    .line 32
    new-instance v9, Lcom/moloco/sdk/acm/d;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/configs/a;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/configs/a;->a()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v6, v0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "AppKey"

    .line 56
    .line 57
    invoke-static {v2, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    sget-object v0, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/w;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v8, "AppBundle"

    .line 76
    .line 77
    invoke-static {v8, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/w;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v8, "AppVersion"

    .line 94
    .line 95
    invoke-static {v8, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    const-string v2, "SdkVersion"

    .line 100
    .line 101
    const-string v8, "4.0.0"

    .line 102
    .line 103
    invoke-static {v2, v8}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/i0;->i()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v8, "OS"

    .line 120
    .line 121
    invoke-static {v8, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->j()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v2, "osv"

    .line 138
    .line 139
    invoke-static {v2, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    filled-new-array/range {v10 .. v15}, [Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    move-object v2, v9

    .line 152
    invoke-direct/range {v2 .. v8}, Lcom/moloco/sdk/acm/d;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/util/Map;)V

    .line 153
    .line 154
    .line 155
    const/4 v0, 0x2

    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-static {v1, v9, v2, v0, v2}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->r(Lcom/moloco/sdk/acm/AndroidClientMetrics;Lcom/moloco/sdk/acm/d;Lcom/moloco/sdk/acm/a;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private final initializeILRD()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/v;->k()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    const/16 v6, 0xc

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "Moloco"

    .line 17
    .line 18
    const-string v3, "ILRD cannot be initialized as Moloco SDK is not initialized"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$b;->g()Lcom/moloco/sdk/internal/ilrd/g;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Lcom/moloco/sdk/internal/ilrd/g;->e(Lcom/moloco/sdk/Init$SDKInitResponse;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "ILRD initialization failed. "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/16 v6, 0xc

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v2, "Moloco"

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public static final isInitialized()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/v;->j()Lkt/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/moloco/sdk/publisher/Initialization;->SUCCESS:Lcom/moloco/sdk/publisher/Initialization;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static synthetic isInitialized$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final logMolocoInfo(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    const/16 v5, 0xc

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v1, "Moloco"

    .line 7
    .line 8
    const-string v2, "====================================="

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v0, v7

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "Moloco"

    .line 17
    .line 18
    const-string v2, "Moloco SDK initializing"

    .line 19
    .line 20
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "Moloco"

    .line 24
    .line 25
    const-string v2, "SDK Version: 4.0.0"

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "Mediation: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getMediationInfo()Lcom/moloco/sdk/publisher/MediationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v1, "Moloco"

    .line 56
    .line 57
    move-object v0, v7

    .line 58
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "isInitialized: "

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->isInitialized()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v1, "Moloco"

    .line 83
    .line 84
    move-object v0, v7

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "Moloco"

    .line 89
    .line 90
    const-string v2, "====================================="

    .line 91
    .line 92
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final processInitConfigs(Lcom/moloco/sdk/Init$SDKInitResponse;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->hasEventCollectionConfig()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getEventCollectionConfig()Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v2, "Moloco"

    .line 16
    .line 17
    const-string v3, "Init response has eventCollectionConfig"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, v7

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "Moloco"

    .line 25
    .line 26
    const-string v3, "eventCollectionConfig:"

    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "eventCollectionEnabled: "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getEventCollectionEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v2, "Moloco"

    .line 53
    .line 54
    move-object v1, v7

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "mrefCollectionEnabled: "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getMrefCollectionEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v2, "Moloco"

    .line 80
    .line 81
    move-object v1, v7

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "appFgUrl: "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getAppForegroundTrackingUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v2, "Moloco"

    .line 107
    .line 108
    move-object v1, v7

    .line 109
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "appBgUrl: "

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getAppBackgroundTrackingUrl()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v2, "Moloco"

    .line 134
    .line 135
    move-object v1, v7

    .line 136
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$k;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getEventCollectionEnabled()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getMrefCollectionEnabled()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getAppForegroundTrackingUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v5, "getAppForegroundTrackingUrl(...)"

    .line 158
    .line 159
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getAppBackgroundTrackingUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const-string v6, "getAppBackgroundTrackingUrl(...)"

    .line 167
    .line 168
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getEventCollectionEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$b;->e()Lcom/moloco/sdk/internal/services/r;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/r;->a()V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 191
    .line 192
    const/4 v5, 0x4

    .line 193
    const/4 v6, 0x0

    .line 194
    const-string v2, "Moloco"

    .line 195
    .line 196
    const-string v3, "Init response does not have eventCollectionConfig"

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lcom/moloco/sdk/service_locator/b$c;->a:Lcom/moloco/sdk/service_locator/b$c;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$c;->b()Lcom/moloco/sdk/internal/services/config/a;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/services/config/a;->a(Lcom/moloco/sdk/Init$SDKInitResponse;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private final updateAndroidClientMetricsOnInitSuccess(Lrs/c;)Ljava/lang/Object;
    .locals 6
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
    sget-object v0, Lcom/moloco/sdk/service_locator/b$c;->a:Lcom/moloco/sdk/service_locator/b$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$c;->b()Lcom/moloco/sdk/internal/services/config/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/moloco/sdk/internal/configs/b;->a()Lcom/moloco/sdk/internal/configs/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/moloco/sdk/internal/configs/a;

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Lcom/moloco/sdk/internal/services/config/a;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/moloco/sdk/internal/configs/a;

    .line 18
    .line 19
    sget-object v1, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 20
    .line 21
    new-instance v2, Lcom/moloco/sdk/acm/g;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/configs/a;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/configs/a;->a()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v4, v0

    .line 32
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v2, v3, v0}, Lcom/moloco/sdk/acm/g;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->x(Lcom/moloco/sdk/acm/g;Lrs/c;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-ne p1, v0, :cond_0

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method


# virtual methods
.method public final clearState$moloco_sdk_release(Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

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
    instance-of v0, p1, Lcom/moloco/sdk/publisher/Moloco$clearState$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->label:I

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
    iput v1, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/publisher/Moloco$clearState$1;-><init>(Lcom/moloco/sdk/publisher/Moloco;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object v2, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lcom/moloco/sdk/publisher/Moloco;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v6, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 66
    .line 67
    const/4 v10, 0x4

    .line 68
    const/4 v11, 0x0

    .line 69
    const-string v7, "Moloco"

    .line 70
    .line 71
    const-string v8, "clearState() unit testing function called"

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-static/range {v6 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sput-object v5, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 78
    .line 79
    sget-object p1, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iput-object p0, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput v4, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->label:I

    .line 86
    .line 87
    invoke-static {p1, v0}, Lkotlinx/coroutines/t;->g(Lkotlinx/coroutines/r;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v1, :cond_4

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_4
    move-object v2, p0

    .line 95
    :goto_1
    sput-object v5, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;

    .line 96
    .line 97
    invoke-direct {v2}, Lcom/moloco/sdk/publisher/Moloco;->getInitializationHandler()Lcom/moloco/sdk/internal/publisher/v;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object v5, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v3, v0, Lcom/moloco/sdk/publisher/Moloco$clearState$1;->label:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/publisher/v;->h(Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v1, :cond_5

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1
.end method

.method public final getAppKey$moloco_sdk_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getInitJob()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitParams()Lcom/moloco/sdk/publisher/init/MolocoInitParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setInitJob(Lkotlinx/coroutines/r;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/moloco/sdk/publisher/Moloco;->initJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-void
.end method

.method public final setInitParams(Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/publisher/init/MolocoInitParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/moloco/sdk/publisher/Moloco;->initParams:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 2
    .line 3
    return-void
.end method
