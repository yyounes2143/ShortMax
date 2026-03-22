.class public final Lcom/unity3d/services/core/domain/task/InitializeSDK;
.super Lcom/unity3d/services/core/domain/task/MetricTask;
.source "InitializeSDK.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/services/core/domain/task/MetricTask<",
        "Lcom/unity3d/services/core/domain/task/EmptyParams;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateComplete:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateConfig:Lcom/unity3d/services/core/domain/task/InitializeStateConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateCreate:Lcom/unity3d/services/core/domain/task/InitializeStateCreate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateError:Lcom/unity3d/services/core/domain/task/InitializeStateError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateLoadCache:Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateLoadWeb:Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeStateReset:Lcom/unity3d/services/core/domain/task/InitializeStateReset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/services/core/domain/task/InitializeStateReset;Lcom/unity3d/services/core/domain/task/InitializeStateError;Lcom/unity3d/services/core/domain/task/InitializeStateConfig;Lcom/unity3d/services/core/domain/task/InitializeStateCreate;Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;Lcom/unity3d/services/core/domain/task/InitializeStateComplete;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/services/core/domain/task/InitializeStateReset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/services/core/domain/task/InitializeStateError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/services/core/domain/task/InitializeStateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/services/core/domain/task/InitializeStateCreate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/services/core/domain/task/InitializeStateComplete;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "configFileFromLocalStorage"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initializeStateReset"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "initializeStateError"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "initializeStateConfig"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "initializeStateCreate"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "initializeStateLoadCache"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "initializeStateLoadWeb"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "initializeStateComplete"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/unity3d/services/core/domain/task/MetricTask;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateReset:Lcom/unity3d/services/core/domain/task/InitializeStateReset;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateError:Lcom/unity3d/services/core/domain/task/InitializeStateError;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateConfig:Lcom/unity3d/services/core/domain/task/InitializeStateConfig;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateCreate:Lcom/unity3d/services/core/domain/task/InitializeStateCreate;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateLoadCache:Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateLoadWeb:Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateComplete:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    .line 66
    .line 67
    return-void
.end method

.method public static final synthetic access$executeErrorState-BWLJW6A(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->executeErrorState-BWLJW6A(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getConfigFileFromLocalStorage$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateComplete$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateComplete;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateComplete:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateConfig$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateConfig:Lcom/unity3d/services/core/domain/task/InitializeStateConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateCreate$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateCreate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateCreate:Lcom/unity3d/services/core/domain/task/InitializeStateCreate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateLoadCache$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateLoadCache:Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateLoadWeb$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateLoadWeb:Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInitializeStateReset$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateReset;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateReset:Lcom/unity3d/services/core/domain/task/InitializeStateReset;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final executeErrorState-BWLJW6A(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/configuration/ErrorState;",
            "Ljava/lang/Throwable;",
            "Lcom/unity3d/services/core/configuration/Configuration;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;->label:I

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
    iput v1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;->label:I

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
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->initializeStateError:Lcom/unity3d/services/core/domain/task/InitializeStateError;

    .line 60
    .line 61
    new-instance v2, Lcom/unity3d/services/core/domain/task/InitializeStateError$Params;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/Exception;

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 p2, 0x0

    .line 73
    :goto_1
    invoke-direct {v4, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p1, v4, p3}, Lcom/unity3d/services/core/domain/task/InitializeStateError$Params;-><init>(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$executeErrorState$1;->label:I

    .line 80
    .line 81
    invoke-virtual {p4, v2, v0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    :goto_2
    return-object p1
.end method

.method private final handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/domain/task/InitializationException;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->label:I

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
    iput v1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    iget-object p1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast p2, Lkotlin/Result;

    .line 54
    .line 55
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializationException;->getErrorState()Lcom/unity3d/services/core/configuration/ErrorState;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializationException;->getOriginalException()Ljava/lang/Exception;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializationException;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iput-object p1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput v3, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$handleInitializationException$1;->label:I

    .line 77
    .line 78
    invoke-direct {p0, p2, v2, v4, v0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->executeErrorState-BWLJW6A(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-ne p2, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    :goto_1
    throw p1
.end method


# virtual methods
.method public bridge synthetic doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/unity3d/services/core/domain/task/EmptyParams;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/EmptyParams;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/EmptyParams;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/unity3d/services/core/domain/task/EmptyParams;
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
            "Lcom/unity3d/services/core/domain/task/EmptyParams;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of p1, p2, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;

    iget v0, p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;

    invoke-direct {p1, p0, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V

    :goto_0
    iget-object p2, p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget v1, p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    move-result-object p2

    new-instance v1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V

    iput v2, p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$1;->label:I

    invoke-static {p2, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "initialize"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/domain/task/MetricTask;->getMetricNameForInitializeTask(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
