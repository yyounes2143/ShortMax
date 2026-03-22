.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$c;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;",
        ">;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSETS_FIELD_NUMBER:I = 0x6

.field public static final AURLSUPPORT_FIELD_NUMBER:I = 0xb

.field public static final CONTEXTSUBTYPE_FIELD_NUMBER:I = 0x8

.field public static final CONTEXT_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

.field public static final DURLSUPPORT_FIELD_NUMBER:I = 0xc

.field public static final EVENTTRACKERS_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLCMTCNT_FIELD_NUMBER:I = 0x4

.field public static final PLCMTTYPE_FIELD_NUMBER:I = 0x9

.field public static final PRIVACY_FIELD_NUMBER:I = 0xe

.field public static final SEQ_FIELD_NUMBER:I = 0x5

.field public static final VER_FIELD_NUMBER:I = 0x1


# instance fields
.field private assets_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
            ">;"
        }
    .end annotation
.end field

.field private aurlsupport_:Z

.field private bitField0_:I

.field private context_:I

.field private contextsubtype_:I

.field private durlsupport_:Z

.field private eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private plcmtcnt_:I

.field private plcmttype_:I

.field private privacy_:Z

.field private seq_:I

.field private ver_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->context_:I

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->contextsubtype_:I

    .line 17
    .line 18
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmttype_:I

    .line 19
    .line 20
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmtcnt_:I

    .line 21
    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 33
    .line 34
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAllAssets(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureAssetsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllEventtrackers(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureEventtrackersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAssets(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureAssetsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAssets(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureAssetsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEventtrackers(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureEventtrackersIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEventtrackers(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureEventtrackersIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAssets()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearAurlsupport()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->aurlsupport_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearContext()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->context_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearContextsubtype()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->contextsubtype_:I

    .line 10
    .line 11
    return-void
.end method

.method private clearDurlsupport()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->durlsupport_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearEventtrackers()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearPlcmtcnt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmtcnt_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPlcmttype()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmttype_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPrivacy()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->privacy_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearSeq()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->seq_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearVer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->getVer()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private ensureAssetsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureEventtrackersIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

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

.method private removeAssets(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureAssetsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private removeEventtrackers(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureEventtrackersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setAssets(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureAssetsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setAurlsupport(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->aurlsupport_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setContext(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->context_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setContextsubtype(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->contextsubtype_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setDurlsupport(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->durlsupport_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setEventtrackers(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ensureEventtrackersIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setPlcmtcnt(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmtcnt_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPlcmttype(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmttype_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setPrivacy(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->privacy_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setSeq(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->seq_:I

    .line 8
    .line 9
    return-void
.end method

.method private setVer(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setVerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lcom/moloco/sdk/a;->a:[I

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    aget v0, v0, v2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :pswitch_0
    if-nez p2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    :goto_0
    int-to-byte v0, v0

    .line 27
    iput-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->memoizedIsInitialized:B

    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_1
    iget-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->memoizedIsInitialized:B

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-class v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 49
    .line 50
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 51
    .line 52
    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    monitor-exit v2

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_3
    return-object v0

    .line 65
    :pswitch_3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_4
    const-string v2, "bitField0_"

    .line 69
    .line 70
    const-string/jumbo v3, "ver_"

    .line 71
    .line 72
    .line 73
    const-string v4, "plcmtcnt_"

    .line 74
    .line 75
    const-string v5, "seq_"

    .line 76
    .line 77
    const-string v6, "assets_"

    .line 78
    .line 79
    const-class v7, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 80
    .line 81
    const-string v8, "context_"

    .line 82
    .line 83
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const-string v10, "contextsubtype_"

    .line 88
    .line 89
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    const-string v12, "plcmttype_"

    .line 94
    .line 95
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    const-string v14, "aurlsupport_"

    .line 100
    .line 101
    const-string v15, "durlsupport_"

    .line 102
    .line 103
    const-string v16, "eventtrackers_"

    .line 104
    .line 105
    const-class v17, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;

    .line 106
    .line 107
    const-string v18, "privacy_"

    .line 108
    .line 109
    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v2, "\u0001\u000b\u0000\u0001\u0001\u000e\u000b\u0000\u0002\u0002\u0001\u1008\u0000\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u041b\u0007\u100c\u0001\u0008\u100c\u0002\t\u100c\u0003\u000b\u1007\u0006\u000c\u1007\u0007\r\u041b\u000e\u1007\u0008"

    .line 114
    .line 115
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 116
    .line 117
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;

    .line 123
    .line 124
    invoke-direct {v0, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;-><init>(Lcom/moloco/sdk/b;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;-><init>()V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    nop

    .line 135
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

.method public getAssets(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAssetsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getAssetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAssetsOrBuilder(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAssetsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->assets_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAurlsupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->aurlsupport_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->context_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;->CONTENT:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getContextsubtype()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->contextsubtype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_GENERAL_OR_MIXED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDurlsupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->durlsupport_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getEventtrackers(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventtrackersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getEventtrackersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$EventTrackers;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventtrackersOrBuilder(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventtrackersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->eventtrackers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlcmtcnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmtcnt_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlcmttype()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->plcmttype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;->IN_FEED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$PlacementType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPrivacy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->privacy_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->seq_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->ver_:Ljava/lang/String;

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

.method public hasAurlsupport()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

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

.method public hasContext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

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

.method public hasContextsubtype()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

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

.method public hasDurlsupport()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

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

.method public hasPlcmtcnt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

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

.method public hasPlcmttype()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

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

.method public hasPrivacy()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x100

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

.method public hasSeq()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

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

.method public hasVer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->bitField0_:I

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
