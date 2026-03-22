.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;",
        ">;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0xd

.field public static final BATTR_FIELD_NUMBER:I = 0x7

.field public static final COMPANIONAD_FIELD_NUMBER:I = 0xc

.field public static final COMPANIONTYPE_FIELD_NUMBER:I = 0x14

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

.field public static final DELIVERY_FIELD_NUMBER:I = 0xb

.field public static final FEED_FIELD_NUMBER:I = 0x16

.field public static final MAXBITRATE_FIELD_NUMBER:I = 0xa

.field public static final MAXDURATION_FIELD_NUMBER:I = 0x3

.field public static final MAXEXTENDED_FIELD_NUMBER:I = 0x8

.field public static final MAXSEQ_FIELD_NUMBER:I = 0x15

.field public static final MIMES_FIELD_NUMBER:I = 0x1

.field public static final MINBITRATE_FIELD_NUMBER:I = 0x9

.field public static final MINCPMPERSEC_FIELD_NUMBER:I = 0x1e

.field public static final MINDURATION_FIELD_NUMBER:I = 0x2

.field public static final NVOL_FIELD_NUMBER:I = 0x18

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;",
            ">;"
        }
    .end annotation
.end field

.field public static final PODDUR_FIELD_NUMBER:I = 0x19

.field public static final PODID_FIELD_NUMBER:I = 0x1b

.field public static final PODSEQ_FIELD_NUMBER:I = 0x1c

.field public static final PROTOCOLS_FIELD_NUMBER:I = 0x4

.field public static final RQDDURS_FIELD_NUMBER:I = 0x1a

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x6

.field public static final SLOTINPOD_FIELD_NUMBER:I = 0x1d

.field public static final STARTDELAY_FIELD_NUMBER:I = 0x5

.field public static final STITCHED_FIELD_NUMBER:I = 0x17

.field private static final api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation
.end field

.field private static final battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final companiontype_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final delivery_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final protocols_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiMemoizedSerializedSize:I

.field private api_:Lcom/google/protobuf/Internal$IntList;

.field private battrMemoizedSerializedSize:I

.field private battr_:Lcom/google/protobuf/Internal$IntList;

.field private bitField0_:I

.field private companionad_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;",
            ">;"
        }
    .end annotation
.end field

.field private companiontypeMemoizedSerializedSize:I

.field private companiontype_:Lcom/google/protobuf/Internal$IntList;

.field private deliveryMemoizedSerializedSize:I

.field private delivery_:Lcom/google/protobuf/Internal$IntList;

.field private feed_:I

.field private maxbitrate_:I

.field private maxduration_:I

.field private maxextended_:I

.field private maxseq_:I

.field private memoizedIsInitialized:B

.field private mimes_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private minbitrate_:I

.field private mincpmpersec_:D

.field private minduration_:I

.field private nvol_:I

.field private poddur_:I

.field private podid_:Ljava/lang/String;

.field private podseq_:I

.field private protocolsMemoizedSerializedSize:I

.field private protocols_:Lcom/google/protobuf/Internal$IntList;

.field private rqddursMemoizedSerializedSize:I

.field private rqddurs_:Lcom/google/protobuf/Internal$IntList;

.field private sequence_:I

.field private slotinpod_:I

.field private startdelay_:I

