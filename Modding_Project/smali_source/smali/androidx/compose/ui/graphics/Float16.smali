.class public final Landroidx/compose/ui/graphics/Float16;
.super Ljava/lang/Object;
.source "Float16.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Float16$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/ui/graphics/Float16;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Float16$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Epsilon:S

.field private static final FP16_COMBINED:I = 0x7fff

.field private static final FP16_EXPONENT_BIAS:I = 0xf

.field private static final FP16_EXPONENT_MASK:I = 0x1f

.field private static final FP16_EXPONENT_MAX:I = 0x7c00

.field private static final FP16_EXPONENT_SHIFT:I = 0xa

.field private static final FP16_SIGNIFICAND_MASK:I = 0x3ff

.field private static final FP16_SIGN_MASK:I = 0x8000

.field private static final FP16_SIGN_SHIFT:I = 0xf

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final FP32_EXPONENT_BIAS:I = 0x7f

.field private static final FP32_EXPONENT_MASK:I = 0xff

.field private static final FP32_EXPONENT_SHIFT:I = 0x17

.field private static final FP32_QNAN_MASK:I = 0x400000

.field private static final FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final FP32_SIGN_SHIFT:I = 0x1f

.field private static final LowestValue:S

.field public static final MaxExponent:I = 0xf

.field private static final MaxValue:S

.field public static final MinExponent:I = -0xe

.field private static final MinNormal:S

.field private static final MinValue:S

.field private static final NaN:S

.field private static final NegativeInfinity:S

.field private static final NegativeOne:S

.field private static final NegativeZero:S

.field private static final One:S

.field private static final PositiveInfinity:S

.field private static final PositiveZero:S

.field public static final Size:I = 0x10


# instance fields
.field private final halfValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Float16$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Float16$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    .line 8
    .line 9
    const/16 v0, 0x1400

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->Epsilon:S

    .line 16
    .line 17
    const/16 v0, -0x401

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->LowestValue:S

    .line 24
    .line 25
    const/16 v0, 0x7bff

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MaxValue:S

    .line 32
    .line 33
    const/16 v0, 0x400

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinNormal:S

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinValue:S

    .line 47
    .line 48
    const/16 v0, 0x7e00

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    .line 55
    .line 56
    const/16 v0, -0x400

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeInfinity:S

    .line 63
    .line 64
    const/16 v0, -0x8000

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeZero:S

    .line 71
    .line 72
    const/16 v0, 0x7c00

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveInfinity:S

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveZero:S

    .line 86
    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->One:S

    .line 94
    .line 95
    const/high16 v0, -0x40800000    # -1.0f

    .line 96
    .line 97
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeOne:S

    .line 102
    .line 103
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 104
    .line 105
    const/high16 v0, 0x3f000000    # 0.5f

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sput v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    .line 112
    .line 113
    return-void
.end method

.method private synthetic constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-short p1, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 5
    .line 6
    return-void
.end method

.method public static final absoluteValue-slo4al4(S)S
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    .line 2
    .line 3
    int-to-short p0, p0

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static final synthetic access$getEpsilon$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->Epsilon:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getLowestValue$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->LowestValue:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMaxValue$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->MaxValue:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMinNormal$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->MinNormal:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMinValue$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->MinValue:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNaN$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNegativeInfinity$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeInfinity:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNegativeZero$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeZero:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getPositiveInfinity$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveInfinity:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getPositiveZero$cp()S
    .locals 1

    .line 1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveZero:S

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic box-impl(S)Landroidx/compose/ui/graphics/Float16;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Float16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/Float16;-><init>(S)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final ceil-slo4al4(S)S
    .locals 5

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    and-int/lit16 v1, p0, 0x7fff

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0x3c00

    .line 9
    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    const v4, 0x8000

    .line 13
    .line 14
    .line 15
    and-int/2addr p0, v4

    .line 16
    shr-int/lit8 v0, v0, 0xf

    .line 17
    .line 18
    not-int v0, v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    and-int/2addr v0, v2

    .line 24
    neg-int v0, v0

    .line 25
    and-int/2addr v0, v3

    .line 26
    or-int/2addr v0, p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 p0, 0x6400

    .line 29
    .line 30
    if-ge v1, p0, :cond_2

    .line 31
    .line 32
    shr-int/lit8 p0, v1, 0xa

    .line 33
    .line 34
    rsub-int/lit8 p0, p0, 0x19

    .line 35
    .line 36
    shl-int p0, v2, p0

    .line 37
    .line 38
    sub-int/2addr p0, v2

    .line 39
    shr-int/lit8 v1, v0, 0xf

    .line 40
    .line 41
    sub-int/2addr v1, v2

    .line 42
    and-int/2addr v1, p0

    .line 43
    add-int/2addr v0, v1

    .line 44
    not-int p0, p0

    .line 45
    and-int/2addr v0, p0

    .line 46
    :cond_2
    :goto_1
    int-to-short p0, v0

    .line 47
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public static compareTo-41bOqos(SS)I
    .locals 1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/Float16$Companion;->access$toCompareValue(Landroidx/compose/ui/graphics/Float16$Companion;S)I

    move-result p0

    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16$Companion;->access$toCompareValue(Landroidx/compose/ui/graphics/Float16$Companion;S)I

    move-result p1

    .line 7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(D)S
    .locals 0

    double-to-float p0, p0

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result p0

    return p0
