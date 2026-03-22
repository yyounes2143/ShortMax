.class public final Landroidx/compose/ui/platform/RenderNodeApi29;
.super Ljava/lang/Object;
.source "RenderNodeApi29.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/DeviceRenderNode;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private internalRenderEffect:Landroidx/compose/ui/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderNode:Landroid/graphics/RenderNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ownerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    const-string p1, "Compose"

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/platform/h1;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public discardDisplayList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/a1;->a(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public drawInto(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/x0;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dumpRenderNodeData()Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 29
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v27, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    .line 4
    .line 5
    move-object/from16 v1, v27

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/compose/ui/platform/j0;->a(Landroid/graphics/RenderNode;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object v4, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 14
    .line 15
    invoke-static {v4}, Landroidx/compose/ui/platform/r;->a(Landroid/graphics/RenderNode;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 20
    .line 21
    invoke-static {v5}, Landroidx/compose/ui/platform/v;->a(Landroid/graphics/RenderNode;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 26
    .line 27
    invoke-static {v6}, Landroidx/compose/ui/platform/w;->a(Landroid/graphics/RenderNode;)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v7, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 32
    .line 33
    invoke-static {v7}, Landroidx/compose/ui/platform/x;->a(Landroid/graphics/RenderNode;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-object v8, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 38
    .line 39
    invoke-static {v8}, Landroidx/compose/ui/platform/z;->a(Landroid/graphics/RenderNode;)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 44
    .line 45
    invoke-static {v9}, Landroidx/compose/ui/platform/a0;->a(Landroid/graphics/RenderNode;)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    iget-object v10, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 50
    .line 51
    invoke-static {v10}, Landroidx/compose/ui/platform/b0;->a(Landroid/graphics/RenderNode;)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    iget-object v11, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 56
    .line 57
    invoke-static {v11}, Landroidx/compose/ui/platform/c0;->a(Landroid/graphics/RenderNode;)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    iget-object v12, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 62
    .line 63
    invoke-static {v12}, Landroidx/compose/ui/platform/d0;->a(Landroid/graphics/RenderNode;)F

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    iget-object v13, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 68
    .line 69
    invoke-static {v13}, Landroidx/compose/ui/platform/u0;->a(Landroid/graphics/RenderNode;)F

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    iget-object v14, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 74
    .line 75
    invoke-static {v14}, Landroidx/compose/ui/platform/f1;->a(Landroid/graphics/RenderNode;)F

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    iget-object v15, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 80
    .line 81
    invoke-static {v15}, Landroidx/compose/ui/platform/i1;->a(Landroid/graphics/RenderNode;)I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    move-object/from16 v28, v1

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 88
    .line 89
    invoke-static {v1}, Landroidx/compose/ui/platform/j1;->a(Landroid/graphics/RenderNode;)I

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 94
    .line 95
    invoke-static {v1}, Landroidx/compose/ui/platform/k1;->a(Landroid/graphics/RenderNode;)F

    .line 96
    .line 97
    .line 98
    move-result v17

    .line 99
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 100
    .line 101
    invoke-static {v1}, Landroidx/compose/ui/platform/l1;->a(Landroid/graphics/RenderNode;)F

    .line 102
    .line 103
    .line 104
    move-result v18

    .line 105
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 106
    .line 107
    invoke-static {v1}, Landroidx/compose/ui/platform/m1;->a(Landroid/graphics/RenderNode;)F

    .line 108
    .line 109
    .line 110
    move-result v19

    .line 111
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 112
    .line 113
    invoke-static {v1}, Landroidx/compose/ui/platform/o;->a(Landroid/graphics/RenderNode;)F

    .line 114
    .line 115
    .line 116
    move-result v20

    .line 117
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 118
    .line 119
    invoke-static {v1}, Landroidx/compose/ui/platform/p;->a(Landroid/graphics/RenderNode;)F

    .line 120
    .line 121
    .line 122
    move-result v21

    .line 123
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 124
    .line 125
    invoke-static {v1}, Landroidx/compose/ui/platform/q;->a(Landroid/graphics/RenderNode;)F

    .line 126
    .line 127
    .line 128
    move-result v22

    .line 129
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 130
    .line 131
    invoke-static {v1}, Landroidx/compose/ui/platform/s;->a(Landroid/graphics/RenderNode;)Z

    .line 132
    .line 133
    .line 134
    move-result v23

    .line 135
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 136
    .line 137
    invoke-static {v1}, Landroidx/compose/ui/platform/t;->a(Landroid/graphics/RenderNode;)Z

    .line 138
    .line 139
    .line 140
    move-result v24

    .line 141
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 142
    .line 143
    invoke-static {v1}, Landroidx/compose/ui/platform/u;->a(Landroid/graphics/RenderNode;)F

    .line 144
    .line 145
    .line 146
    move-result v25

    .line 147
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeApi29;->internalRenderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 148
    .line 149
    move-object/from16 v26, v1

    .line 150
    .line 151
    move-object/from16 v1, v28

    .line 152
    .line 153
    invoke-direct/range {v1 .. v26}, Landroidx/compose/ui/platform/DeviceRenderNodeData;-><init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;)V

    .line 154
    .line 155
    .line 156
    return-object v27
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/u;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAmbientShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/i1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/x;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCameraDistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/o;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getClipToBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/t;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getClipToOutline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/s;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/f1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHasDisplayList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/z0;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/a0;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "matrix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/v0;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/r;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "matrix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/r0;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/p;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/q;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->internalRenderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/w;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRotationX()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/l1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/m1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRotationZ()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/k1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/b0;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/c0;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSpotShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/j1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/v;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/d0;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/u0;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUniqueId()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/j0;->a(Landroid/graphics/RenderNode;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/z;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public offsetLeftAndRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/n0;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/b1;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/graphics/CanvasHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/CanvasHolder;",
            "Landroidx/compose/ui/graphics/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "canvasHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "drawBlock"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/platform/k0;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "renderNode.beginRecording()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v0, p2, v4, v2, v3}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/compose/ui/platform/l0;->a(Landroid/graphics/RenderNode;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/q0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAmbientShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/e0;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/n;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/m0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClipToOutline(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/g0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/d1;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHasOverlappingRendering(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/o0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/h0;->a(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/y0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/e1;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPosition(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/y;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->internalRenderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;->setRenderEffect(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/s0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/g1;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotationZ(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/f0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/w0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/p0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpotShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/t0;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/i0;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/c1;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
