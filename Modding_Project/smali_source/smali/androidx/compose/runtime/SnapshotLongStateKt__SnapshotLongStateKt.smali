.class final synthetic Landroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getValue(Landroidx/compose/runtime/LongState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)J
    .locals 0
    .param p0    # Landroidx/compose/runtime/LongState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/LongState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/StateFactoryMarker;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotLongState_androidKt;->createSnapshotMutableLongState(J)Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableLongState;Ljava/lang/Object;Lkotlin/reflect/KProperty;J)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/MutableLongState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableLongState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p3, p4}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
