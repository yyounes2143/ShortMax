.class Lhm/v$b;
.super Lio/bidmachine/core/NetworkRequest$f;
.source "WaterfallNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhm/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/core/NetworkRequest$f<",
        "Lio/bidmachine/protobuf/Waterfall$Result;",
        "Lio/bidmachine/protobuf/Waterfall$Configuration;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhm/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lhm/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/Waterfall$Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lfr/a;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lio/bidmachine/protobuf/Waterfall;->parseFrom([B)Lio/bidmachine/protobuf/Waterfall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall;->getResponse()Lio/bidmachine/protobuf/Waterfall$Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected b(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/Waterfall$Result;)[B
    .locals 0
    .param p3    # Lio/bidmachine/protobuf/Waterfall$Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lfr/a;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Builder;->setRequest(Lio/bidmachine/protobuf/Waterfall$Result;)Lio/bidmachine/protobuf/Waterfall$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Builder;->build()Lio/bidmachine/protobuf/Waterfall;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/a;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method protected bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lhm/v$b;->a(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/Waterfall$Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p3, Lio/bidmachine/protobuf/Waterfall$Result;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lhm/v$b;->b(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/Waterfall$Result;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lfr/a;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "Content-Type"

    .line 2
    .line 3
    const-string v0, "application/x-protobuf"

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
