.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;",
        ">;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$b;"
    }
.end annotation


# static fields
.field public static final AT_FIELD_NUMBER:I = 0x6

.field public static final BIDFLOORCUR_FIELD_NUMBER:I = 0x3

.field public static final BIDFLOOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;",
            ">;"
        }
    .end annotation
.end field

.field public static final WADOMAIN_FIELD_NUMBER:I = 0x5

.field public static final WSEAT_FIELD_NUMBER:I = 0x4


# instance fields
.field private at_:I

.field private bidfloor_:D

.field private bidfloorcur_:Ljava/lang/String;

.field private bitField0_:I

.field private id_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private wadomain_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wseat_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "USD"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->at_:I

    .line 29
    .line 30
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAllWadomain(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWadomainIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllWseat(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWseatIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addWadomain(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWadomainIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private addWadomainBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWadomainIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private addWseat(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWseatIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private addWseatBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWseatIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private clearAt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->at_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearBidfloor()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloor_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearBidfloorcur()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->getBidfloorcur()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearWadomain()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearWseat()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private ensureWadomainIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureWseatIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setAt(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->at_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setBidfloor(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloor_:D

    .line 8
    .line 9
    return-void
.end method

.method private setBidfloorcur(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setBidfloorcurBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setWadomain(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWadomainIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setWseat(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->ensureWseatIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p3, Lcom/moloco/sdk/a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p3, p1

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    int-to-byte p1, p1

    .line 25
    iput-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->memoizedIsInitialized:B

    .line 26
    .line 27
    return-object p3

    .line 28
    :pswitch_1
    iget-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->memoizedIsInitialized:B

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->PARSER:Lcom/google/protobuf/Parser;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-class p2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->PARSER:Lcom/google/protobuf/Parser;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 47
    .line 48
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->PARSER:Lcom/google/protobuf/Parser;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    monitor-exit p2

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1

    .line 62
    :cond_2
    :goto_3
    return-object p1

    .line 63
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_4
    const-string v0, "bitField0_"

    .line 67
    .line 68
    const-string v1, "id_"

    .line 69
    .line 70
    const-string v2, "bidfloor_"

    .line 71
    .line 72
    const-string v3, "bidfloorcur_"

    .line 73
    .line 74
    const-string/jumbo v4, "wseat_"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v5, "wadomain_"

    .line 78
    .line 79
    .line 80
    const-string v6, "at_"

    .line 81
    .line 82
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0001\u0001\u1508\u0000\u0002\u1000\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u001a\u0006\u100c\u0003"

    .line 91
    .line 92
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 93
    .line 94
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;

    .line 100
    .line 101
    invoke-direct {p1, p3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$a;-><init>(Lcom/moloco/sdk/b;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;

    .line 106
    .line 107
    invoke-direct {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;-><init>()V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAt()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->at_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIRST_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getBidfloor()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloor_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBidfloorcur()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBidfloorcurBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bidfloorcur_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->id_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWadomain(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getWadomainBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getWadomainCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWadomainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wadomain_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWseat(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getWseatBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getWseatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWseatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->wseat_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasBidfloor()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasBidfloorcur()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method
