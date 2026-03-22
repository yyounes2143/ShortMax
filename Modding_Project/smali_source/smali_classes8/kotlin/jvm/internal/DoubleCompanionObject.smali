.class public final Lkotlin/jvm/internal/DoubleCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE_BITS:I = 0x40

.field public static final SIZE_BYTES:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/DoubleCompanionObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getMAX_VALUE$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMIN_VALUE$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getNEGATIVE_INFINITY$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getNaN$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPOSITIVE_INFINITY$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSIZE_BITS$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSIZE_BYTES$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getMAX_VALUE()D
    .locals 2

    .line 1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final getMIN_VALUE()D
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNEGATIVE_INFINITY()D
    .locals 2

    .line 1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNaN()D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPOSITIVE_INFINITY()D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2
    .line 3
    return-wide v0
.end method
