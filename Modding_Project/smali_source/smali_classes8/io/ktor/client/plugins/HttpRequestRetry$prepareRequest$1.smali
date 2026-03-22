.class final Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestRetry;->m(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/client/request/HttpRequestBuilder;


# direct methods
.method constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;->d:Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;->d:Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v0}, Lio/ktor/client/request/HttpRequestBuilder;->g()Lkotlinx/coroutines/r;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgt/s;

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0}, Lgt/s;->complete()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lgt/s;->d(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
