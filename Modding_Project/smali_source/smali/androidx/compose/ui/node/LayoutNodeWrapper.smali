.class public abstract Landroidx/compose/ui/node/LayoutNodeWrapper;
.super Landroidx/compose/ui/layout/Placeable;
.source "LayoutNodeWrapper.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;,
        Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/layout/Placeable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ExpectAttachedLayoutCoordinates:Ljava/lang/String; = "LayoutCoordinate operations are only valid when isAttached is true"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "Landroidx/compose/ui/node/PointerInputEntity;",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            "Landroidx/compose/ui/input/pointer/PointerInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            "Landroidx/compose/ui/semantics/SemanticsModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UnmeasuredError:Ljava/lang/String; = "Asking for measurement result of unmeasured layout modifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _isAttached:Z

.field private _measureResult:Landroidx/compose/ui/layout/MeasureResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _rectCache:Landroidx/compose/ui/geometry/MutableRect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final entities:[Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isClipping:Z

.field private isShallowPlacing:Z

.field private lastLayerAlpha:F

.field private lastLayerDrawingWasSkipped:Z

.field private layer:Landroidx/compose/ui/node/OwnedLayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layerDensity:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private oldAlignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:J

.field private wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayer$1;

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;

    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    const p1, 0x3f4ccccd    # 0.8f

    .line 24
    .line 25
    .line 26
    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p1, v0, p1}, Landroidx/compose/ui/node/EntityList;->constructor-impl$default([Landroidx/compose/ui/node/LayoutNodeEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/ui/node/LayoutNodeWrapper$invalidateParentLayer$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LayoutNodeWrapper$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic access$drawContainedDrawModifiers(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getGraphicsLayerScope$cp()Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/node/LayoutNodeWrapper;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$getPointerInputSource$cp()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSemanticsSource$cp()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$hit-1hIXUjU(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hit-1hIXUjU(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$hitNear-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitNear-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasurementConstraints-BRTryo0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateLayerParameters(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->updateLayerParameters()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final ancestorToLocal(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->ancestorToLocal(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final ancestorToLocal-R5De75A(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentPosition-MK-Hz9U(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentPosition-MK-Hz9U(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private final drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getDrawEntityType-EEbPh1w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/node/DrawEntity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->performDraw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DrawEntity;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private final fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v0, v0

    .line 12
    sub-float/2addr v1, v0

    .line 13
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-float/2addr v1, v0

    .line 21
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v0, v0

    .line 35
    sub-float/2addr v1, v0

    .line 36
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-float/2addr v1, v0

    .line 44
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    int-to-float p2, p2

    .line 70
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    int-to-float v0, v0

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v1, v1, p2, v0}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private final getHasMeasureResult()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private final getParentData(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/SimpleEntity<",
            "Landroidx/compose/ui/layout/ParentDataModifier;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getParentData()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/SimpleEntity;

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getParentData(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/compose/ui/layout/ParentDataModifier;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final hit-1hIXUjU(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    if-nez v2, :cond_0

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-wide v2, p3

    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    move/from16 v6, p7

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p2

    .line 18
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->contentFrom(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    new-instance v10, Landroidx/compose/ui/node/LayoutNodeWrapper$hit$1;

    .line 23
    .line 24
    move-object v0, v10

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v4, p3

    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    move/from16 v8, p7

    .line 33
    .line 34
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper$hit$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v0, p5

    .line 38
    .line 39
    move/from16 v1, p7

    .line 40
    .line 41
    invoke-virtual {v0, v9, v1, v10}, Landroidx/compose/ui/node/HitTestResult;->hit(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private final hitNear-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    if-nez v2, :cond_0

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-wide v2, p3

    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    move/from16 v6, p7

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p2

    .line 18
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->contentFrom(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    new-instance v11, Landroidx/compose/ui/node/LayoutNodeWrapper$hitNear$1;

    .line 23
    .line 24
    move-object v0, v11

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v4, p3

    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    move/from16 v8, p7

    .line 33
    .line 34
    move/from16 v9, p8

    .line 35
    .line 36
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeWrapper$hitNear$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v0, p5

    .line 40
    .line 41
    move/from16 v1, p7

    .line 42
    .line 43
    move/from16 v2, p8

    .line 44
    .line 45
    invoke-virtual {v0, v10, v2, v1, v11}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Ljava/lang/Object;FZLkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private final offsetFromEdge-MK-Hz9U(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, v0, v1

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    neg-float v0, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    sub-float/2addr v0, v2

    .line 18
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    cmpg-float p2, p1, v1

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    neg-float p1, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-float p2, p2

    .line 37
    sub-float/2addr p1, p2

    .line 38
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    return-wide p1
.end method

.method static synthetic propagateRelocationRequest$suspendImpl(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->propagateRelocationRequest(Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static synthetic rectInParent$ui_release$default(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    move-object v3, p2

    .line 3
    if-nez v2, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-wide v2, p3

    .line 8
    move-object/from16 v4, p5

    .line 9
    .line 10
    move/from16 v5, p6

    .line 11
    .line 12
    move/from16 v6, p7

    .line 13
    .line 14
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->interceptOutOfBoundsChildEvents(Landroidx/compose/ui/node/LayoutNodeEntity;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->contentFrom(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    new-instance v11, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;

    .line 29
    .line 30
    move-object v0, v11

    .line 31
    move-object v1, p0

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p2

    .line 34
    move-wide v4, p3

    .line 35
    move-object/from16 v6, p5

    .line 36
    .line 37
    move/from16 v7, p6

    .line 38
    .line 39
    move/from16 v8, p7

    .line 40
    .line 41
    move/from16 v9, p8

    .line 42
    .line 43
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 44
    .line 45
    .line 46
    move-object/from16 v5, p5

    .line 47
    .line 48
    move/from16 v7, p7

    .line 49
    .line 50
    move/from16 v8, p8

    .line 51
    .line 52
    invoke-virtual {v5, v10, v8, v7, v11}, Landroidx/compose/ui/node/HitTestResult;->speculativeHit(Ljava/lang/Object;FZLkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object/from16 v5, p5

    .line 57
    .line 58
    move/from16 v7, p7

    .line 59
    .line 60
    move/from16 v8, p8

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v0, p0

    .line 67
    move-object v2, p2

    .line 68
    move-wide v3, p3

    .line 69
    move/from16 v6, p6

    .line 70
    .line 71
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method private final updateLayerParameters()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    sget-object v15, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 12
    .line 13
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v15, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setGraphicsDensity$ui_release(Landroidx/compose/ui/unit/Density;)V

    .line 23
    .line 24
    .line 25
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    new-instance v5, Landroidx/compose/ui/node/LayoutNodeWrapper$updateLayerParameters$1;

    .line 32
    .line 33
    invoke-direct {v5, v2}, Landroidx/compose/ui/node/LayoutNodeWrapper$updateLayerParameters$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, v4, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleX()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleY()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationX()F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationY()F

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAmbientShadowColor-0d7_KjU()J

    .line 64
    .line 65
    .line 66
    move-result-wide v17

    .line 67
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSpotShadowColor-0d7_KjU()J

    .line 68
    .line 69
    .line 70
    move-result-wide v19

    .line 71
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationX()F

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationY()F

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationZ()F

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCameraDistance()F

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTransformOrigin-SzJe1aQ()J

    .line 88
    .line 89
    .line 90
    move-result-wide v12

    .line 91
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    move-object/from16 v23, v15

    .line 100
    .line 101
    move/from16 v15, v16

    .line 102
    .line 103
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    move/from16 v24, v2

    .line 108
    .line 109
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 112
    .line 113
    .line 114
    move-result-object v21

    .line 115
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 118
    .line 119
    .line 120
    move-result-object v22

    .line 121
    move/from16 v2, v24

    .line 122
    .line 123
    invoke-interface/range {v1 .. v22}, Landroidx/compose/ui/node/OwnedLayer;->updateLayerProperties-NHXXZp8(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v2, "Required value was null."

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v1

    .line 141
    :cond_1
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    if-nez v1, :cond_3

    .line 144
    .line 145
    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iput v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 152
    .line 153
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_2

    .line 160
    .line 161
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 162
    .line 163
    invoke-interface {v1, v2}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    return-void

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    const-string v2, "Failed requirement."

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onLayerBlockUpdated(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    :goto_1
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->onAttach()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public abstract calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method protected final calculateMinimumTouchTargetPadding-E7KxVPU(J)J
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr v0, v1

    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    sub-float/2addr p1, p2

    .line 21
    const/high16 p2, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v0, p2

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-float/2addr p1, p2

    .line 30
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    return-wide p1
.end method

.method public detach()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    :goto_1
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->onDetach()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onLayerBlockUpdated(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method protected final distanceInMinimumTouchTarget-tz77jQw(JJ)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    cmpl-float v0, v0, v2

    .line 26
    .line 27
    if-ltz v0, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p3

    .line 34
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->offsetFromEdge-MK-Hz9U(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    const/4 p4, 0x0

    .line 47
    cmpl-float v2, v0, p4

    .line 48
    .line 49
    if-gtz v2, :cond_1

    .line 50
    .line 51
    cmpl-float p4, p3, p4

    .line 52
    .line 53
    if-lez p4, :cond_2

    .line 54
    .line 55
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    cmpg-float p4, p4, v0

    .line 60
    .line 61
    if-gtz p4, :cond_2

    .line 62
    .line 63
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    cmpg-float p3, p4, p3

    .line 68
    .line 69
    if-gtz p3, :cond_2

    .line 70
    .line 71
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_2
    return v1
.end method

.method public final draw(Landroidx/compose/ui/graphics/Canvas;)V
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
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/OwnedLayer;->drawLayer(Landroidx/compose/ui/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iget-wide v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    .line 32
    .line 33
    .line 34
    neg-float v0, v0

    .line 35
    neg-float v1, v1

    .line 36
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method protected final drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Paint;
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
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    const/high16 v2, 0x3f000000    # 0.5f

    .line 23
    .line 24
    sub-float/2addr v1, v2

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    sub-float/2addr v3, v2

    .line 35
    invoke-direct {v0, v2, v2, v1, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/Canvas;->drawRect(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final findCommonAncestor$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v1, p0

    .line 17
    :goto_0
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    if-eq v1, p1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne v1, p1, :cond_1

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    return-object p0

    .line 31
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-le v2, v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-le v2, v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_3
    if-eq v0, v1, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string v0, "layouts are not part of the same hierarchy"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_6
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 91
    .line 92
    if-ne v1, v2, :cond_7

    .line 93
    .line 94
    move-object p1, p0

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    if-ne v0, v1, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_4
    return-object p1
.end method

.method public fromParentPosition-MK-Hz9U(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->minus-Nv-tHpc(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    :cond_0
    return-wide p1
.end method

.method public final get(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 3
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "alignmentLine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getHasMeasureResult()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    instance-of p1, p1, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getApparentToRealOffset-nOcc-ac()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getApparentToRealOffset-nOcc-ac()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_0
    add-int/2addr v0, p1

    .line 44
    return v0
.end method

.method public final getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastLayerDrawingWasSkipped$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLayer()Landroidx/compose/ui/node/OwnedLayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getLayerBlock()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public abstract getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getMinimumTouchTargetSize-NH-jbRc()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public final getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getParentDataEntityType-EEbPh1w()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/SimpleEntity;

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getParentData(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final getPosition-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getProvidedAlignmentLines()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, v0

    .line 4
    :goto_0
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object v3, v0

    .line 16
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    xor-int/2addr v4, v5

    .line 24
    if-ne v4, v5, :cond_2

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    if-nez v2, :cond_4

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_4
    return-object v2
.end method

.method protected final getRectCache()Landroidx/compose/ui/geometry/MutableRect;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->zIndex:F

    .line 2
    .line 3
    return v0
.end method

.method public final hitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 10
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-wide v3, p2

    .line 3
    move-object v5, p4

    .line 4
    const-string v0, "hitTestSource"

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "hitTestResult"

    .line 11
    .line 12
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v9, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->entityType-EEbPh1w()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->withinLayerBounds-k-4lQ0M(J)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    if-eqz p5, :cond_6

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMinimumTouchTargetSize-NH-jbRc()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p4, v8, v0}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v0, p0

    .line 62
    move-object v2, p1

    .line 63
    move-wide v3, p2

    .line 64
    move-object v5, p4

    .line 65
    move v6, p5

    .line 66
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitNear-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_0
    if-nez v1, :cond_1

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isPointerInBounds-k-4lQ0M(J)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move-object v0, p0

    .line 85
    move-object v2, p1

    .line 86
    move-wide v3, p2

    .line 87
    move-object v5, p4

    .line 88
    move v6, p5

    .line 89
    move/from16 v7, p6

    .line 90
    .line 91
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hit-1hIXUjU(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    if-nez p5, :cond_3

    .line 96
    .line 97
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 98
    .line 99
    :goto_0
    move v8, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMinimumTouchTargetSize-NH-jbRc()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    goto :goto_0

    .line 110
    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    move/from16 v7, p6

    .line 123
    .line 124
    invoke-virtual {p4, v8, v7}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move-object v2, p1

    .line 132
    move-wide v3, p2

    .line 133
    move-object v5, p4

    .line 134
    move v6, p5

    .line 135
    move/from16 v7, p6

    .line 136
    .line 137
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitNear-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    move/from16 v7, p6

    .line 142
    .line 143
    :cond_5
    move-object v0, p0

    .line 144
    move-object v2, p1

    .line 145
    move-wide v3, p2

    .line 146
    move-object v5, p4

    .line 147
    move v6, p5

    .line 148
    move/from16 v7, p6

    .line 149
    .line 150
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_2
    return-void
.end method

.method public hitTestChild-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 8
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    const-string v0, "hitTestSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hitTestResult"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentPosition-MK-Hz9U(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    move-object v2, p1

    .line 22
    move-object v5, p4

    .line 23
    move v6, p5

    .line 24
    move v7, p6

    .line 25
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public invalidateLayer()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invoke(Landroidx/compose/ui/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    :goto_0
    return-void
.end method

.method public final isAttached()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Failed requirement."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 23
    .line 24
    return v0
.end method

.method protected final isPointerInBounds-k-4lQ0M(J)Z
    .locals 2

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
    move-result p1

    .line 9
    const/4 p2, 0x0

    .line 10
    cmpl-float v1, v0, p2

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    cmpl-float p2, p1, p2

    .line 15
    .line 16
    if-ltz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    int-to-float p2, p2

    .line 23
    cmpg-float p2, v0, p2

    .line 24
    .line 25
    if-gez p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    cmpg-float p1, p1, p2

    .line 33
    .line 34
    if-gez p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public final isShallowPlacing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isShallowPlacing:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTransparent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isTransparent()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sourceCoordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-float p1, p1

    .line 57
    invoke-virtual {v8, p1}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 58
    .line 59
    .line 60
    :goto_0
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    const/4 v6, 0x4

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v2, v0

    .line 66
    move-object v3, v8

    .line 67
    move v4, p2

    .line 68
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->rectInParent$ui_release$default(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, v1, v8, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->ancestorToLocal(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 91
    .line 92
    .line 93
    invoke-static {v8}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v0, "LayoutCoordinates "

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " is not attached!"

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p2

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 133
    .line 134
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sourceCoordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->toParentPosition-MK-Hz9U(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public localToRoot-MK-Hz9U(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->toParentPosition-MK-Hz9U(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public localToWindow-MK-Hz9U(J)J
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->localToRoot-MK-Hz9U(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/Owner;->calculatePositionInWindow-MK-Hz9U(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public onInitialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onLayerBlockUpdated(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eq v0, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v0, v2

    .line 35
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/node/Owner;->createLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/OwnedLayer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 85
    .line 86
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 90
    .line 91
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->updateLayerParameters()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerWrapperIsDirty$ui_release(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 100
    .line 101
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->updateLayerParameters()V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-interface {p1}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerWrapperIsDirty$ui_release(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 143
    .line 144
    invoke-interface {p1, v0}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 149
    .line 150
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    .line 151
    .line 152
    :cond_5
    :goto_2
    return-void
.end method

.method protected onMeasureResultChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasuredSize-ozmzZPI(J)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 41
    .line 42
    sget-object p2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/ui/node/EntityList$Companion;->getDrawEntityType-EEbPh1w()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    aget-object p1, p1, p2

    .line 49
    .line 50
    :goto_1
    if-eqz p1, :cond_3

    .line 51
    .line 52
    move-object p2, p1

    .line 53
    check-cast p2, Landroidx/compose/ui/node/DrawEntity;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/compose/ui/node/DrawEntity;->onMeasureResultChanged()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    return-void
.end method

.method public final onMeasured()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getRemeasureEntityType-EEbPh1w()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v0, v2}, Landroidx/compose/ui/node/EntityList;->has-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getRemeasureEntityType-EEbPh1w()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    aget-object v1, v3, v1

    .line 32
    .line 33
    :goto_0
    if-eqz v1, :cond_0

    .line 34
    .line 35
    move-object v3, v1

    .line 36
    check-cast v3, Landroidx/compose/ui/node/SimpleEntity;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/OnRemeasuredModifier;->onRemeasured-ozmzZPI(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    goto :goto_2

    .line 69
    :goto_1
    :try_start_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 70
    .line 71
    .line 72
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_1
    :goto_3
    return-void
.end method

.method public onModifierChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPlaced()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getOnPlacedEntityType-EEbPh1w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    :goto_0
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroidx/compose/ui/node/SimpleEntity;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/compose/ui/layout/OnPlacedModifier;

    .line 21
    .line 22
    invoke-interface {v1, p0}, Landroidx/compose/ui/layout/OnPlacedModifier;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected final performingMeasure-K40F9xA(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;
    .locals 2
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/ui/layout/Placeable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/node/LayoutNodeWrapper;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p1
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onLayerBlockUpdated(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    if-nez p4, :cond_5

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 13
    .line 14
    iget-object p4, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->onAlignmentsChanged$ui_release()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->onAlignmentsChanged$ui_release()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 73
    .line 74
    invoke-interface {p1, p2}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iput p3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->zIndex:F

    .line 78
    .line 79
    return-void
.end method

.method public propagateRelocationRequest(Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->propagateRelocationRequest$suspendImpl(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 6
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMinimumTouchTargetSize-NH-jbRc()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v1, v2

    .line 27
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    div-float/2addr p2, v2

    .line 32
    neg-float p3, v1

    .line 33
    neg-float v2, p2

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    add-float/2addr v3, v1

    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    add-float/2addr v1, p2

    .line 54
    invoke-virtual {p1, p3, v2, v3, v1}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    int-to-float p2, p2

    .line 69
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    int-to-float p3, p3

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    const/4 p2, 0x0

    .line 90
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-wide p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 94
    .line 95
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    int-to-float p2, p2

    .line 104
    add-float/2addr p3, p2

    .line 105
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    add-float/2addr p3, p2

    .line 113
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 114
    .line 115
    .line 116
    iget-wide p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 117
    .line 118
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    int-to-float p2, p2

    .line 127
    add-float/2addr p3, p2

    .line 128
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    add-float/2addr p3, p2

    .line 136
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/MeasureResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 7
    .line 8
    if-eq p1, v0, :cond_a

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v1, v0, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onMeasureResultChanged(II)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_a

    .line 64
    .line 65
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_a

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move-object v0, v1

    .line 88
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 89
    .line 90
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v2, 0x1

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->onAlignmentsChanged$ui_release()V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedDuringParentMeasurement$ui_release()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v3, 0x0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-static {v0, v3, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedDuringParentLayout$ui_release()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    invoke-static {v0, v3, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->onAlignmentsChanged$ui_release()V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->setDirty$ui_release(Z)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 172
    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 181
    .line 182
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    return-void
.end method

.method public final setShallowPlacing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isShallowPlacing:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-void
.end method

.method protected final setZIndex(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->zIndex:F

    .line 2
    .line 3
    return-void
.end method

.method public final shouldSharePointerInputWithSiblings()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getPointerInputEntityType-EEbPh1w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/PointerInputEntity;->shouldSharePointerInputWithSiblings()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->shouldSharePointerInputWithSiblings()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method public toParentPosition-MK-Hz9U(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public final touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMinimumTouchTargetSize-NH-jbRc()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    neg-float v4, v4

    .line 35
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    neg-float v4, v4

    .line 43
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-float v4, v4

    .line 51
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-float/2addr v4, v5

    .line 56
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-float/2addr v4, v2

    .line 69
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 70
    .line 71
    .line 72
    move-object v2, p0

    .line 73
    :goto_0
    if-eq v2, v0, :cond_2

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 94
    .line 95
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public windowToLocal-MK-Hz9U(J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/node/Owner;->calculateLocalPosition-MK-Hz9U(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    return-wide p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method protected final withPositionTranslation(Landroidx/compose/ui/graphics/Canvas;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getPosition-nOcc-ac()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getPosition-nOcc-ac()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    neg-float p2, v0

    .line 36
    neg-float v0, v1

    .line 37
    invoke-interface {p1, p2, v0}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected final withinLayerBounds-k-4lQ0M(J)Z
    .locals 3

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->isFinite-k-4lQ0M(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->isInLayer-k-4lQ0M(J)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    :cond_2
    return v1
.end method
