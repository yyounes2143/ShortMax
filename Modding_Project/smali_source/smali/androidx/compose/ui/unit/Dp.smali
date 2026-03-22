.class public final Landroidx/compose/ui/unit/Dp;
.super Ljava/lang/Object;
.source "Dp.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/Dp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/ui/unit/Dp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/Dp$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Hairline:F

.field private static final Infinity:F

.field private static final Unspecified:F


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/Dp$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/ui/unit/Dp;->Hairline:F

    .line 15
    .line 16
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Landroidx/compose/ui/unit/Dp;->Infinity:F

    .line 23
    .line 24
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    .line 31
    .line 32
    return-void
.end method

.method private synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getHairline$cp()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/unit/Dp;->Hairline:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getInfinity$cp()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/unit/Dp;->Infinity:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getUnspecified$cp()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic box-impl(F)Landroidx/compose/ui/unit/Dp;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static compareTo-0680j_4(FF)I
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(F)F
    .locals 0

    .line 1
    return p0
.end method

.method public static final div-0680j_4(FF)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    div-float/2addr p0, p1

    .line 2
    return p0
.end method

.method public static final div-u2uoSUM(FF)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    div-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static final div-u2uoSUM(FI)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static equals-impl(FLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/unit/Dp;

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
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static final equals-impl0(FF)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static hashCode-impl(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final minus-5rwHm24(FF)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    sub-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final plus-5rwHm24(FF)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    add-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final times-u2uoSUM(FF)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    mul-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static final times-u2uoSUM(FI)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    int-to-float p1, p1

    mul-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static toString-impl(F)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Dp.Unspecified"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, ".dp"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    return-object p0
.end method

.method public static final unaryMinus-D9Ej5fM(F)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    neg-float p0, p0

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public compareTo-0680j_4(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl(FLjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getValue()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 2
    .line 3
    return v0
.end method
