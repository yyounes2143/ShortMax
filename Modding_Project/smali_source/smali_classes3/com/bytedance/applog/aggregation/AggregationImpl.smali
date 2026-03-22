.class public final Lcom/bytedance/applog/aggregation/AggregationImpl;
.super Ljava/lang/Object;
.source "AggregationImpl.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IAggregation;
.implements Lcom/bytedance/applog/aggregation/IWorker;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

.field private final handler:Landroid/os/Handler;

.field private final trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/IMetricsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Lcom/bytedance/applog/aggregation/IMetricsCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "cache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->trackers:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
    .locals 1
    .param p1    # Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;-><init>(Lcom/bytedance/applog/aggregation/AggregationImpl;Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/applog/aggregation/AggregationImpl;->post(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public newMetricsTracker(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/bytedance/applog/aggregation/IMetricsTracker;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/bytedance/applog/aggregation/IMetricsTracker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "metricsName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->T0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    :goto_0
    move-object v4, p3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v6, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p1

    .line 24
    move v3, p2

    .line 25
    move-object v5, p4

    .line 26
    move-object v7, p0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/bytedance/applog/aggregation/IMetricsCache;Lcom/bytedance/applog/aggregation/IWorker;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->trackers:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public post(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/bytedance/applog/aggregation/AggregationImpl$post$1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/bytedance/applog/aggregation/AggregationImpl$post$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
