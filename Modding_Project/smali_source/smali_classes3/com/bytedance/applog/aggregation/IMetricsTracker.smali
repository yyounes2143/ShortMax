.class public interface abstract Lcom/bytedance/applog/aggregation/IMetricsTracker;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/aggregation/IMetricsTracker$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract track(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
