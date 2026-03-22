.class public final Landroidx/compose/runtime/SnapshotFloatState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotFloatState.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createSnapshotMutableFloatState(F)Landroidx/compose/runtime/MutableFloatState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
