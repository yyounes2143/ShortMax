.class public interface abstract Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFinish(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;)V"
        }
    .end annotation
.end method
