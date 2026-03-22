.class public abstract Landroidx/compose/ui/layout/Placeable;
.super Ljava/lang/Object;
.source "Placeable.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measured;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private height:I

.field private measuredSize:J

.field private measurementConstraints:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultConstraints$p()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getApparentToRealOffset-nOcc-ac()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final recalculateWidthAndHeight()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 24
    .line 25
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 38
    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method protected final getApparentToRealOffset-nOcc-ac()J
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 13
    .line 14
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 15
    .line 16
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    div-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getMeasuredHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final getMeasuredSize-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMeasuredWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final getMeasurementConstraints-msEJaDk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
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
.end method

.method protected final setMeasuredSize-ozmzZPI(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->recalculateWidthAndHeight()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected final setMeasurementConstraints-BRTryo0(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->recalculateWidthAndHeight()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
