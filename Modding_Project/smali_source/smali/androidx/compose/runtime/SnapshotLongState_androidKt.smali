.class public final Landroidx/compose/runtime/SnapshotLongState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotLongState.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createSnapshotMutableLongState(J)Landroidx/compose/runtime/MutableLongState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
