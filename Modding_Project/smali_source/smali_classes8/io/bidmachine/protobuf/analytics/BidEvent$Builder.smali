.class public final Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "BidEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/BidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/analytics/BidEvent$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;"
    }
.end annotation


# instance fields
.field private adBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/a;",
            ">;"
        }
    .end annotation
.end field

.field private ad_:Lcom/explorestack/protobuf/adcom/Ad;

.field private auctionContextBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field private bidBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field private bidid_:Ljava/lang/Object;

.field private seat_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>()V

    return-void
.end method

.method private getAdFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getBidFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$402(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$502(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$602(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 10
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 13
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    .line 16
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_0

    .line 11
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 12
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 13
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_1

    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_1

    .line 15
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 16
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 17
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_2

    .line 18
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_2

    .line 19
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 20
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    :goto_2
    return-object p0
.end method

.method public clearAd()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearAuctionContext()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearBid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearBidid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public clearSeat()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAdBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAdFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAdOrBuilder()Lcom/explorestack/protobuf/adcom/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/adcom/a;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAuctionContextBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAuctionContextOrBuilder()Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getBidOrBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getBidid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeat()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public hasAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasAuctionContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasBid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilder(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1100()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 33
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$400(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$500(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$600(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 20
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 22
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 24
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 26
    :cond_6
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1000(Lio/bidmachine/protobuf/analytics/BidEvent;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setBidid(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBididBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setSeat(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTimestampBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method
