.class final Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->o(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Lio/ktor/client/plugins/HttpRequestRetry$e;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;->d:Z

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/plugins/HttpRequestRetry$e;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lio/ktor/client/plugins/HttpRequestRetry$e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$retryOnExceptionIf"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "<anonymous parameter 0>"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "cause"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lio/ktor/client/plugins/c;->g(Ljava/lang/Throwable;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;->d:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of p1, p3, Ljava/util/concurrent/CancellationException;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpRequestRetry$e;

    .line 2
    .line 3
    check-cast p2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;->b(Lio/ktor/client/plugins/HttpRequestRetry$e;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
