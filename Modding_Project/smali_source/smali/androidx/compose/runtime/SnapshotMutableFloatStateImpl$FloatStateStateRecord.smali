.class final Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SnapshotFloatState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatStateStateRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 7
    .line 8
    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    .line 9
    .line 10
    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    .line 11
    .line 12
    return-void
.end method

.method public create()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->create(J)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    return-object v0
.end method

.method public create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    iget v1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;-><init>(JF)V

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    .line 2
    .line 3
    return v0
.end method

.method public final setValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    .line 2
    .line 3
    return-void
.end method
