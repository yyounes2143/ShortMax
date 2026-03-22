.class public final Landroidx/compose/runtime/tooling/CompositionDataKt;
.super Ljava/lang/Object;
.source "CompositionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final findCompositionInstance(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/runtime/tooling/CompositionInstance;
    .locals 1
    .param p0    # Landroidx/compose/runtime/tooling/CompositionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/tooling/CompositionInstance;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionInstance;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method
