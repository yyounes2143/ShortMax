.class public final Lcom/unity3d/ads/adplayer/Invocation;
.super Ljava/lang/Object;
.source "Invocation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final _isHandled:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final completableDeferred:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final location:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parameters:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "location"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/Invocation;->location:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/Invocation;->parameters:[Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-static {p1, p2, p1}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lgt/p;

    .line 25
    .line 26
    invoke-static {p1, p2, p1}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lgt/p;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$getCompletableDeferred$p(Lcom/unity3d/ads/adplayer/Invocation;)Lgt/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lgt/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic handle$default(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/unity3d/ads/adplayer/Invocation$handle$2;

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-direct {p1, p3}, Lcom/unity3d/ads/adplayer/Invocation$handle$2;-><init>(Lrs/c;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final getLocation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParameters()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->parameters:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResult(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lgt/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final handle(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function1;
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
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "Ljava/lang/Object;",
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
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lgt/p;

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v5, Lcom/unity3d/ads/adplayer/Invocation$handle$3;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {v5, p1, p0, p2}, Lcom/unity3d/ads/adplayer/Invocation$handle$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/unity3d/ads/adplayer/Invocation;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final isHandled()Lgt/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgt/k0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lgt/p;

    .line 2
    .line 3
    return-object v0
.end method
