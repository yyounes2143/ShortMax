.class public final Lrr/a;
.super Lio/ktor/client/call/HttpClientCall;
.source "DelegatedCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/call/HttpClientCall;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/call/HttpClientCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "originCall"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lrr/c;

    .line 20
    .line 21
    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, p0, v0}, Lrr/c;-><init>(Lio/ktor/client/call/HttpClientCall;Lsr/b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->h(Lsr/b;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lrr/d;

    .line 32
    .line 33
    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-direct {p1, p0, p2, p3}, Lrr/d;-><init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;Ltr/c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->i(Ltr/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
