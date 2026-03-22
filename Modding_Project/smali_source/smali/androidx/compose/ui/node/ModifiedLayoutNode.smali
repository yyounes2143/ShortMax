.class public final Landroidx/compose/ui/node/ModifiedLayoutNode;
.super Landroidx/compose/ui/node/LayoutNodeWrapper;
.source "ModifiedLayoutNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private modifier:Landroidx/compose/ui/layout/LayoutModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modifierState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toBeReusedForSameModifier:Z

.field private wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->Companion:Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlue-0d7_KjU()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "wrapped"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 19
    .line 20
    iput-object p2, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic access$getModifierBoundsPaint$cp()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method private final modifierFromState()Landroidx/compose/ui/layout/LayoutModifier;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 5
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
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/high16 v1, -0x80000000

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setShallowPlacing(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getPosition-nOcc-ac()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getZIndex()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayerBlock()Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setShallowPlacing(Z)V

    .line 75
    .line 76
    .line 77
    instance-of p1, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getPosition-nOcc-ac()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    :goto_0
    add-int/2addr v0, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getPosition-nOcc-ac()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_0

    .line 108
    :goto_1
    return v0
.end method

.method public getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getModifier()Landroidx/compose/ui/layout/LayoutModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getToBeReusedForSameModifier()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->toBeReusedForSameModifier:Z

    .line 2
    .line 3
    return v0
.end method

.method public getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public maxIntrinsicHeight(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierFromState()Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public maxIntrinsicWidth(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierFromState()Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/node/LayoutNodeWrapper;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onMeasured()V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public minIntrinsicHeight(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierFromState()Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public minIntrinsicWidth(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierFromState()Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onInitialize()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onInitialize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onModifierChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onModifierChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :goto_0
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
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0
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
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isShallowPlacing()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onPlaced()V

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredSize-YbymL2g()J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    .line 58
    .line 59
    .line 60
    invoke-static {p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setModifier(Landroidx/compose/ui/layout/LayoutModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    return-void
.end method

.method public final setToBeReusedForSameModifier(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->toBeReusedForSameModifier:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWrapped(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    return-void
.end method
