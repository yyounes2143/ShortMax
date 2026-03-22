.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;
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
        "Landroidx/compose/animation/core/AnimationVector4D;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->invoke-vNxB06k(Landroidx/compose/animation/core/AnimationVector4D;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invoke-vNxB06k(Landroidx/compose/animation/core/AnimationVector4D;)J
    .locals 7
    .param p1    # Landroidx/compose/animation/core/AnimationVector4D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV2()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-double v0, v0

    .line 11
    const/high16 v2, 0x40400000    # 3.0f

    .line 12
    .line 13
    float-to-double v2, v2

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV3()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    double-to-float v1, v4

    .line 29
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV4()F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    float-to-double v4, v4

    .line 34
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    double-to-float v2, v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getInverseM1$p()[F

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v3, v0, v1, v2, v4}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getInverseM1$p()[F

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v0, v1, v2, v5}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x2

    .line 58
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->access$getInverseM1$p()[F

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v5, v0, v1, v2, v6}, Landroidx/compose/animation/ColorVectorConverterKt;->access$multiplyColumn(IFFF[F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV1()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 v1, 0x0

    .line 71
    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-static {p1, v1, v2}, Lkotlin/ranges/e;->m(FFF)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/high16 v1, -0x40000000    # -2.0f

    .line 78
    .line 79
    const/high16 v2, 0x40000000    # 2.0f

    .line 80
    .line 81
    invoke-static {v3, v1, v2}, Lkotlin/ranges/e;->m(FFF)F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v4, v1, v2}, Lkotlin/ranges/e;->m(FFF)F

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->m(FFF)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v3, v4, v0, p1, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iget-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 104
    .line 105
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    return-wide v0
.end method
