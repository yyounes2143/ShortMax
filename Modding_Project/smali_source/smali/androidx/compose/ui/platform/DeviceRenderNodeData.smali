.class public final Landroidx/compose/ui/platform/DeviceRenderNodeData;
.super Ljava/lang/Object;
.source "DeviceRenderNode.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private alpha:F

.field private ambientShadowColor:I

.field private final bottom:I

.field private cameraDistance:F

.field private clipToBounds:Z

.field private clipToOutline:Z

.field private elevation:F

.field private final height:I

.field private final left:I

.field private pivotX:F

.field private pivotY:F

.field private renderEffect:Landroidx/compose/ui/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final right:I

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private spotShadowColor:I

.field private final top:I

.field private translationX:F

.field private translationY:F

.field private final uniqueId:J

.field private final width:I


# direct methods
.method public constructor <init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;)V
    .locals 3
    .param p25    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    move v1, p3

    .line 3
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    move v1, p4

    .line 4
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    move v1, p5

    .line 5
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    move v1, p6

    .line 6
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    move v1, p7

    .line 7
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    move v1, p8

    .line 8
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    move v1, p9

    .line 9
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    move v1, p10

    .line 10
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    move v1, p11

    .line 11
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    move v1, p12

    .line 12
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    move/from16 v1, p13

    .line 13
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    move/from16 v1, p14

    .line 14
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    move/from16 v1, p15

    .line 15
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    move/from16 v1, p16

    .line 16
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    move/from16 v1, p17

    .line 17
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    move/from16 v1, p18

    .line 18
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    move/from16 v1, p19

    .line 19
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    move/from16 v1, p20

    .line 20
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    move/from16 v1, p21

    .line 21
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    move/from16 v1, p22

    .line 22
    iput-boolean v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    move/from16 v1, p23

    .line 23
    iput-boolean v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    move/from16 v1, p24

    .line 24
    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/platform/DeviceRenderNodeData;JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;ILjava/lang/Object;)Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    goto :goto_f

    :cond_f
    move/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_10

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    goto :goto_10

    :cond_10
    move/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_11

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    goto :goto_11

    :cond_11
    move/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_12

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    goto :goto_12

    :cond_12
    move/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_13

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    goto :goto_13

    :cond_13
    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_14

    iget-boolean v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    goto :goto_14

    :cond_14
    move/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_16

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    goto :goto_16

    :cond_16
    move/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget-object v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p25

    :goto_17
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Landroidx/compose/ui/platform/DeviceRenderNodeData;->copy(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;)Landroidx/compose/ui/platform/DeviceRenderNodeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component10()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 2
    .line 3
    return v0
.end method

.method public final component11()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 2
    .line 3
    return v0
.end method

.method public final component12()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 2
    .line 3
    return v0
.end method

.method public final component13()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final component14()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final component15()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 2
    .line 3
    return v0
.end method

.method public final component16()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 2
    .line 3
    return v0
.end method

.method public final component17()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 2
    .line 3
    return v0
.end method

.method public final component18()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 2
    .line 3
    return v0
.end method

.method public final component19()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 2
    .line 3
    return v0
.end method

.method public final component20()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 2
    .line 3
    return v0
.end method

.method public final component21()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component22()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component23()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final component24()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 2
    .line 3
    return v0
.end method

.method public final component9()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 2
    .line 3
    return v0
.end method

