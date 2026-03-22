.class public final Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;
.super Ljava/lang/Object;
.source "OperativeEventObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final backgroundWorker:Lcom/unity3d/ads/core/domain/work/BackgroundWorker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isRunning:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final universalRequestDataSource:Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lgt/c0;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/work/BackgroundWorker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getUniversalRequestForPayLoad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "operativeEventRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "universalRequestDataSource"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "backgroundWorker"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->defaultDispatcher:Lgt/c0;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->universalRequestDataSource:Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->backgroundWorker:Lcom/unity3d/ads/core/domain/work/BackgroundWorker;

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->isRunning:Lkt/e;

    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic access$getBackgroundWorker$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/domain/work/BackgroundWorker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->backgroundWorker:Lcom/unity3d/ads/core/domain/work/BackgroundWorker;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDefaultDispatcher$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lgt/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->defaultDispatcher:Lgt/c0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOperativeEventRepository$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUniversalRequestDataSource$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->universalRequestDataSource:Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isRunning$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->isRunning:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final invoke(Lrs/c;)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->defaultDispatcher:Lgt/c0;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method
