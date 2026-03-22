.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorVectorConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->invoke(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/animation/core/TwoWayConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->invoke-8_81llA(J)Landroidx/compose/animation/core/AnimationVector4D;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invoke-8_81llA(J)Landroidx/compose/animation/core/AnimationVector4D;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getM1$p()[F

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v1, v2, v3, v0, v4}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    float-to-double v4, v1

    .line 33
    const v1, 0x3eaaaaab

    .line 34
    .line 35
    .line 36
    float-to-double v6, v1

    .line 37
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    double-to-float v1, v4

    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getM1$p()[F

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v4, v2, v3, v0, v5}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    float-to-double v4, v4

    .line 52
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    double-to-float v4, v4

    .line 57
    const/4 v5, 0x2

    .line 58
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getM1$p()[F

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v5, v2, v3, v0, v8}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    float-to-double v2, v0

    .line 67
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    double-to-float v0, v2

    .line 72
    new-instance v2, Landroidx/compose/animation/core/AnimationVector4D;

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-direct {v2, p1, v1, v4, v0}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method
