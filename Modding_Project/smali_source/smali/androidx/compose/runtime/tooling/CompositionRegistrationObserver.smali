.class public interface abstract Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;
.super Ljava/lang/Object;
.source "CompositionObserver.kt"


# annotations
.annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onCompositionRegistered(Landroidx/compose/runtime/tooling/ObservableComposition;)V
    .param p1    # Landroidx/compose/runtime/tooling/ObservableComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onCompositionUnregistered(Landroidx/compose/runtime/tooling/ObservableComposition;)V
    .param p1    # Landroidx/compose/runtime/tooling/ObservableComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
