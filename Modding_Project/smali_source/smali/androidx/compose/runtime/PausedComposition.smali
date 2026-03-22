.class public interface abstract Landroidx/compose/runtime/PausedComposition;
.super Ljava/lang/Object;
.source "PausableComposition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract apply()V
.end method

.method public abstract cancel()V
.end method

.method public abstract isApplied()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isComplete()Z
.end method

.method public abstract resume(Landroidx/compose/runtime/ShouldPauseCallback;)Z
    .param p1    # Landroidx/compose/runtime/ShouldPauseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
