.class public final Lkotlin/jvm/internal/FloatCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIZE_BITS:I = 0x20

.field public static final SIZE_BYTES:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/FloatCompanionObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/FloatCompanionObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

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
.method public final getMAX_VALUE()F
    .locals 1

    .line 1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final getMIN_VALUE()F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getNEGATIVE_INFINITY()F
    .locals 1

    .line 1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 2
    .line 3
    return v0
.end method

.method public final getNaN()F
    .locals 1

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    return v0
.end method

.method public final getPOSITIVE_INFINITY()F
    .locals 1

    .line 1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2
    .line 3
    return v0
.end method