.method public final copy(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;)Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 27
    .param p25    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    new-instance v26, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v25}, Landroidx/compose/ui/platform/DeviceRenderNodeData;-><init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;)V

    return-object v26
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 23
    .line 24
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 30
    .line 31
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 37
    .line 38
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 44
    .line 45
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 46
    .line 47
    if-eq v1, v3, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 51
    .line 52
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 53
    .line 54
    if-eq v1, v3, :cond_7

    .line 55
    .line 56
    return v2

    .line 57
    :cond_7
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 58
    .line 59
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 60
    .line 61
    if-eq v1, v3, :cond_8

    .line 62
    .line 63
    return v2

    .line 64
    :cond_8
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_9

    .line 81
    .line 82
    return v2

    .line 83
    :cond_9
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_b

    .line 119
    .line 120
    return v2

    .line 121
    :cond_b
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_c

    .line 138
    .line 139
    return v2

    .line 140
    :cond_c
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 147
    .line 148
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_d

    .line 157
    .line 158
    return v2

    .line 159
    :cond_d
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 160
    .line 161
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 162
    .line 163
    if-eq v1, v3, :cond_e

    .line 164
    .line 165
    return v2

    .line 166
    :cond_e
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 167
    .line 168
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 169
    .line 170
    if-eq v1, v3, :cond_f

    .line 171
    .line 172
    return v2

    .line 173
    :cond_f
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 180
    .line 181
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_10

    .line 190
    .line 191
    return v2

    .line 192
    :cond_10
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 199
    .line 200
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_11

    .line 209
    .line 210
    return v2

    .line 211
    :cond_11
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 212
    .line 213
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 218
    .line 219
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_12

    .line 228
    .line 229
    return v2

    .line 230
    :cond_12
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 231
    .line 232
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 237
    .line 238
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_13

    .line 247
    .line 248
    return v2

    .line 249
    :cond_13
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 250
    .line 251
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 256
    .line 257
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_14

    .line 266
    .line 267
    return v2

    .line 268
    :cond_14
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 269
    .line 270
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 275
    .line 276
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_15

    .line 285
    .line 286
    return v2

    .line 287
    :cond_15
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 288
    .line 289
    iget-boolean v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 290
    .line 291
    if-eq v1, v3, :cond_16

    .line 292
    .line 293
    return v2

    .line 294
    :cond_16
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 295
    .line 296
    iget-boolean v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 297
    .line 298
    if-eq v1, v3, :cond_17

    .line 299
    .line 300
    return v2

    .line 301
    :cond_17
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 308
    .line 309
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_18

    .line 318
    .line 319
    return v2

    .line 320
    :cond_18
    iget-object v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 321
    .line 322
    iget-object p1, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 323
    .line 324
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-nez p1, :cond_19

    .line 329
    .line 330
    return v2

    .line 331
    :cond_19
    return v0
.end method

.method public final getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final getAmbientShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBottom()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCameraDistance()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 2
    .line 3
    return v0
.end method

.method public final getClipToBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getClipToOutline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getElevation()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 2
    .line 3
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPivotY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRotationX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRotationY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRotationZ()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getSpotShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslationX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getUniqueId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    .line 135
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    .line 171
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    .line 180
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    .line 185
    move v1, v2

    .line 186
    :cond_0
    add-int/2addr v0, v1

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    .line 188
    .line 189
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 190
    .line 191
    if-eqz v1, :cond_1

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_1
    move v2, v1

    .line 195
    :goto_0
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    .line 197
    .line 198
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    .line 207
    iget-object v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 208
    .line 209
    if-nez v1, :cond_2

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    :goto_1
    add-int/2addr v0, v1

    .line 218
    return v0
.end method

.method public final setAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 2
    .line 3
    return-void
.end method

.method public final setAmbientShadowColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCameraDistance(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 2
    .line 3
    return-void
.end method

.method public final setClipToBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setElevation(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 2
    .line 3
    return-void
.end method

.method public final setPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 2
    .line 3
    return-void
.end method

.method public final setPivotY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationZ(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 2
    .line 3
    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 2
    .line 3
    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 2
    .line 3
    return-void
.end method

.method public final setSpotShadowColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 2
    .line 3
    return-void
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
    const-string v1, "DeviceRenderNodeData(uniqueId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", left="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", top="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", right="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", bottom="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", width="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", height="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", scaleX="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", scaleY="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", translationX="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", translationY="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", elevation="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", ambientShadowColor="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", spotShadowColor="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", rotationZ="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", rotationX="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", rotationY="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", cameraDistance="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", pivotX="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", pivotY="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", clipToOutline="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", clipToBounds="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", alpha="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", renderEffect="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const/16 v1, 0x29

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    return-object v0
.end method
