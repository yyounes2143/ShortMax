.class public interface abstract Landroidx/compose/runtime/tooling/CompositionObserver;
.super Ljava/lang/Object;
.source "CompositionObserver.kt"


# annotations
.annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onBeginComposition(Landroidx/compose/runtime/tooling/ObservableComposition;)V
    .param p1    # Landroidx/compose/runtime/tooling/ObservableComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onEndComposition(Landroidx/compose/runtime/tooling/ObservableComposition;)V
    .param p1    # Landroidx/compose/runtime/tooling/ObservableComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onReadInScope(Landroidx/compose/runtime/RecomposeScope;Ljava/lang/Object;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onScopeDisposed(Landroidx/compose/runtime/RecomposeScope;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onScopeEnter(Landroidx/compose/runtime/RecomposeScope;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onScopeExit(Landroidx/compose/runtime/RecomposeScope;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onScopeInvalidated(Landroidx/compose/runtime/RecomposeScope;Ljava/lang/Object;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
