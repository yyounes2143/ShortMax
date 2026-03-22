.class public Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/si;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;
    }
.end annotation


# instance fields
.field ZYk:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

.field oJ:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "vertical"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;-><init>(Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    .line 25
    .line 26
    :cond_1
    const-string v0, "horizontal"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;-><init>(Lorg/json/JSONObject;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    .line 44
    .line 45
    :cond_2
    return-void
.end method


# virtual methods
.method public oJ(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;->oJ:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;->oJ:Ljava/lang/String;

    return-object p1

    .line 7
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public oJ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ$oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
