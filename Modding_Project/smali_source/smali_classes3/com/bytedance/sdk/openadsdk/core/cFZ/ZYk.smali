.class public Lcom/bytedance/sdk/openadsdk/core/cFZ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/tB/oJ;->tB()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->tB()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static oJ()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/tB/oJ;->ZYk()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->ZYk()Z

    move-result v0

    return v0
.end method

.method public static oJ(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/tB/oJ;->oJ(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ/oJ;->oJ(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