.end method

.method public static constructor-impl(F)S
    .locals 1

    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/Float16$Companion;->access$floatToHalf(Landroidx/compose/ui/graphics/Float16$Companion;F)S

    move-result p0

    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result p0

    return p0
.end method

.method public static constructor-impl(S)S
    .locals 0

    .line 1
    return p0
.end method

.method public static equals-impl(SLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/graphics/Float16;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Float16;->unbox-impl()S

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static final equals-impl0(SS)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public static final floor-slo4al4(S)S
    .locals 4

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    and-int/lit16 v2, p0, 0x7fff

    .line 7
    .line 8
    const/16 v3, 0x3c00

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    const v2, 0x8000

    .line 13
    .line 14
    .line 15
    and-int/2addr p0, v2

    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    and-int/2addr v0, v3

    .line 21
    or-int v1, p0, v0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/16 p0, 0x6400

    .line 25
    .line 26
    if-ge v2, p0, :cond_2

    .line 27
    .line 28
    shr-int/lit8 p0, v2, 0xa

    .line 29
    .line 30
    rsub-int/lit8 p0, p0, 0x19

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    shl-int p0, v0, p0

    .line 34
    .line 35
    sub-int/2addr p0, v0

    .line 36
    shr-int/lit8 v0, v1, 0xf

    .line 37
    .line 38
    neg-int v0, v0

    .line 39
    and-int/2addr v0, p0

    .line 40
    add-int/2addr v1, v0

    .line 41
    not-int p0, p0

    .line 42
    and-int/2addr v1, p0

    .line 43
    :cond_2
    :goto_1
    int-to-short p0, v1

    .line 44
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public static final getExponent-impl(S)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0xa

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x1f

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0xf

    .line 6
    .line 7
    return p0
.end method

.method public static final getSign-slo4al4(S)S
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-short p0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeZero:S

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(SS)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gez v0, :cond_1

    .line 17
    .line 18
    sget-short p0, Landroidx/compose/ui/graphics/Float16;->NegativeOne:S

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    sget-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveZero:S

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(SS)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    sget-short p0, Landroidx/compose/ui/graphics/Float16;->One:S

    .line 30
    .line 31
    :cond_2
    return p0
.end method

.method public static final getSignificand-impl(S)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x3ff

    .line 2
    .line 3
    return p0
.end method

.method public static hashCode-impl(S)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final isFinite-impl(S)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    .line 2
    .line 3
    const/16 v0, 0x7c00

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final isInfinite-impl(S)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    .line 2
    .line 3
    const/16 v0, 0x7c00

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final isNaN-impl(S)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    .line 2
    .line 3
    const/16 v0, 0x7c00

    .line 4
    .line 5
    if-le p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final isNormalized-impl(S)Z
    .locals 1

    .line 1
    const/16 v0, 0x7c00

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static final round-slo4al4(S)S
    .locals 4

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    and-int/lit16 v2, p0, 0x7fff

    .line 7
    .line 8
    const/16 v3, 0x3c00

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    and-int/2addr p0, v1

    .line 16
    const/16 v1, 0x3800

    .line 17
    .line 18
    if-lt v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    and-int/2addr v0, v3

    .line 23
    or-int v1, p0, v0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 p0, 0x6400

    .line 27
    .line 28
    if-ge v2, p0, :cond_2

    .line 29
    .line 30
    shr-int/lit8 p0, v2, 0xa

    .line 31
    .line 32
    rsub-int/lit8 v0, p0, 0x19

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    shl-int v0, v2, v0

    .line 36
    .line 37
    sub-int/2addr v0, v2

    .line 38
    rsub-int/lit8 p0, p0, 0x18

    .line 39
    .line 40
    shl-int p0, v2, p0

    .line 41
    .line 42
    add-int/2addr v1, p0

    .line 43
    not-int p0, v0

    .line 44
    and-int/2addr v1, p0

    .line 45
    :cond_2
    :goto_1
    int-to-short p0, v1

    .line 46
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static final toBits-impl(S)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-short p0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0xffff

    .line 11
    .line 12
    .line 13
    and-int/2addr p0, v0

    .line 14
    :goto_0
    return p0
.end method

.method public static final toByte-impl(S)B
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    int-to-byte p0, p0

    .line 7
    return p0
.end method

.method public static final toDouble-impl(S)D
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-double v0, p0

    .line 6
    return-wide v0
.end method

.method public static final toFloat-impl(S)F
    .locals 4

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    const v1, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, p0

    .line 9
    ushr-int/lit8 v0, v0, 0xa

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    and-int/2addr v0, v2

    .line 14
    and-int/lit16 p0, p0, 0x3ff

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 21
    .line 22
    const/high16 v0, 0x3f000000    # 0.5f

    .line 23
    .line 24
    add-int/2addr p0, v0

    .line 25
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sget v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    .line 30
    .line 31
    sub-float/2addr p0, v0

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    neg-float p0, p0

    .line 36
    :goto_0
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    move v0, p0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    shl-int/lit8 p0, p0, 0xd

    .line 41
    .line 42
    if-ne v0, v2, :cond_4

    .line 43
    .line 44
    const/16 v0, 0xff

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    const/high16 v2, 0x400000

    .line 49
    .line 50
    or-int/2addr p0, v2

    .line 51
    :cond_3
    :goto_1
    move v3, v0

    .line 52
    move v0, p0

    .line 53
    move p0, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    add-int/lit8 v0, v0, 0x70

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    shl-int/lit8 v1, v1, 0x10

    .line 59
    .line 60
    shl-int/lit8 p0, p0, 0x17

    .line 61
    .line 62
    or-int/2addr p0, v1

    .line 63
    or-int/2addr p0, v0

    .line 64
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public static final toHexString-impl(S)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0xffff

    .line 7
    .line 8
    .line 9
    and-int/2addr v1, p0

    .line 10
    ushr-int/lit8 v2, v1, 0xf

    .line 11
    .line 12
    ushr-int/lit8 v1, v1, 0xa

    .line 13
    .line 14
    const/16 v3, 0x1f

    .line 15
    .line 16
    and-int/2addr v1, v3

    .line 17
    and-int/lit16 p0, p0, 0x3ff

    .line 18
    .line 19
    const/16 v4, 0x2d

    .line 20
    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string p0, "Infinity"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "NaN"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x1

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    const-string v2, ""

    .line 49
    .line 50
    const-string v3, "0{2,}$"

    .line 51
    .line 52
    const-string v4, "toString(this, checkRadix(radix))"

    .line 53
    .line 54
    const/16 v5, 0x10

    .line 55
    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    if-nez p0, :cond_4

    .line 59
    .line 60
    const-string p0, "0x0.0p0"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const-string v1, "0x0."

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lkotlin/text/Regex;

    .line 83
    .line 84
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0, v2}, Lkotlin/text/Regex;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, "p-14"

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    const-string v6, "0x1."

    .line 101
    .line 102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {v5}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {p0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Lkotlin/text/Regex;

    .line 117
    .line 118
    invoke-direct {v4, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, p0, v2}, Lkotlin/text/Regex;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/16 p0, 0x70

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    add-int/lit8 v1, v1, -0xf

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-string v0, "o.toString()"

    .line 147
    .line 148
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object p0
.end method

.method public static final toInt-impl(S)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    return p0
.end method

.method public static final toLong-impl(S)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static final toRawBits-impl(S)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static final toShort-impl(S)S
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    int-to-short p0, p0

    .line 7
    return p0
.end method

.method public static toString-impl(S)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final trunc-slo4al4(S)S
    .locals 3

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    and-int/lit16 v1, p0, 0x7fff

    .line 6
    .line 7
    const/16 v2, 0x3c00

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    const v0, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v0, p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p0, 0x6400

    .line 17
    .line 18
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    shr-int/lit8 p0, v1, 0xa

    .line 21
    .line 22
    rsub-int/lit8 p0, p0, 0x19

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    shl-int p0, v1, p0

    .line 26
    .line 27
    sub-int/2addr p0, v1

    .line 28
    not-int p0, p0

    .line 29
    and-int/2addr v0, p0

    .line 30
    :cond_1
    :goto_0
    int-to-short p0, v0

    .line 31
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public static final withSign-qCeQghg(SS)S
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    and-int/lit16 p0, p0, 0x7fff

    .line 6
    .line 7
    or-int/2addr p0, p1

    .line 8
    int-to-short p0, p0

    .line 9
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Float16;->unbox-impl()S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(S)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public compareTo-41bOqos(S)I
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(SS)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16;->equals-impl(SLjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getHalfValue()S
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->hashCode-impl(S)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->toString-impl(S)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()S
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 2
    .line 3
    return v0
.end method
