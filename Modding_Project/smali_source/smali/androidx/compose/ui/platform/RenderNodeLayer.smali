.class public final Landroidx/compose/ui/platform/RenderNodeLayer;
.super Ljava/lang/Object;
.source "RenderNodeLayer.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;,
        Landroidx/compose/ui/platform/RenderNodeLayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getMatrix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drawnWithZ:Z

.field private invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isDestroyed:Z

.field private isDirty:Z

.field private final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/platform/LayerMatrixCache<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ownerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "drawBlock"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "invalidateParentLayer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    new-instance p2, Landroidx/compose/ui/platform/OutlineResolver;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/OutlineResolver;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 35
    .line 36
    new-instance p2, Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 37
    .line 38
    sget-object p3, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 39
    .line 40
    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 44
    .line 45
    new-instance p2, Landroidx/compose/ui/graphics/CanvasHolder;

    .line 46
    .line 47
    invoke-direct {p2}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 51
    .line 52
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    iput-wide p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 59
    .line 60
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 p3, 0x1d

    .line 63
    .line 64
    if-lt p2, p3, :cond_0

    .line 65
    .line 66
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi29;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi29;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi23;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi23;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    const/4 p1, 0x1

    .line 78
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setHasOverlappingRendering(Z)Z

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 82
    .line 83
    return-void
.end method

