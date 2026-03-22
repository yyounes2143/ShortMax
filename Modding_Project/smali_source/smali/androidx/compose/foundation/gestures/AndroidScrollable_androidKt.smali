.class public final Landroidx/compose/foundation/gestures/AndroidScrollable_androidKt;
.super Ljava/lang/Object;
.source "AndroidScrollable.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final platformScrollConfig(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/ScrollConfig;
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p1, -0x5887770a

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/gestures/AndroidConfig;->INSTANCE:Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 8
    .line 9
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
