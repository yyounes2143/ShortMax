.class Lom/c;
.super Llp/b;
.source "HeaderBiddingAdObjectParams.java"


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)V
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Llp/b;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getServerParamsMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
