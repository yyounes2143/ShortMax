.class public final Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;
.super Ljava/lang/Object;
.source "LazyGridState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 8
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p3, 0x1bd5b8c

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 p3, p4, 0x1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    move p0, v0

    .line 13
    :cond_0
    and-int/lit8 p3, p4, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    move p1, v0

    .line 18
    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    sget-object p3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$rememberLazyGridState$1;

    .line 27
    .line 28
    invoke-direct {v4, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$rememberLazyGridState$1;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 v6, 0x48

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v5, p2

    .line 36
    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 41
    .line 42
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method
