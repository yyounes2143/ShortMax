.class final Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AggregationImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->track(Ljava/lang/Object;Lorg/json/JSONObject;)V
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
.field final synthetic $params:Lorg/json/JSONObject;

.field final synthetic $value:Ljava/lang/Object;

.field final synthetic this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;


# direct methods
.method constructor <init>(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$value:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$params:Lorg/json/JSONObject;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 21

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    iget-object v2, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$value:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getInterval()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->access$calculateMetricsInterval(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 3
    iget-object v1, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v1}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getDimensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 4
    new-instance v12, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$params:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v19, 0x3e

    const/16 v20, 0x0

    const-string v13, "-"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 8
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v4}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getMetricsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v5}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getTypes()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v3}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getCache()Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/bytedance/applog/aggregation/IMetricsCache;->get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v4, 0x1

    :goto_3
    move v12, v4

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :goto_4
    if-nez v3, :cond_5

    .line 10
    new-instance v3, Lcom/bytedance/applog/aggregation/Metrics;

    .line 11
    iget-object v4, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v4}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getMetricsName()Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v4, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v4}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getTypes()I

    move-result v7

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 14
    iget-object v4, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$params:Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/bytedance/applog/aggregation/UtilsKt;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_4
    move-object v10, v2

    move-object v4, v3

    move-object v6, v1

    .line 15
    invoke-direct/range {v4 .. v11}, Lcom/bytedance/applog/aggregation/Metrics;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object v2, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->$value:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/bytedance/applog/aggregation/Metrics;->append(Ljava/lang/Object;)V

    if-eqz v12, :cond_6

    .line 17
    iget-object v2, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getCache()Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/aggregation/IMetricsCache;->insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    goto :goto_5

    .line 18
    :cond_6
    iget-object v2, v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;->this$0:Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    invoke-virtual {v2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->getCache()Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/aggregation/IMetricsCache;->update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    :goto_5
    return-void
.end method
