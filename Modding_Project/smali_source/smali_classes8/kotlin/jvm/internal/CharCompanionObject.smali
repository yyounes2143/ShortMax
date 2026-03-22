.class public final Lkotlin/jvm/internal/CharCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/CharCompanionObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final SIZE_BITS:I = 0x10

.field public static final SIZE_BYTES:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/CharCompanionObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/CharCompanionObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/jvm/internal/CharCompanionObject;->INSTANCE:Lkotlin/jvm/internal/CharCompanionObject;

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
