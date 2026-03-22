.class final Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AggregationImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/aggregation/AggregationImpl;->flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

.field final synthetic this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;


# direct methods
.method constructor <init>(Lcom/bytedance/applog/aggregation/AggregationImpl;Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->$callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-static {v0}, Lcom/bytedance/applog/aggregation/AggregationImpl;->access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/aggregation/IMetricsCache;->getAll()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-static {v1}, Lcom/bytedance/applog/aggregation/AggregationImpl;->access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/applog/aggregation/IMetricsCache;->clear()V

    .line 4
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->$callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

    invoke-interface {v1, v0}, Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;->onFinish(Ljava/util/List;)V

    return-void
.end method
