.class public final Landroidx/compose/runtime/PrimitiveSnapshotStateKt;
.super Ljava/lang/Object;
.source "SnapshotFloatState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getValue(Landroidx/compose/runtime/FloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)F
    .locals 0
    .param p0    # Landroidx/compose/runtime/FloatState;
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
            "Landroidx/compose/runtime/FloatState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->getValue(Landroidx/compose/runtime/FloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/StateFactoryMarker;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableFloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/MutableFloatState;
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
            "Landroidx/compose/runtime/MutableFloatState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->setValue(Landroidx/compose/runtime/MutableFloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
