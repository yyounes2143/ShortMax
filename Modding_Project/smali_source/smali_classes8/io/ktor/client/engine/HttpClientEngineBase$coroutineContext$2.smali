.class final Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientEngineBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/HttpClientEngineBase;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/client/engine/HttpClientEngineBase;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/HttpClientEngineBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->d:Lio/ktor/client/engine/HttpClientEngineBase;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->invoke()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/CoroutineContext;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Lyr/k;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->d:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-virtual {v1}, Lio/ktor/client/engine/HttpClientEngineBase;->d()Lgt/c0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lgt/f0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->d:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-static {v3}, Lio/ktor/client/engine/HttpClientEngineBase;->a(Lio/ktor/client/engine/HttpClientEngineBase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgt/f0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
