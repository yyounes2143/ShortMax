.class public interface abstract Landroidx/compose/runtime/tooling/CompositionInstance;
.super Ljava/lang/Object;
.source "CompositionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract findContextGroup()Landroidx/compose/runtime/tooling/CompositionGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getData()Landroidx/compose/runtime/tooling/CompositionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getParent()Landroidx/compose/runtime/tooling/CompositionInstance;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
