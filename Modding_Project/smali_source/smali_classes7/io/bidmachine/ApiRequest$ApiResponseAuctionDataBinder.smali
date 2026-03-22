.class public Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiResponseAuctionDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Lcom/explorestack/protobuf/openrtb/Request;",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lfr/a;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lcom/explorestack/protobuf/openrtb/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p3}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parseFrom([B)Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    const-string p2, "Auction Response"

    invoke-static {p2, p1}, Lio/bidmachine/z4;->f(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

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
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1
.end method

.method protected obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B
    .locals 0
    .param p3    # Lcom/explorestack/protobuf/openrtb/Request;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lfr/a;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

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

    .line 2
    check-cast p3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B

    move-result-object p1

    return-object p1
.end method

.method protected prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
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
