.class public final Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BidToken.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;,
        Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final BRAND_FIELD_NUMBER:I = 0x17

.field public static final CARRIER_FIELD_NUMBER:I = 0x6

.field public static final DBT_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x7

.field public static final GEO_FIELD_NUMBER:I = 0x9

.field public static final HARDWARE_FIELD_NUMBER:I = 0x16

.field public static final HAS_GY_FIELD_NUMBER:I = 0x11

.field public static final HWV_FIELD_NUMBER:I = 0x5

.field public static final H_FIELD_NUMBER:I = 0xb

.field public static final JS_FIELD_NUMBER:I = 0x8

.field public static final KB_LOC_FIELD_NUMBER:I = 0x12

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x1

.field public static final LOCALE_FIELD_NUMBER:I = 0x13

.field public static final MAKE_FIELD_NUMBER:I = 0x3

.field public static final MODEL_FIELD_NUMBER:I = 0x4

.field public static final ORTN_FIELD_NUMBER:I = 0x10

.field public static final OSV_FIELD_NUMBER:I = 0x2

.field public static final OS_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPI_FIELD_NUMBER:I = 0xc

.field public static final PXRATIO_FIELD_NUMBER:I = 0xd

.field public static final W_FIELD_NUMBER:I = 0xa

.field public static final XDPI_FIELD_NUMBER:I = 0x14

.field public static final YDPI_FIELD_NUMBER:I = 0x15


# instance fields
.field private bitField0_:I

.field private brand_:Ljava/lang/String;

.field private carrier_:Ljava/lang/String;

.field private dbt_:J

.field private devicetype_:I

.field private geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

.field private h_:I

.field private hardware_:Ljava/lang/String;

.field private hasGy_:Z

.field private hwv_:Ljava/lang/String;

.field private js_:I

.field private kbLoc_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private make_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private ortn_:I

.field private os_:Ljava/lang/String;

.field private osv_:Ljava/lang/String;

.field private ppi_:I

.field private pxratio_:D

.field private w_:I

.field private xdpi_:F