.field private stitched_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$c;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$d;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$d;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 28
    .line 29
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$e;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$e;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 35
    .line 36
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 42
    .line 43
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddursMemoizedSerializedSize:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->memoizedIsInitialized:B

    .line 9
    .line 10
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->sequence_:I

    .line 34
    .line 35
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 58
    .line 59
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 64
    .line 65
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->feed_:I

    .line 66
    .line 67
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAllApi(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureApiIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllBattr(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureBattrIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllCompanionad(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompanionadIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllCompaniontype(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompaniontypeIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllDelivery(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureDeliveryIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllMimes(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureMimesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllProtocols(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureProtocolsIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllRqddurs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureRqddursIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addApi(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureApiIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addBattr(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureBattrIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addCompanionad(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompanionadIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCompanionad(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompanionadIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCompaniontype(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompaniontypeIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addDelivery(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureDeliveryIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addMimes(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureMimesIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private addMimesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureMimesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method private addProtocols(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureProtocolsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addRqddurs(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureRqddursIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private clearApi()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearBattr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearCompanionad()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearCompaniontype()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearDelivery()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearFeed()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->feed_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMaxbitrate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxbitrate_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMaxduration()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxduration_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMaxextended()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxextended_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMaxseq()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxseq_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMimes()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearMinbitrate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minbitrate_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMincpmpersec()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mincpmpersec_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearMinduration()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minduration_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearNvol()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->nvol_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearPoddur()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->poddur_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPodid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->getPodid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPodseq()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podseq_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearProtocols()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearRqddurs()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearSequence()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->sequence_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearSlotinpod()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->slotinpod_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearStartdelay()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->startdelay_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearStitched()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->stitched_:Z

    .line 9
    .line 10
    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureCompanionadIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureCompaniontypeIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureDeliveryIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureMimesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureProtocolsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureRqddursIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

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

.method private removeCompanionad(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompanionadIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setApi(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureApiIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setBattr(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureBattrIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setCompanionad(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompanionadIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setCompaniontype(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureCompaniontypeIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setDelivery(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureDeliveryIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setFeed(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->feed_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x2000

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setMaxbitrate(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxbitrate_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMaxduration(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxduration_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMaxextended(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxextended_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMaxseq(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxseq_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMimes(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureMimesIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setMinbitrate(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minbitrate_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMincpmpersec(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mincpmpersec_:D

    .line 8
    .line 9
    return-void
.end method

.method private setMinduration(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minduration_:I

    .line 8
    .line 9
    return-void
.end method

.method private setNvol(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->nvol_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    const v0, 0x8000

    .line 10
    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 14
    .line 15
    return-void
.end method

.method private setPoddur(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->poddur_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPodid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setPodidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x10

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setPodseq(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podseq_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x20

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setProtocols(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureProtocolsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setRqddurs(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->ensureRqddursIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setSequence(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->sequence_:I

    .line 8
    .line 9
    return-void
.end method

.method private setSlotinpod(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->slotinpod_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x80

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setStartdelay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->startdelay_:I

    .line 8
    .line 9
    return-void
.end method

.method private setStitched(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->stitched_:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

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
    iput-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->memoizedIsInitialized:B

    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_1
    iget-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->memoizedIsInitialized:B

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
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->PARSER:Lcom/google/protobuf/Parser;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-class v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 49
    .line 50
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 51
    .line 52
    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_4
    const-string v2, "bitField0_"

    .line 69
    .line 70
    const-string v3, "mimes_"

    .line 71
    .line 72
    const-string v4, "minduration_"

    .line 73
    .line 74
    const-string v5, "maxduration_"

    .line 75
    .line 76
    const-string v6, "protocols_"

    .line 77
    .line 78
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string/jumbo v8, "startdelay_"

    .line 83
    .line 84
    .line 85
    const-string v9, "sequence_"

    .line 86
    .line 87
    const-string v10, "battr_"

    .line 88
    .line 89
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    const-string v12, "maxextended_"

    .line 94
    .line 95
    const-string v13, "minbitrate_"

    .line 96
    .line 97
    const-string v14, "maxbitrate_"

    .line 98
    .line 99
    const-string v15, "delivery_"

    .line 100
    .line 101
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    const-string v17, "companionad_"

    .line 106
    .line 107
    const-class v18, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;

    .line 108
    .line 109
    const-string v19, "api_"

    .line 110
    .line 111
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 112
    .line 113
    .line 114
    move-result-object v20

    .line 115
    const-string v21, "companiontype_"

    .line 116
    .line 117
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 118
    .line 119
    .line 120
    move-result-object v22

    .line 121
    const-string v23, "maxseq_"

    .line 122
    .line 123
    const-string v24, "feed_"

    .line 124
    .line 125
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 126
    .line 127
    .line 128
    move-result-object v25

    .line 129
    const-string/jumbo v26, "stitched_"

    .line 130
    .line 131
    .line 132
    const-string v27, "nvol_"

    .line 133
    .line 134
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 135
    .line 136
    .line 137
    move-result-object v28

    .line 138
    const-string v29, "poddur_"

    .line 139
    .line 140
    const-string v30, "rqddurs_"

    .line 141
    .line 142
    const-string v31, "podid_"

    .line 143
    .line 144
    const-string v32, "podseq_"

    .line 145
    .line 146
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 147
    .line 148
    .line 149
    move-result-object v33

    .line 150
    const-string/jumbo v34, "slotinpod_"

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 154
    .line 155
    .line 156
    move-result-object v35

    .line 157
    const-string v36, "mincpmpersec_"

    .line 158
    .line 159
    filled-new-array/range {v2 .. v36}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v2, "\u0001\u0018\u0000\u0001\u0001\u001e\u0018\u0000\u0008\u0001\u0001\u001a\u0002\u1004\u0000\u0003\u1004\u0001\u0004,\u0005\u1004\u0003\u0006\u1004\u0006\u0007,\u0008\u1004\t\t\u1004\n\n\u1004\u000b\u000b,\u000c\u041b\r,\u0014,\u0015\u1004\u000c\u0016\u100c\r\u0017\u1007\u000e\u0018\u100c\u000f\u0019\u1004\u0002\u001a\'\u001b\u1008\u0004\u001c\u100c\u0005\u001d\u100c\u0007\u001e\u1000\u0008"

    .line 164
    .line 165
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 166
    .line 167
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0

    .line 172
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;

    .line 173
    .line 174
    invoke-direct {v0, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$f;-><init>(Lcom/moloco/sdk/b;)V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;

    .line 179
    .line 180
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;-><init>()V

    .line 181
    .line 182
    .line 183
    return-object v0

    .line 184
    nop

    .line 185
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

.method public getApi(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getApiCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

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

.method public getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getBattr(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->AUDIO_AUTO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getBattrCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

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

.method public getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getCompanionad(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCompanionadCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getCompanionadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Banner;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompanionadOrBuilder(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$a;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCompanionadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companionad_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompaniontype(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;->STATIC:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getCompaniontypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

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

.method public getCompaniontypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CompanionType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->companiontype_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getDelivery(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;->STREAMING:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getDeliveryCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

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

.method public getDeliveryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ContentDeliveryMethod;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->delivery_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getFeed()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->feed_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;->MUSIC_SERVICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$FeedType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getMaxbitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxbitrate_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxduration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxduration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxextended()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxextended_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxseq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->maxseq_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMimes(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getMimesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getMimesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getMimesList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mimes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinbitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minbitrate_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMincpmpersec()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->mincpmpersec_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMinduration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->minduration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNvol()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->nvol_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;->NONE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio$VolumeNormalizationMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPoddur()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->poddur_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPodid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPodidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podid_:Ljava/lang/String;

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

.method public getPodseq()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->podseq_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;->POD_SEQUENCE_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$PodSequence;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getProtocols(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;->VAST_1_0:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getProtocolsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

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

.method public getProtocolsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->protocols_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getRqddurs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getRqddursCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

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

.method public getRqddursList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->rqddurs_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSequence()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->sequence_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSlotinpod()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->slotinpod_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStartdelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->startdelay_:I

    .line 2
    .line 3
    return v0
.end method

.method public getStitched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->stitched_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasFeed()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x2000

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

.method public hasMaxbitrate()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x800

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

.method public hasMaxduration()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasMaxextended()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

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

.method public hasMaxseq()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x1000

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

.method public hasMinbitrate()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x400

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

.method public hasMincpmpersec()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasMinduration()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasNvol()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public hasPoddur()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasPodid()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasPodseq()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasSequence()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasSlotinpod()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasStartdelay()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

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

.method public hasStitched()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Audio;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x4000

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
