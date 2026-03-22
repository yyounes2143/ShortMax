.class public final Landroidx/compose/runtime/SnapshotStateExtensionsKt;
.super Ljava/lang/Object;
.source "SnapshotStateExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final asDoubleState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/DoubleState;
    .locals 1
    .param p0    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/compose/runtime/DoubleState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/DoubleState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/DoubleState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedDoubleState;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedDoubleState;-><init>(Landroidx/compose/runtime/State;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static final asFloatState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/FloatState;
    .locals 1
    .param p0    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/FloatState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/FloatState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/FloatState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedFloatState;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedFloatState;-><init>(Landroidx/compose/runtime/State;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static final asIntState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/IntState;
    .locals 1
    .param p0    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/runtime/IntState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/IntState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedIntState;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedIntState;-><init>(Landroidx/compose/runtime/State;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static final asLongState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/LongState;
    .locals 1
    .param p0    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/compose/runtime/LongState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/LongState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/LongState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedLongState;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedLongState;-><init>(Landroidx/compose/runtime/State;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method
