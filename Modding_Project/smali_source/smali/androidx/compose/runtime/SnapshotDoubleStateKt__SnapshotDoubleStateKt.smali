.class final synthetic Landroidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getValue(Landroidx/compose/runtime/DoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)D
    .locals 0
    .param p0    # Landroidx/compose/runtime/DoubleState;
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
            "Landroidx/compose/runtime/DoubleState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/DoubleState;->getDoubleValue()D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final mutableDoubleStateOf(D)Landroidx/compose/runtime/MutableDoubleState;
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/StateFactoryMarker;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotDoubleState_androidKt;->createSnapshotMutableDoubleState(D)Landroidx/compose/runtime/MutableDoubleState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableDoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;D)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/MutableDoubleState;
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
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;D)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p3, p4}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
