.class public interface abstract Landroidx/compose/foundation/lazy/LazyListItemProvider;
.super Ljava/lang/Object;
.source "LazyListItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getHeaderIndexes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
