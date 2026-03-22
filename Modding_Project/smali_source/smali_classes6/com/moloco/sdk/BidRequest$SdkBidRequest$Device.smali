.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;",
        ">;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARRIER_FIELD_NUMBER:I = 0xa

.field public static final CONNECTIONTYPE_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x12

.field public static final DIDMD5_FIELD_NUMBER:I = 0x6

.field public static final DIDSHA1_FIELD_NUMBER:I = 0x5

.field public static final DNT_FIELD_NUMBER:I = 0x1

.field public static final DPIDMD5_FIELD_NUMBER:I = 0x8

.field public static final DPIDSHA1_FIELD_NUMBER:I = 0x7

.field public static final FLASHVER_FIELD_NUMBER:I = 0x13

.field public static final GEOFETCH_FIELD_NUMBER:I = 0x1d

.field public static final GEO_FIELD_NUMBER:I = 0x4

.field public static final HWV_FIELD_NUMBER:I = 0x18

.field public static final H_FIELD_NUMBER:I = 0x1a

.field public static final IFA_FIELD_NUMBER:I = 0x14

.field public static final IPV6_FIELD_NUMBER:I = 0x9

.field public static final IP_FIELD_NUMBER:I = 0x3

.field public static final JS_FIELD_NUMBER:I = 0x10

.field public static final LANGB_FIELD_NUMBER:I = 0x20

.field public static final LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final LMT_FIELD_NUMBER:I = 0x17

.field public static final MACMD5_FIELD_NUMBER:I = 0x16

.field public static final MACSHA1_FIELD_NUMBER:I = 0x15

.field public static final MAKE_FIELD_NUMBER:I = 0xc

.field public static final MCCMNC_FIELD_NUMBER:I = 0x1e

.field public static final MODEL_FIELD_NUMBER:I = 0xd

.field public static final OSV_FIELD_NUMBER:I = 0xf

.field public static final OS_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPI_FIELD_NUMBER:I = 0x1b

.field public static final PXRATIO_FIELD_NUMBER:I = 0x1c

.field public static final SUA_FIELD_NUMBER:I = 0x1f

.field public static final UA_FIELD_NUMBER:I = 0x2

.field public static final W_FIELD_NUMBER:I = 0x19


# instance fields
.field private bitField0_:I

.field private carrier_:Ljava/lang/String;

.field private connectiontype_:I

.field private devicetype_:I

.field private didmd5_:Ljava/lang/String;

.field private didsha1_:Ljava/lang/String;

.field private dnt_:Z

.field private dpidmd5_:Ljava/lang/String;

.field private dpidsha1_:Ljava/lang/String;

.field private flashver_:Ljava/lang/String;

.field private geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

.field private geofetch_:Z

.field private h_:I

.field private hwv_:Ljava/lang/String;

.field private ifa_:Ljava/lang/String;

.field private ip_:Ljava/lang/String;

.field private ipv6_:Ljava/lang/String;

.field private js_:Z

.field private langb_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private lmt_:Z

.field private macmd5_:Ljava/lang/String;

.field private macsha1_:Ljava/lang/String;

.field private make_:Ljava/lang/String;

.field private mccmnc_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private model_:Ljava/lang/String;

.field private os_:Ljava/lang/String;

.field private osv_:Ljava/lang/String;

.field private ppi_:I

.field private pxratio_:D

.field private sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

.field private ua_:Ljava/lang/String;

.field private w_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

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
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->devicetype_:I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearCarrier()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x400001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getCarrier()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearConnectiontype()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x1000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->connectiontype_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearDevicetype()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->devicetype_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearDidmd5()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDidmd5()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearDidsha1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x4000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDidsha1()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearDnt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dnt_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearDpidmd5()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x20000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDpidmd5()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearDpidsha1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x10000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDpidsha1()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearFlashver()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x80001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getFlashver()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearGeo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearGeofetch()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x40001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geofetch_:Z

    .line 11
    .line 12
    return-void
.end method

.method private clearH()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->h_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHwv()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getHwv()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearIfa()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x2000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getIfa()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearIp()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getIp()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearIpv6()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getIpv6()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearJs()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x20001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->js_:Z

    .line 11
    .line 12
    return-void
.end method

