.class final Lio/ktor/client/plugins/HttpSend$b;
.super Ljava/lang/Object;
.source "HttpSend.kt"

# interfaces
.implements Lqr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Lqr/h;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lqr/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lat/n;Lqr/h;)V
    .locals 1
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lqr/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Lqr/h;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lqr/h;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nextSender"

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
    iput-object p1, p0, Lio/ktor/client/plugins/HttpSend$b;->a:Lat/n;

    .line 15
    .line 16
    iput-object p2, p0, Lio/ktor/client/plugins/HttpSend$b;->b:Lqr/h;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
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
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpSend$b;->a:Lat/n;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpSend$b;->b:Lqr/h;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