.field private ydpi_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

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
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method static bridge synthetic a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setBrand(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setCarrier(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setDbt(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearBrand()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x400001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getBrand()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearCarrier()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getCarrier()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearDbt()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->dbt_:J

    .line 10
    .line 11
    return-void
.end method

.method private clearDevicetype()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->devicetype_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearGeo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    and-int/lit16 v0, v0, -0x101

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearH()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->h_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHardware()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x200001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getHardware()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearHasGy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x10001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hasGy_:Z

    .line 11
    .line 12
    return-void
.end method

.method private clearHwv()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getHwv()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearJs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->js_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearKbLoc()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x20001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getKbLoc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearLanguage()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getLanguage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearLocale()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x40001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getLocale()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearMake()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearModel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearOrtn()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ortn_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearOs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getOs()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearOsv()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->getOsv()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPpi()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ppi_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPxratio()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->pxratio_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearW()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->w_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearXdpi()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x80001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->xdpi_:F

    .line 11
    .line 12
    return-void
.end method

.method private clearYdpi()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x100001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ydpi_:F

    .line 11
    .line 12
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setDevicetype(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setGeo(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setH(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setHardware(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic h(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setHasGy(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setHwv(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setJs(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic k(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setKbLoc(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic l(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setLanguage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic m(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setLocale(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private mergeGeo(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;->newBuilder(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo$a;

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
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 38
    .line 39
    or-int/lit16 p1, p1, 0x100

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method static bridge synthetic n(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setMake(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setModel(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic p(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setOrtn(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

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

.method static bridge synthetic q(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setOs(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic r(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setOsv(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic s(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setPpi(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setBrand(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x400000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setBrandBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    const/high16 v0, 0x400000

    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 16
    .line 17
    return-void
.end method

.method private setCarrier(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setCarrierBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x20

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setDbt(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->dbt_:J

    .line 8
    .line 9
    return-void
.end method

.method private setDevicetype(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->devicetype_:I

    .line 8
    .line 9
    return-void
.end method

.method private setGeo(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 7
    .line 8
    or-int/lit16 p1, p1, 0x100

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setH(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->h_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHardware(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x200000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setHardwareBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    const/high16 v0, 0x200000

    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 16
    .line 17
    return-void
.end method

.method private setHasGy(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hasGy_:Z

    .line 9
    .line 10
    return-void
.end method

.method private setHwv(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setHwvBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x10

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setJs(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->js_:I

    .line 8
    .line 9
    return-void
.end method

.method private setKbLoc(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x20000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setKbLocBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    const/high16 v0, 0x20000

    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 16
    .line 17
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setLanguageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x40000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    const/high16 v0, 0x40000

    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 16
    .line 17
    return-void
.end method

.method private setMake(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setMakeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x4

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x8

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setOrtn(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ortn_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    const v0, 0x8000

    .line 10
    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 14
    .line 15
    return-void
.end method

.method private setOrtnValue(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 8
    .line 9
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ortn_:I

    .line 10
    .line 11
    return-void
.end method

.method private setOs(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x2000

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setOsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit16 p1, p1, 0x2000

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setOsv(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setOsvBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method private setPpi(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ppi_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPxratio(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->pxratio_:D

    .line 8
    .line 9
    return-void
.end method

.method private setW(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->w_:I

    .line 8
    .line 9
    return-void
.end method

.method private setXdpi(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->xdpi_:F

    .line 9
    .line 10
    return-void
.end method

.method private setYdpi(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ydpi_:F

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic t(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setPxratio(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic u(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setW(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic v(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setXdpi(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic w(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->setYdpi(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic x()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    sget-object v0, Lcom/moloco/sdk/c;->a:[I

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    return-object v1

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_4
    const-string v1, "bitField0_"

    .line 58
    .line 59
    const-string v2, "language_"

    .line 60
    .line 61
    const-string v3, "osv_"

    .line 62
    .line 63
    const-string v4, "make_"

    .line 64
    .line 65
    const-string v5, "model_"

    .line 66
    .line 67
    const-string v6, "hwv_"

    .line 68
    .line 69
    const-string v7, "carrier_"

    .line 70
    .line 71
    const-string v8, "devicetype_"

    .line 72
    .line 73
    const-string v9, "js_"

    .line 74
    .line 75
    const-string v10, "geo_"

    .line 76
    .line 77
    const-string/jumbo v11, "w_"

    .line 78
    .line 79
    .line 80
    const-string v12, "h_"

    .line 81
    .line 82
    const-string v13, "ppi_"

    .line 83
    .line 84
    const-string v14, "pxratio_"

    .line 85
    .line 86
    const-string v15, "os_"

    .line 87
    .line 88
    const-string v16, "dbt_"

    .line 89
    .line 90
    const-string v17, "ortn_"

    .line 91
    .line 92
    const-string v18, "hasGy_"

    .line 93
    .line 94
    const-string v19, "kbLoc_"

    .line 95
    .line 96
    const-string v20, "locale_"

    .line 97
    .line 98
    const-string/jumbo v21, "xdpi_"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v22, "ydpi_"

    .line 102
    .line 103
    .line 104
    const-string v23, "hardware_"

    .line 105
    .line 106
    const-string v24, "brand_"

    .line 107
    .line 108
    filled-new-array/range {v1 .. v24}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "\u0000\u0017\u0000\u0001\u0001\u0017\u0017\u0000\u0000\u0000\u0001\u1208\u0000\u0002\u1208\u0001\u0003\u1208\u0002\u0004\u1208\u0003\u0005\u1208\u0004\u0006\u1208\u0005\u0007\u100b\u0006\u0008\u100b\u0007\t\u1009\u0008\n\u100b\t\u000b\u100b\n\u000c\u100b\u000b\r\u1000\u000c\u000e\u1208\r\u000f\u1003\u000e\u0010\u100c\u000f\u0011\u1007\u0010\u0012\u1208\u0011\u0013\u1208\u0012\u0014\u1001\u0013\u0015\u1001\u0014\u0016\u1208\u0015\u0017\u1208\u0016"

    .line 113
    .line 114
    sget-object v2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 115
    .line 116
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;-><init>(Lcom/moloco/sdk/d;)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
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

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBrandBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->brand_:Ljava/lang/String;

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

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCarrierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->carrier_:Ljava/lang/String;

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

.method public getDbt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->dbt_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDevicetype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->devicetype_:I

    .line 2
    .line 3
    return v0
.end method

.method public getGeo()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->geo_:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;->getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->h_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hardware_:Ljava/lang/String;

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

.method public getHasGy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hasGy_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHwv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHwvBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->hwv_:Ljava/lang/String;

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

.method public getJs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->js_:I

    .line 2
    .line 3
    return v0
.end method

.method public getKbLoc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKbLocBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->kbLoc_:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->language_:Ljava/lang/String;

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

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->locale_:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->make_:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->model_:Ljava/lang/String;

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

.method public getOrtn()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ortn_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->forNumber(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->UNRECOGNIZED:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getOrtnValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ortn_:I

    .line 2
    .line 3
    return v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->os_:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsvBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->osv_:Ljava/lang/String;

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
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ppi_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPxratio()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->pxratio_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->w_:I

    .line 2
    .line 3
    return v0
.end method

.method public getXdpi()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->xdpi_:F

    .line 2
    .line 3
    return v0
.end method

.method public getYdpi()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->ydpi_:F

    .line 2
    .line 3
    return v0
.end method

.method public hasBrand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasCarrier()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasDbt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasDevicetype()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasGeo()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasH()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasHardware()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasHasGy()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasHwv()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasJs()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasKbLoc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasLocale()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasMake()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasModel()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasOrtn()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasOs()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasOsv()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasPpi()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasPxratio()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasW()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasXdpi()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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

.method public hasYdpi()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->bitField0_:I

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
