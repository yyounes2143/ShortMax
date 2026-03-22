.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/Id;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Id$oJ;,
        Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/ex/Pfn;
.end method

.method public abstract oJ()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;
.end method

.method public abstract oJ(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/ex/Pfn;
.end method

.method public abstract oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V
.end method

.method public abstract oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V
.end method

.method public abstract oJ(Ljava/lang/String;)V
.end method

.method public abstract oJ(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
.end method

.method public abstract oJ(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method
