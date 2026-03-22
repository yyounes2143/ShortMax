.class public Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/so/so;
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk$2;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v3, "open_ad"

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    move-object v0, v6

    .line 11
    move-object v2, p0

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk$2;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, p3}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 27
    .line 28
    .line 29
    return-object v6
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;)Lcom/bytedance/sdk/openadsdk/component/oJ/oJ;
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/oJ/oJ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "open_ad"

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    const p2, 0x1020002

    .line 2
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    const p2, 0x1f000011

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V

    .line 5
    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-object v6
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/so/jFA;
    .locals 7

    .line 6
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk$1;

    const-string v3, "open_ad"

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    .line 7
    invoke-virtual {v6, p3}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V

    .line 9
    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-object v6
.end method

.method private static oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 16
    const-string p1, "open_ad"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    :cond_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Yg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_area"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_normal_ad"

    goto :goto_0

    :cond_0
    const-string v1, "image_normal_ad"

    :goto_0
    const-string v2, "openad_creative_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "click_scence"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    return-void
.end method
