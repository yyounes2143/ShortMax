.class public final Landroidx/compose/runtime/SnapshotIntState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotIntState.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createSnapshotMutableIntState(I)Landroidx/compose/runtime/MutableIntState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
