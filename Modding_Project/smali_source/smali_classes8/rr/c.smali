.class public final Lrr/c;
.super Ljava/lang/Object;
.source "DelegatedCall.kt"

# interfaces
.implements Lsr/b;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/client/call/HttpClientCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic b:Lsr/b;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lsr/b;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/HttpClientCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "origin"

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
    iput-object p1, p0, Lrr/c;->a:Lio/ktor/client/call/HttpClientCall;

    .line 15
    .line 16
    iput-object p2, p0, Lrr/c;->b:Lsr/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->b:Lsr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lwr/k;->a()Lwr/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->b:Lsr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lsr/b;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMethod()Lwr/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->b:Lsr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lsr/b;->getMethod()Lwr/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->b:Lsr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->b:Lsr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lsr/b;->m()Lyr/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public x()Lio/ktor/client/call/HttpClientCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrr/c;->a:Lio/ktor/client/call/HttpClientCall;

    .line 2
    .line 3
    return-object v0
.end method
