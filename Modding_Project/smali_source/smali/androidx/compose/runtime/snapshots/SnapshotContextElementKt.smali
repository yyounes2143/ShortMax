.class public final Landroidx/compose/runtime/snapshots/SnapshotContextElementKt;
.super Ljava/lang/Object;
.source "SnapshotContextElement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final asContextElement(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/SnapshotContextElement;
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotContextElementImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotContextElementImpl;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
