.class public interface abstract Landroidx/compose/foundation/interaction/MutableInteractionSource;
.super Ljava/lang/Object;
.source "InteractionSource.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/InteractionSource;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
