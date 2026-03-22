.class public final Lcom/unity3d/ads/adplayer/CommonWebViewBridge;
.super Ljava/lang/Object;
.source "CommonWebViewBridge.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/WebViewBridge;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonWebViewBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n13579#2,2:166\n13579#2,2:173\n230#3,5:168\n230#3,5:176\n1#4:175\n*S KotlinDebug\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n*L\n45#1:166,2\n63#1:173,2\n57#1:168,5\n90#1:176,5\n*E\n"
    }
.end annotation


# instance fields
.field private final _onInvocation:Lkt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/d<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbacks:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/util/Set<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lgt/p<",
            "[",
            "Ljava/lang/Object;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onInvocation:Lkt/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/f<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 6
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/adplayer/WebViewContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "webViewContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adPlayerScope"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sendDiagnosticEvent"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 27
    .line 28
    invoke-static {p3, p1}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lgt/f0;

    .line 33
    .line 34
    const-string p3, "CommonWebViewBridge"

    .line 35
    .line 36
    invoke-direct {p2, p3}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->scope:Lgt/g0;

    .line 44
    .line 45
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->callbacks:Lkt/e;

    .line 54
    .line 55
    const/4 p1, 0x5

    .line 56
    const/4 p2, 0x0

    .line 57
    const/16 p3, 0x40

    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    invoke-static {p2, p3, p4, p1, p4}, Lkt/g;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkt/d;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->_onInvocation:Lkt/d;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->c(Lkt/d;)Lkt/f;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->onInvocation:Lkt/f;

    .line 71
    .line 72
    new-instance v3, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$1;

    .line 73
    .line 74
    invoke-direct {v3, p0, p4}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$1;-><init>(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Lrs/c;)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v1, 0x0

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static final synthetic access$execute(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->execute(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getWebViewContainer$p(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;)Lcom/unity3d/ads/adplayer/WebViewContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_onInvocation$p(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;)Lkt/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->_onInvocation:Lkt/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$respond(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->respond(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final execute(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/HandlerType;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "window.nativebridge."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/HandlerType;->getJsPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x28

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ");"

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1, p3}, Lcom/unity3d/ads/adplayer/WebViewContainer;->evaluateJavascript(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-ne p1, p2, :cond_0

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method

.method private final respond(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    new-instance p1, Lorg/json/JSONArray;

    .line 13
    .line 14
    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/unity3d/ads/adplayer/HandlerType;->CALLBACK:Lcom/unity3d/ads/adplayer/HandlerType;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 p3, 0x5b

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p3, 0x5d

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p0, p1, p2, p4}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->execute(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-ne p1, p2, :cond_0

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p1
.end method


# virtual methods
.method public getOnInvocation()Lkt/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/f<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->onInvocation:Lkt/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScope()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->scope:Lgt/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "callbackId"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "callbackStatus"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "rawParameters"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lorg/json/JSONArray;

    .line 25
    .line 26
    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Lcom/unity3d/ads/core/extensions/JSONArrayExtensionsKt;->toTypedArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->callbacks:Lkt/e;

    .line 34
    .line 35
    invoke-interface {v4}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Iterable;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move-object v6, v5

    .line 56
    check-cast v6, Lkotlin/Pair;

    .line 57
    .line 58
    invoke-virtual {v6}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v5, 0x0

    .line 72
    :goto_0
    check-cast v5, Lkotlin/Pair;

    .line 73
    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-virtual {v5}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lgt/p;

    .line 82
    .line 83
    const-string v4, "success"

    .line 84
    .line 85
    const-string v6, "error"

    .line 86
    .line 87
    filled-new-array {v4, v6}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    iget-object v8, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 102
    .line 103
    const/16 v15, 0x3e

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const-string v9, "old_callback_status"

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const v8, -0x6f4abffd

    .line 122
    .line 123
    .line 124
    if-eq v7, v8, :cond_8

    .line 125
    .line 126
    const/16 v4, 0x9dc

    .line 127
    .line 128
    if-eq v7, v4, :cond_7

    .line 129
    .line 130
    const v4, 0x3f2d9e8

    .line 131
    .line 132
    .line 133
    if-eq v7, v4, :cond_5

    .line 134
    .line 135
    const v4, 0x5c4d208

    .line 136
    .line 137
    .line 138
    if-eq v7, v4, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const-string v4, "ERROR"

    .line 149
    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_6

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    new-instance v2, Ljava/lang/Exception;

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    aget-object v3, v3, v4

    .line 161
    .line 162
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 163
    .line 164
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    check-cast v3, Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v1, v2}, Lgt/p;->d(Ljava/lang/Throwable;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    const-string v4, "OK"

    .line 177
    .line 178
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_9

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_9

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_9
    invoke-interface {v1, v3}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :goto_1
    iget-object v1, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->callbacks:Lkt/e;

    .line 196
    .line 197
    :cond_a
    invoke-interface {v1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    move-object v3, v2

    .line 202
    check-cast v3, Ljava/util/Set;

    .line 203
    .line 204
    invoke-static {v3, v5}, Lkotlin/collections/y0;->l(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-interface {v1, v2, v3}, Lkt/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_a

    .line 213
    .line 214
    return-void
.end method

.method public handleInvocation(Ljava/lang/String;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "message"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v9, 0x29

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 13
    .line 14
    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    const/4 v11, 0x0

    .line 22
    move v12, v11

    .line 23
    :goto_0
    if-ge v12, v10, :cond_b

    .line 24
    .line 25
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v2, v1, Lorg/json/JSONArray;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    check-cast v1, Lorg/json/JSONArray;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    move-object v1, v3

    .line 41
    :goto_1
    if-eqz v1, :cond_a

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, 0x4

    .line 48
    if-ne v2, v4, :cond_9

    .line 49
    .line 50
    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v4, v2, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move-object v2, v3

    .line 62
    :goto_2
    if-eqz v2, :cond_8

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    instance-of v5, v4, Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    check-cast v4, Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    move-object v4, v3

    .line 77
    :goto_3
    if-eqz v4, :cond_7

    .line 78
    .line 79
    const/4 v5, 0x2

    .line 80
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    instance-of v6, v5, Lorg/json/JSONArray;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    check-cast v5, Lorg/json/JSONArray;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    move-object v5, v3

    .line 92
    :goto_4
    if-eqz v5, :cond_6

    .line 93
    .line 94
    const/4 v6, 0x3

    .line 95
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    instance-of v6, v1, Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    move-object v6, v1

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    move-object v6, v3

    .line 108
    :goto_5
    if-eqz v6, :cond_5

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v2, 0x2e

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "Unity Ads WebView calling for: "

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const/16 v3, 0x28

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v13, v7, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->scope:Lgt/g0;

    .line 162
    .line 163
    new-instance v16, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;

    .line 164
    .line 165
    const/4 v14, 0x0

    .line 166
    move-object/from16 v1, v16

    .line 167
    .line 168
    move-object v3, v5

    .line 169
    move-object/from16 v4, p0

    .line 170
    .line 171
    move-object v5, v6

    .line 172
    move-object v6, v14

    .line 173
    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Lrs/c;)V

    .line 174
    .line 175
    .line 176
    const/16 v17, 0x3

    .line 177
    .line 178
    const/16 v18, 0x0

    .line 179
    .line 180
    const/4 v14, 0x0

    .line 181
    const/4 v15, 0x0

    .line 182
    invoke-static/range {v13 .. v18}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v12, v12, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v1, "Invalid callback id passed to CommonWebViewBridge: "

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v1

    .line 216
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v1, "Invalid parameters passed to CommonWebViewBridge: "

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v1, "Invalid method name passed to CommonWebViewBridge: "

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v1, "Invalid class name passed to CommonWebViewBridge: "

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v1

    .line 297
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v2, "Invocation must have 4 elements: "

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v1

    .line 324
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v1, "Invalid invocation passed to CommonWebViewBridge: "

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v1

    .line 351
    :cond_b
    return-void

    .line 352
    :catch_1
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v3, "Invalid JSON array passed to CommonWebViewBridge: "

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .line 374
    .line 375
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v2, "Error handling invocation from webview ("

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v9, v7, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-nez v1, :cond_c

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    :cond_c
    const-string v2, "reason_debug"

    .line 416
    .line 417
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const-string v2, "webview_invocation"

    .line 422
    .line 423
    invoke-static {v2, v8}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    filled-new-array {v1, v2}, [Lkotlin/Pair;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    const/16 v16, 0x3a

    .line 436
    .line 437
    const/16 v17, 0x0

    .line 438
    .line 439
    const-string v10, "native_webview_invocation_error"

    .line 440
    .line 441
    const/4 v11, 0x0

    .line 442
    const/4 v13, 0x0

    .line 443
    const/4 v14, 0x0

    .line 444
    const/4 v15, 0x0

    .line 445
    invoke-static/range {v9 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 449
    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    const-string v3, "Invalid message passed to CommonWebViewBridge: "

    .line 456
    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    .line 469
    .line 470
    throw v1
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "-[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;-><init>(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lgt/p;

    .line 57
    .line 58
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5, v4}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v6, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->callbacks:Lkt/e;

    .line 78
    .line 79
    :cond_4
    invoke-interface {v6}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    move-object v8, v7

    .line 84
    check-cast v8, Ljava/util/Set;

    .line 85
    .line 86
    invoke-static {v2, p4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-static {v8, v9}, Lkotlin/collections/y0;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-interface {v6, v7, v8}, Lkt/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    new-instance v6, Lorg/json/JSONArray;

    .line 101
    .line 102
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    .line 113
    .line 114
    array-length p1, p3

    .line 115
    const/4 p2, 0x0

    .line 116
    :goto_1
    if-ge p2, p1, :cond_5

    .line 117
    .line 118
    aget-object v2, p3, p2

    .line 119
    .line 120
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    add-int/lit8 p2, p2, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    sget-object p1, Lcom/unity3d/ads/adplayer/HandlerType;->INVOCATION:Lcom/unity3d/ads/adplayer/HandlerType;

    .line 127
    .line 128
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    const-string p3, "arguments.toString()"

    .line 133
    .line 134
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iput-object p4, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput v5, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->label:I

    .line 140
    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->execute(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-ne p1, v1, :cond_6

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_6
    move-object p1, p4

    .line 149
    :goto_2
    iput-object v4, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    iput v3, v0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$request$1;->label:I

    .line 152
    .line 153
    invoke-interface {p1, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p4

    .line 157
    if-ne p4, v1, :cond_7

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_7
    :goto_3
    return-object p4
.end method

.method public sendEvent(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/unity3d/ads/adplayer/model/WebViewEvent;
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
            "Lcom/unity3d/ads/adplayer/model/WebViewEvent;",
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
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/model/WebViewEvent;->getCategory()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/model/WebViewEvent;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/model/WebViewEvent;->getParameters()[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_0

    .line 27
    .line 28
    aget-object v3, p1, v2

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/unity3d/ads/adplayer/HandlerType;->EVENT:Lcom/unity3d/ads/adplayer/HandlerType;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "arguments.toString()"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->execute(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-ne p1, p2, :cond_1

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1
.end method
