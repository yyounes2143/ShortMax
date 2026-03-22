.class public interface abstract Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;
.super Ljava/lang/Object;
.source "SnapshotObserver.kt"


# annotations
.annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public onApplied(Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Set;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onCreated(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onPreCreate(Landroidx/compose/runtime/snapshots/Snapshot;Z)Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
    .locals 0
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onPreDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
