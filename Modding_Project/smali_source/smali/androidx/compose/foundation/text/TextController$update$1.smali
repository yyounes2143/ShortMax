.class public final Landroidx/compose/foundation/text/TextController$update$1;
.super Ljava/lang/Object;
.source "CoreText.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;->update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private dragTotalDistance:J

.field private lastPosition:J

.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getDragTotalDistance()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLastPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 16
    .line 17
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 40
    .line 41
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 46
    .line 47
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 48
    .line 49
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 54
    .line 55
    invoke-static {v0, v3, v4, p1, p2}, Landroidx/compose/foundation/text/TextController;->access$outOfBoundary-0a9Yr6o(Landroidx/compose/foundation/text/TextController;JJ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const/4 v7, 0x0

    .line 70
    move-wide v3, p1

    .line 71
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_2

    .line 77
    .line 78
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 79
    .line 80
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 83
    .line 84
    .line 85
    move-result-wide p1

    .line 86
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public onStart-k-4lQ0M(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {v1, p1, p2, p1, p2}, Landroidx/compose/foundation/text/TextController;->access$outOfBoundary-0a9Yr6o(Landroidx/compose/foundation/text/TextController;JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-interface {v2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateSelectAll(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v2, v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 79
    .line 80
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDragTotalDistance(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLastPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 2
    .line 3
    return-void
.end method
