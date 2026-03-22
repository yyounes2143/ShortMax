.class public interface abstract Landroidx/compose/runtime/RecomposerInfo;
.super Ljava/lang/Object;
.source "Recomposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getChangeCount()J
.end method

.method public abstract getHasPendingWork()Z
.end method

.method public abstract getState()Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public observe(Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 0
    .param p1    # Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
