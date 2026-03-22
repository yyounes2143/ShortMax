.class final Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/jFA/oJ/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->oJ()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jr(I)V

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->tB()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4$1;

    invoke-direct {v5, p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->oJ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jr(I)V

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ZYk/oJ;->tB()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY(Ljava/lang/String;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