.method private clearLangb()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x200001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getLangb()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearLanguage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x100001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearLmt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->lmt_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearMacmd5()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getMacmd5()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearMacsha1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x40000001    # -1.9999999f

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getMacsha1()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearMake()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearMccmnc()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x800001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getMccmnc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearModel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearOs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getOs()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearOsv()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getOsv()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPpi()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ppi_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearPxratio()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x10001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->pxratio_:D

    .line 12
    .line 13
    return-void
.end method

.method private clearSua()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x11

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearUa()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getUa()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearW()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->w_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeGeo(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeSua(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent$b;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x10

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

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

.method private setCarrier(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x400000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setCarrierBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x400000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setConnectiontype(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->connectiontype_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x1000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setDevicetype(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->devicetype_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x80

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setDidmd5(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x8000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setDidmd5Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x8000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setDidsha1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x4000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setDidsha1Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x4000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setDnt(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dnt_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setDpidmd5(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x20000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setDpidmd5Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x20000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setDpidsha1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setDpidsha1Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x10000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setFlashver(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x80000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setFlashverBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x80000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setGeo(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setGeofetch(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geofetch_:Z

    .line 9
    .line 10
    return-void
.end method

.method private setH(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->h_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHwv(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x1000

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setHwvBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x1000

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setIfa(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x2000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setIfaBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x2000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setIp(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x20

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setIpv6(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setIpv6Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x40

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setJs(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->js_:Z

    .line 9
    .line 10
    return-void
.end method

.method private setLangb(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x200000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setLangbBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x200000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x100000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setLanguageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x100000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setLmt(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->lmt_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setMacmd5(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, -0x80000000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setMacmd5Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, -0x80000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setMacsha1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setMacsha1Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setMake(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setMakeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x100

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setMccmnc(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x800000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setMccmncBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    const/high16 v0, 0x800000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 13
    .line 14
    return-void
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x200

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setOs(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x400

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setOsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x400

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setOsv(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x800

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setOsvBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x800

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setPpi(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ppi_:I

    .line 10
    .line 11
    return-void
.end method

.method private setPxratio(D)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->pxratio_:D

    .line 9
    .line 10
    return-void
.end method

.method private setSua(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x10

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setUa(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setUaBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setW(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->w_:I

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
    iput-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->memoizedIsInitialized:B

    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_1
    iget-byte v0, v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->memoizedIsInitialized:B

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
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->PARSER:Lcom/google/protobuf/Parser;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-class v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 49
    .line 50
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 51
    .line 52
    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_4
    const-string v2, "bitField0_"

    .line 69
    .line 70
    const-string v3, "dnt_"

    .line 71
    .line 72
    const-string/jumbo v4, "ua_"

    .line 73
    .line 74
    .line 75
    const-string v5, "ip_"

    .line 76
    .line 77
    const-string v6, "geo_"

    .line 78
    .line 79
    const-string v7, "didsha1_"

    .line 80
    .line 81
    const-string v8, "didmd5_"

    .line 82
    .line 83
    const-string v9, "dpidsha1_"

    .line 84
    .line 85
    const-string v10, "dpidmd5_"

    .line 86
    .line 87
    const-string v11, "ipv6_"

    .line 88
    .line 89
    const-string v12, "carrier_"

    .line 90
    .line 91
    const-string v13, "language_"

    .line 92
    .line 93
    const-string v14, "make_"

    .line 94
    .line 95
    const-string v15, "model_"

    .line 96
    .line 97
    const-string v16, "os_"

    .line 98
    .line 99
    const-string v17, "osv_"

    .line 100
    .line 101
    const-string v18, "js_"

    .line 102
    .line 103
    const-string v19, "connectiontype_"

    .line 104
    .line 105
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 106
    .line 107
    .line 108
    move-result-object v20

    .line 109
    const-string v21, "devicetype_"

    .line 110
    .line 111
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 112
    .line 113
    .line 114
    move-result-object v22

    .line 115
    const-string v23, "flashver_"

    .line 116
    .line 117
    const-string v24, "ifa_"

    .line 118
    .line 119
    const-string v25, "macsha1_"

    .line 120
    .line 121
    const-string v26, "macmd5_"

    .line 122
    .line 123
    const-string v27, "lmt_"

    .line 124
    .line 125
    const-string v28, "hwv_"

    .line 126
    .line 127
    const-string/jumbo v29, "w_"

    .line 128
    .line 129
    .line 130
    const-string v30, "h_"

    .line 131
    .line 132
    const-string v31, "ppi_"

    .line 133
    .line 134
    const-string v32, "pxratio_"

    .line 135
    .line 136
    const-string v33, "geofetch_"

    .line 137
    .line 138
    const-string v34, "mccmnc_"

    .line 139
    .line 140
    const-string/jumbo v35, "sua_"

    .line 141
    .line 142
    .line 143
    const-string v36, "langb_"

    .line 144
    .line 145
    filled-new-array/range {v2 .. v36}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v2, "\u0001 \u0000\u0001\u0001  \u0000\u0000\u0001\u0001\u1007\u0001\u0002\u1008\u0003\u0003\u1008\u0005\u0004\u1409\u0000\u0005\u1008\u001a\u0006\u1008\u001b\u0007\u1008\u001c\u0008\u1008\u001d\t\u1008\u0006\n\u1008\u0016\u000b\u1008\u0014\u000c\u1008\u0008\r\u1008\t\u000e\u1008\n\u000f\u1008\u000b\u0010\u1007\u0011\u0011\u100c\u0018\u0012\u100c\u0007\u0013\u1008\u0013\u0014\u1008\u0019\u0015\u1008\u001e\u0016\u1008\u001f\u0017\u1007\u0002\u0018\u1008\u000c\u0019\u1004\r\u001a\u1004\u000e\u001b\u1004\u000f\u001c\u1000\u0010\u001d\u1007\u0012\u001e\u1008\u0017\u001f\u1009\u0004 \u1008\u0015"

    .line 150
    .line 151
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 152
    .line 153
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;

    .line 159
    .line 160
    invoke-direct {v0, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;-><init>(Lcom/moloco/sdk/b;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;-><init>()V

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    nop

    .line 171
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

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCarrierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->carrier_:Ljava/lang/String;

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

.method public getConnectiontype()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->connectiontype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;->CONNECTION_UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$ConnectionType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDevicetype()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->devicetype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;->MOBILE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$DeviceType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDidmd5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDidmd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didmd5_:Ljava/lang/String;

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

.method public getDidsha1()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDidsha1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->didsha1_:Ljava/lang/String;

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

.method public getDnt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dnt_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDpidmd5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpidmd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidmd5_:Ljava/lang/String;

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

.method public getDpidsha1()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpidsha1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->dpidsha1_:Ljava/lang/String;

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

.method public getFlashver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlashverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->flashver_:Ljava/lang/String;

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

.method public getGeo()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geo_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$Geo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGeofetch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->geofetch_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->h_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHwv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHwvBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->hwv_:Ljava/lang/String;

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

.method public getIfa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIfaBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ifa_:Ljava/lang/String;

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

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ip_:Ljava/lang/String;

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

.method public getIpv6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIpv6Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ipv6_:Ljava/lang/String;

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

.method public getJs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->js_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLangb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLangbBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->langb_:Ljava/lang/String;

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

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->language_:Ljava/lang/String;

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

.method public getLmt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->lmt_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMacmd5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMacmd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macmd5_:Ljava/lang/String;

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

.method public getMacsha1()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMacsha1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->macsha1_:Ljava/lang/String;

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

.method public getMake()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->make_:Ljava/lang/String;

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

.method public getMccmnc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMccmncBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->mccmnc_:Ljava/lang/String;

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

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->model_:Ljava/lang/String;

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

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->os_:Ljava/lang/String;

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

.method public getOsv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsvBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->osv_:Ljava/lang/String;

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

.method public getPpi()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ppi_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPxratio()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->pxratio_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSua()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->sua_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$UserAgent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->ua_:Ljava/lang/String;

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

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->w_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasCarrier()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x400000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasConnectiontype()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x1000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasDevicetype()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasDidmd5()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x8000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasDidsha1()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasDnt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasDpidmd5()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasDpidsha1()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasFlashver()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasGeo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasGeofetch()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasH()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasHwv()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasIfa()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x2000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasIp()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasIpv6()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasJs()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasLangb()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x200000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasLmt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasMacmd5()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasMacsha1()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasMake()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasMccmnc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x800000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasModel()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasOs()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasOsv()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasPpi()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasPxratio()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasSua()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasUa()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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

.method public hasW()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->bitField0_:I

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
