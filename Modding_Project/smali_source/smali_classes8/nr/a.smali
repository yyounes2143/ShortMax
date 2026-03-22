.class public final Lnr/a;
.super Lio/ktor/client/call/HttpClientCall;
.source "SavedCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final h:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Lsr/b;Ltr/c;[B)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [B
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
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "response"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "responseBody"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lnr/a;->h:[B

    .line 25
    .line 26
    new-instance p1, Lnr/b;

    .line 27
    .line 28
    invoke-direct {p1, p0, p2}, Lnr/b;-><init>(Lnr/a;Lsr/b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->h(Lsr/b;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lnr/c;

    .line 35
    .line 36
    invoke-direct {p1, p0, p4, p3}, Lnr/c;-><init>(Lnr/a;[BLtr/c;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->i(Ltr/c;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lnr/a;->i:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnr/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method protected f(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lnr/a;->h:[B

    .line 2
    .line 3
    invoke-static {p1}, Lio/ktor/utils/io/c;->a([B)Lio/ktor/utils/io/ByteReadChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
