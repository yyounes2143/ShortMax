.class final Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "GraphicsLayerModifier.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alpha:F

.field private final ambientShadowColor:J

.field private final cameraDistance:F

.field private final clip:Z

.field private final layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderEffect:Landroidx/compose/ui/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rotationX:F

.field private final rotationY:F

.field private final rotationZ:F

.field private final scaleX:F

.field private final scaleY:F

.field private final shadowElevation:F

.field private final shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spotShadowColor:J

.field private final transformOrigin:J

.field private final translationX:F

.field private final translationY:F


# direct methods
.method private constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFFFFFJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "Z",
            "Landroidx/compose/ui/graphics/RenderEffect;",
            "JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p20

    .line 2
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    move v1, p1

    .line 3
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    move v1, p2

    .line 4
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    move v1, p3

    .line 5
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    move v1, p4

    .line 6
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    move v1, p5

    .line 7
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    move v1, p6

    .line 8
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    move v1, p7

    .line 9
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    move v1, p8

    .line 10
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    move v1, p9

    .line 11
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    move v1, p10

    .line 12
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    move-wide v1, p11

    .line 13
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    move-wide/from16 v1, p16

    .line 17
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    move-wide/from16 v1, p18

    .line 18
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 19
    new-instance v1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;-><init>(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getAlpha$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getAmbientShadowColor$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getCameraDistance$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getClip$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLayerBlock$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRenderEffect$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRotationX$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getRotationY$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getRotationZ$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getScaleX$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getScaleY$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getShadowElevation$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getShape$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSpotShadowColor$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getTransformOrigin$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getTranslationX$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTranslationY$p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 14
    .line 15
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 16
    .line 17
    cmpg-float v1, v1, v2

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 22
    .line 23
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 24
    .line 25
    cmpg-float v1, v1, v2

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 30
    .line 31
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 32
    .line 33
    cmpg-float v1, v1, v2

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 38
    .line 39
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 40
    .line 41
    cmpg-float v1, v1, v2

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 46
    .line 47
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 48
    .line 49
    cmpg-float v1, v1, v2

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 54
    .line 55
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 56
    .line 57
    cmpg-float v1, v1, v2

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 62
    .line 63
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 64
    .line 65
    cmpg-float v1, v1, v2

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 70
    .line 71
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 72
    .line 73
    cmpg-float v1, v1, v2

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 78
    .line 79
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 80
    .line 81
    cmpg-float v1, v1, v2

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 86
    .line 87
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 88
    .line 89
    cmpg-float v1, v1, v2

    .line 90
    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 94
    .line 95
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 96
    .line 97
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 104
    .line 105
    iget-object v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 106
    .line 107
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 114
    .line 115
    iget-boolean v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 116
    .line 117
    if-ne v1, v2, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 120
    .line 121
    iget-object v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 122
    .line 123
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 130
    .line 131
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 132
    .line 133
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 140
    .line 141
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 142
    .line 143
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_2

    .line 148
    .line 149
    const/4 v0, 0x1

    .line 150
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 91
    .line 92
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->hashCode-impl(J)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 118
    .line 119
    if-eqz v1, :cond_0

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    const/4 v1, 0x0

    .line 127
    :goto_0
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 131
    .line 132
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 140
    .line 141
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$measure"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    new-instance v4, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;

    .line 24
    .line 25
    invoke-direct {v4, p2, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v0, p1

    .line 32
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    const-string v1, "SimpleGraphicsLayerModifier(scaleX="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", scaleY="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", alpha = "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", translationX="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", translationY="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", shadowElevation="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", rotationX="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", rotationY="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", rotationZ="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", cameraDistance="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", transformOrigin="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 112
    .line 113
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->toString-impl(J)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", shape="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", clip="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", renderEffect="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", ambientShadowColor="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 156
    .line 157
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", spotShadowColor="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 170
    .line 171
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const/16 v1, 0x29

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0
.end method