.method private final clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/OutlineResolver;->clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private final setDirty(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final triggerRepaint()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->onDescendantInvalidated(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->discardDisplayList()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
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
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->updateDisplayList()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 21
    .line 22
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    cmpl-float v0, v0, v2

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    :cond_0
    iput-boolean v7, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->drawInto(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 45
    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 53
    .line 54
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 60
    .line 61
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-float v8, v2

    .line 66
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 67
    .line 68
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getRight()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-float v4, v2

    .line 73
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 74
    .line 75
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getBottom()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-float v5, v2

    .line 80
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 81
    .line 82
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    cmpg-float v2, v2, v3

    .line 89
    .line 90
    if-gez v2, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iput-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 101
    .line 102
    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 103
    .line 104
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-interface {v2, v3}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    move v2, v0

    .line 116
    move v3, v8

    .line 117
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-interface {p1, v0, v8}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 128
    .line 129
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeLayer;->clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v7}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_1
    return-void
.end method

.method public getLayerId()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getUniqueId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOwnerViewId()J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;->getUniqueDrawingId(Landroid/view/View;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 10
    .line 11
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    cmpg-float p2, p1, v0

    .line 20
    .line 21
    if-gtz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    cmpg-float p2, v0, p2

    .line 31
    .line 32
    if-gez p2, :cond_0

    .line 33
    .line 34
    cmpg-float p1, p1, v1

    .line 35
    .line 36
    if-gtz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 39
    .line 40
    invoke-interface {p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    cmpg-float p1, v1, p1

    .line 46
    .line 47
    if-gez p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_0
    return v3

    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 53
    .line 54
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->isInOutline-k-4lQ0M(J)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_2
    return v3
.end method

.method public mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2, p2, p2, p2}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    if-eq v1, p1, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 26
    .line 27
    sub-int/2addr v2, v0

    .line 28
    invoke-interface {p2, v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetLeftAndRight(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 32
    .line 33
    sub-int/2addr p1, v1

    .line 34
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetTopAndBottom(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v2, v0

    .line 18
    mul-float/2addr v1, v2

    .line 19
    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 23
    .line 24
    iget-wide v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v3, p1

    .line 31
    mul-float/2addr v1, v3

    .line 32
    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v4, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 42
    .line 43
    invoke-interface {v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 48
    .line 49
    invoke-interface {v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    add-int/2addr v5, v0

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, p1

    .line 61
    invoke-interface {p2, v1, v4, v5, v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPosition(IIII)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 68
    .line 69
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/OutlineResolver;->update-uvyYCjk(J)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->getOutline()Landroid/graphics/Outline;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "drawBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "invalidateParentLayer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    return-void
.end method

.method public updateDisplayList()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 48
    .line 49
    invoke-interface {v2, v3, v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public updateLayerProperties-NHXXZp8(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .locals 12
    .param p13    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p13

    .line 3
    .line 4
    const-string v2, "shape"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "layoutDirection"

    .line 10
    .line 11
    move-object/from16 v3, p20

    .line 12
    .line 13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "density"

    .line 17
    .line 18
    move-object/from16 v4, p21

    .line 19
    .line 20
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-wide/from16 v5, p11

    .line 24
    .line 25
    iput-wide v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 28
    .line 29
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    move v2, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v7

    .line 48
    :goto_0
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 49
    .line 50
    move v10, p1

    .line 51
    invoke-interface {v9, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleX(F)V

    .line 52
    .line 53
    .line 54
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 55
    .line 56
    move v10, p2

    .line 57
    invoke-interface {v9, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleY(F)V

    .line 58
    .line 59
    .line 60
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 61
    .line 62
    move v10, p3

    .line 63
    invoke-interface {v9, p3}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAlpha(F)V

    .line 64
    .line 65
    .line 66
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 67
    .line 68
    move/from16 v10, p4

    .line 69
    .line 70
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationX(F)V

    .line 71
    .line 72
    .line 73
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 74
    .line 75
    move/from16 v10, p5

    .line 76
    .line 77
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationY(F)V

    .line 78
    .line 79
    .line 80
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 81
    .line 82
    move/from16 v10, p6

    .line 83
    .line 84
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setElevation(F)V

    .line 85
    .line 86
    .line 87
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 88
    .line 89
    invoke-static/range {p16 .. p17}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAmbientShadowColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 97
    .line 98
    invoke-static/range {p18 .. p19}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setSpotShadowColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 106
    .line 107
    move/from16 v10, p9

    .line 108
    .line 109
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationZ(F)V

    .line 110
    .line 111
    .line 112
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 113
    .line 114
    move/from16 v10, p7

    .line 115
    .line 116
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationX(F)V

    .line 117
    .line 118
    .line 119
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 120
    .line 121
    move/from16 v10, p8

    .line 122
    .line 123
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationY(F)V

    .line 124
    .line 125
    .line 126
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 127
    .line 128
    move/from16 v10, p10

    .line 129
    .line 130
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setCameraDistance(F)V

    .line 131
    .line 132
    .line 133
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 134
    .line 135
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    iget-object v11, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 140
    .line 141
    invoke-interface {v11}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    int-to-float v11, v11

    .line 146
    mul-float/2addr v10, v11

    .line 147
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    .line 148
    .line 149
    .line 150
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 151
    .line 152
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 157
    .line 158
    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    int-to-float v6, v6

    .line 163
    mul-float/2addr v5, v6

    .line 164
    invoke-interface {v9, v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    .line 165
    .line 166
    .line 167
    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 168
    .line 169
    if-eqz p14, :cond_1

    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eq v1, v6, :cond_1

    .line 176
    .line 177
    move v6, v8

    .line 178
    goto :goto_1

    .line 179
    :cond_1
    move v6, v7

    .line 180
    :goto_1
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToOutline(Z)V

    .line 181
    .line 182
    .line 183
    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 184
    .line 185
    if-eqz p14, :cond_2

    .line 186
    .line 187
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-ne v1, v6, :cond_2

    .line 192
    .line 193
    move v6, v8

    .line 194
    goto :goto_2

    .line 195
    :cond_2
    move v6, v7

    .line 196
    :goto_2
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToBounds(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 200
    .line 201
    move-object/from16 v6, p15

    .line 202
    .line 203
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 204
    .line 205
    .line 206
    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 207
    .line 208
    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 209
    .line 210
    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 215
    .line 216
    invoke-interface {v9}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    iget-object v10, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 221
    .line 222
    invoke-interface {v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    move-object p1, v5

    .line 227
    move-object/from16 p2, p13

    .line 228
    .line 229
    move p3, v6

    .line 230
    move/from16 p4, v9

    .line 231
    .line 232
    move/from16 p5, v10

    .line 233
    .line 234
    move-object/from16 p6, p20

    .line 235
    .line 236
    move-object/from16 p7, p21

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p7}, Landroidx/compose/ui/platform/OutlineResolver;->update(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 243
    .line 244
    iget-object v4, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 245
    .line 246
    invoke-virtual {v4}, Landroidx/compose/ui/platform/OutlineResolver;->getOutline()Landroid/graphics/Outline;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    .line 251
    .line 252
    .line 253
    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 254
    .line 255
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_3

    .line 260
    .line 261
    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_3

    .line 268
    .line 269
    move v7, v8

    .line 270
    :cond_3
    if-ne v2, v7, :cond_5

    .line 271
    .line 272
    if-eqz v7, :cond_4

    .line 273
    .line 274
    if-eqz v1, :cond_4

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    .line 282
    .line 283
    .line 284
    :goto_4
    iget-boolean v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 285
    .line 286
    if-nez v1, :cond_6

    .line 287
    .line 288
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 289
    .line 290
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    const/4 v2, 0x0

    .line 295
    cmpl-float v1, v1, v2

    .line 296
    .line 297
    if-lez v1, :cond_6

    .line 298
    .line 299
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 300
    .line 301
    if-eqz v1, :cond_6

    .line 302
    .line 303
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    :cond_6
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 307
    .line 308
    invoke-virtual {v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 309
    .line 310
    .line 311
    return-void
.end method
