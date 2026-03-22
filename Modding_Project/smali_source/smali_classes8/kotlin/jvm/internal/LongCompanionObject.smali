.class public final Lkotlin/jvm/internal/LongCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/LongCompanionObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE_BITS:I = 0x40

.field public static final SIZE_BYTES:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/LongCompanionObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/LongCompanionObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/jvm/internal/LongCompanionObject;->INSTANCE:Lkotlin/jvm/internal/LongCompanionObject;

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
