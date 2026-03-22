.class public final Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
.super Ljava/lang/Object;
.source "AndroidGetWebViewContainerUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetWebViewContainerUseCase;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final androidWebViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;Lgt/c0;Lgt/c0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "androidWebViewClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sendWebViewClientErrorDiagnostics"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mainDispatcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "defaultDispatcher"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->context:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->androidWebViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->mainDispatcher:Lgt/c0;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->defaultDispatcher:Lgt/c0;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$getAndroidWebViewClient$p(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;)Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->androidWebViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->label:I

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
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lgt/g0;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    move-object v8, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->mainDispatcher:Lgt/c0;

    .line 63
    .line 64
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$webview$1;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v2, p0, v4}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$webview$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lrs/c;)V

    .line 68
    .line 69
    .line 70
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase$invoke$1;->label:I

    .line 75
    .line 76
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-ne p2, v1, :cond_3

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    move-object v0, p0

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    move-object v3, p2

    .line 86
    check-cast v3, Landroid/webkit/WebView;

    .line 87
    .line 88
    new-instance p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 89
    .line 90
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->androidWebViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    .line 91
    .line 92
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    .line 93
    .line 94
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->mainDispatcher:Lgt/c0;

    .line 95
    .line 96
    iget-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->defaultDispatcher:Lgt/c0;

    .line 97
    .line 98
    iget-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->context:Landroid/content/Context;

    .line 99
    .line 100
    move-object v2, p1

    .line 101
    invoke-direct/range {v2 .. v9}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;-><init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;Lgt/c0;Lgt/c0;Lgt/g0;Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method
