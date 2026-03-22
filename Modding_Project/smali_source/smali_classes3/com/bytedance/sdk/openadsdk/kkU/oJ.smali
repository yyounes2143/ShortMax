.class public Lcom/bytedance/sdk/openadsdk/kkU/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/kkU/tB;


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/kkU/ZYk;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/kkU/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/kkU/ZYk;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    return-void
.end method

.method private oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    const/4 p2, 0x1

    .line 45
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->oJ(Z)V

    return-object p1
.end method

.method private oJ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tb(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez p1, :cond_2

    return-object v1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p1

    .line 14
    :cond_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_0
    const-string v2, "lu"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    const-string v3, "null"

    :goto_0
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v2, "ju"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-static {v2, v3, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    if-eqz p1, :cond_7

    .line 18
    const-string p2, "play.google.com/store"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "referrer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ(Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/kkU/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/kkU/oJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/kkU/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-object v0
.end method

.method private oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;IZ)V
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p5

    if-eqz p5, :cond_3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/kkU/ZYk;

    if-nez p3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    if-eqz p3, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(I)Ljava/lang/String;

    move-result-object p3

    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 27
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    .line 28
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/kkU/ZYk;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string v0, "message"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v0, "status"

    const-string v1, "unsubscribed"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v0, "appad"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/kkU/ZYk;

    const-string v0, "app_ad_event"

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/kkU/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    const-string p2, "JsAppAdDownloadManager"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->tB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public oJ(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 29
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    invoke-direct {p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
