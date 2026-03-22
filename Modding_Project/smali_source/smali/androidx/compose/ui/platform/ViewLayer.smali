.class public final Landroidx/compose/ui/platform/ViewLayer;
.super Landroid/view/View;
.source "ViewLayer.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;,
        Landroidx/compose/ui/platform/ViewLayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OutlineProvider:Landroid/view/ViewOutlineProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getMatrix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static hasRetrievedMethod:Z

.field private static recreateDisplayList:Ljava/lang/reflect/Field;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static shouldUseDispatchDraw:Z

.field private static updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clipBoundsCache:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clipToBounds:Z

.field private final container:Landroidx/compose/ui/platform/DrawChildContainer;
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

.field private isInvalidated:Z

.field private mTransformOrigin:J

.field private final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/platform/LayerMatrixCache<",
            "Landroid/view/View;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/ViewLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/platform/DrawChildContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Landroidx/compose/ui/platform/DrawChildContainer;",
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
    const-string v0, "container"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "drawBlock"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "invalidateParentLayer"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 31
    .line 32
    iput-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    iput-object p4, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    new-instance p3, Landroidx/compose/ui/platform/OutlineResolver;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p3, p1}, Landroidx/compose/ui/platform/OutlineResolver;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 46
    .line 47
    new-instance p1, Landroidx/compose/ui/graphics/CanvasHolder;

    .line 48
    .line 49
    invoke-direct {p1}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 53
    .line 54
    new-instance p1, Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 55
    .line 56
    sget-object p3, Landroidx/compose/ui/platform/ViewLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    invoke-direct {p1, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 62
    .line 63
    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 66
    .line 67
    .line 68
    move-result-wide p3

    .line 69
    iput-wide p3, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static final synthetic access$getHasRetrievedMethod$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->hasRetrievedMethod:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getOutlineProvider$cp()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOutlineResolver$p(Landroidx/compose/ui/platform/ViewLayer;)Landroidx/compose/ui/platform/OutlineResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRecreateDisplayList$cp()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->recreateDisplayList:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getShouldUseDispatchDraw$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getUpdateDisplayListIfDirtyMethod$cp()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setHasRetrievedMethod$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->hasRetrievedMethod:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRecreateDisplayList$cp(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/ViewLayer;->recreateDisplayList:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setShouldUseDispatchDraw$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUpdateDisplayListIfDirtyMethod$cp(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/ViewLayer;->updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-void
.end method

.method private final getManualClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    return-object v0
.end method

.method private final resetClipBounds()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final setInvalidated(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final updateOutlineResolver()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getOutline()Landroid/graphics/Outline;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
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
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, p1}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    :cond_0
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroidx/compose/ui/platform/OutlineResolver;->clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3
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
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, p1, p0, v1, v2}, Landroidx/compose/ui/platform/DrawChildContainer;->drawChild$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroid/view/View;J)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCameraDistancePx()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getCameraDistance()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method public final getContainer()Landroidx/compose/ui/platform/DrawChildContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayerId()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

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
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;->getUniqueDrawingId(Landroid/view/View;)J

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
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
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
    iget-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    cmpg-float p2, p1, v0

    .line 16
    .line 17
    if-gtz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    int-to-float p2, p2

    .line 24
    cmpg-float p2, v0, p2

    .line 25
    .line 26
    if-gez p2, :cond_0

    .line 27
    .line 28
    cmpg-float p1, p1, v1

    .line 29
    .line 30
    if-gtz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    cmpg-float p1, v1, p1

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    return v3

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->isInOutline-k-4lQ0M(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_2
    return v3
.end method

.method public final isInvalidated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    .line 2
    .line 3
    return v0
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
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2, p2, p2, p2}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 4
    .line 5
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 24
    .line 25
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    sub-int/2addr p1, p2

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 4

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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-ne v0, p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eq p1, p2, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    int-to-float v1, v0

    .line 28
    mul-float/2addr p2, v1

    .line 29
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-float v2, p1

    .line 39
    mul-float/2addr p2, v2

    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {p2, v1, v2}, Landroidx/compose/ui/platform/OutlineResolver;->update-uvyYCjk(J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->updateOutlineResolver()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v0, p1

    .line 73
    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->resetClipBounds()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 82
    .line 83
    .line 84
    :cond_1
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
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    return-void
.end method

.method public final setCameraDistancePx(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public updateDisplayList()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->updateDisplayList(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public updateLayerProperties-NHXXZp8(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .locals 11
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
    iput-wide v5, v0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 28
    .line 29
    .line 30
    move v2, p2

    .line 31
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 32
    .line 33
    .line 34
    move v2, p3

    .line 35
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    move v2, p4

    .line 39
    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 40
    .line 41
    .line 42
    move/from16 v2, p5

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    .line 46
    .line 47
    move/from16 v2, p6

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/view/View;->setElevation(F)V

    .line 50
    .line 51
    .line 52
    move/from16 v2, p9

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    .line 55
    .line 56
    .line 57
    move/from16 v2, p7

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotationX(F)V

    .line 60
    .line 61
    .line 62
    move/from16 v2, p8

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotationY(F)V

    .line 65
    .line 66
    .line 67
    iget-wide v5, v0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 68
    .line 69
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    int-to-float v5, v5

    .line 78
    mul-float/2addr v2, v5

    .line 79
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 80
    .line 81
    .line 82
    iget-wide v5, v0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    .line 83
    .line 84
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    int-to-float v5, v5

    .line 93
    mul-float/2addr v2, v5

    .line 94
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 95
    .line 96
    .line 97
    move/from16 v2, p10

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/ViewLayer;->setCameraDistancePx(F)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eqz p14, :cond_0

    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-ne v1, v6, :cond_0

    .line 111
    .line 112
    move v6, v5

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    move v6, v2

    .line 115
    :goto_0
    iput-boolean v6, v0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    .line 116
    .line 117
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->resetClipBounds()V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    if-eqz v6, :cond_1

    .line 125
    .line 126
    move v6, v5

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move v6, v2

    .line 129
    :goto_1
    if-eqz p14, :cond_2

    .line 130
    .line 131
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-eq v1, v7, :cond_2

    .line 136
    .line 137
    move v7, v5

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v7, v2

    .line 140
    :goto_2
    invoke-virtual {p0, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v7, v0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    move-object p1, v7

    .line 158
    move-object/from16 p2, p13

    .line 159
    .line 160
    move p3, v8

    .line 161
    move p4, v9

    .line 162
    move/from16 p5, v10

    .line 163
    .line 164
    move-object/from16 p6, p20

    .line 165
    .line 166
    move-object/from16 p7, p21

    .line 167
    .line 168
    invoke-virtual/range {p1 .. p7}, Landroidx/compose/ui/platform/OutlineResolver;->update(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->updateOutlineResolver()V

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    move v2, v5

    .line 182
    :cond_3
    if-ne v6, v2, :cond_4

    .line 183
    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    if-eqz v1, :cond_5

    .line 187
    .line 188
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->invalidate()V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-boolean v1, v0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    .line 192
    .line 193
    if-nez v1, :cond_6

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    const/4 v2, 0x0

    .line 200
    cmpl-float v1, v1, v2

    .line 201
    .line 202
    if-lez v1, :cond_6

    .line 203
    .line 204
    iget-object v1, v0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    if-eqz v1, :cond_6

    .line 207
    .line 208
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :cond_6
    iget-object v1, v0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 214
    .line 215
    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 217
    .line 218
    const/16 v2, 0x1c

    .line 219
    .line 220
    if-lt v1, v2, :cond_7

    .line 221
    .line 222
    sget-object v2, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;

    .line 223
    .line 224
    invoke-static/range {p16 .. p17}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;->setOutlineAmbientShadowColor(Landroid/view/View;I)V

    .line 229
    .line 230
    .line 231
    invoke-static/range {p18 .. p19}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;->setOutlineSpotShadowColor(Landroid/view/View;I)V

    .line 236
    .line 237
    .line 238
    :cond_7
    const/16 v2, 0x1f

    .line 239
    .line 240
    if-lt v1, v2, :cond_8

    .line 241
    .line 242
    sget-object v1, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;->INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;

    .line 243
    .line 244
    move-object/from16 v2, p15

    .line 245
    .line 246
    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;->setRenderEffect(Landroid/view/View;Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    return-void
.end method
