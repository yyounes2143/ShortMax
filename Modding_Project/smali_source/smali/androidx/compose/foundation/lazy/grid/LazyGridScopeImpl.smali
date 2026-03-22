.class public final Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;
.super Ljava/lang/Object;
.source "LazyGridScopeImpl.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridScope;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final DefaultSpan:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasCustomSpans:Z

.field private final intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/MutableIntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$DefaultSpan$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$DefaultSpan$1;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->DefaultSpan:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getHasCustomSpans$foundation_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->hasCustomSpans:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getIntervals$foundation_release()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/lazy/layout/MutableIntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 2
    .line 3
    return-object v0
.end method

.method public item(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lat/n;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Ljava/lang/Object;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$1$1;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$1$1;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$2$1;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->DefaultSpan:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    :goto_1
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$3;

    .line 28
    .line 29
    invoke-direct {v2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$3;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance p3, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$4;

    .line 33
    .line 34
    invoke-direct {p3, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl$item$4;-><init>(Lat/n;)V

    .line 35
    .line 36
    .line 37
    const p4, -0x59b18cf8

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-static {p4, v3, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance p4, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 46
    .line 47
    invoke-direct {p4, v1, p1, v2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3, p4}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iput-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->hasCustomSpans:Z

    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/o<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "contentType"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "itemContent"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->DefaultSpan:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, p3

    .line 21
    :goto_0
    invoke-direct {v1, p2, v2, p4, p5}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->hasCustomSpans:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final setHasCustomSpans$foundation_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->hasCustomSpans:Z

    .line 2
    .line 3
    return-void
.end method
