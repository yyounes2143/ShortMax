.class public Lcom/bytedance/adsdk/ugeno/oJ/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ZYk(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ease_in_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "ease_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "linear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "ease_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    .line 2
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7520a0ea -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2ef36483 -> :sswitch_1
        0x3f7ac2a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ZYk(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;
    .locals 3

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-static {p0, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;-><init>()V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;->oJ:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;->ZYk:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static oJ(I)I
    .locals 0

    .line 1
    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static oJ(Ljava/lang/String;)I
    .locals 2

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x53ecbf86

    if-eq v0, v1, :cond_1

    const v1, -0x3df94319

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "alternate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static oJ(Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 48
    div-int/lit8 v3, p1, 0x2

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v2, v4

    goto :goto_1

    :sswitch_0
    const-string v2, "right"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "left"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "top"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :sswitch_3
    const-string v2, "center"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :sswitch_4
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :cond_5
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 51
    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    return v3

    .line 53
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_4
        -0x514d33ab -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/oJ/tB;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/oJ/tB;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/oJ/tB;-><init>()V

    .line 12
    const-string v1, "delay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;J)J

    move-result-wide v4

    .line 13
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->ZYk(J)V

    .line 14
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->tB(Ljava/lang/String;)V

    .line 16
    const-string v1, "playState"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->ZYk(I)V

    .line 18
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;J)J

    move-result-wide v5

    .line 19
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(J)V

    .line 20
    const-string v1, "playCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(I)V

    .line 22
    const-string v1, "playDirection"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(Ljava/lang/String;)V

    .line 24
    const-string v1, "transformOrigin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/oJ/ex;->ZYk(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(Lcom/bytedance/adsdk/ugeno/oJ/tB$oJ;)V

    .line 25
    const-string v1, "timingFunction"

    const-string v2, "linear"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->ZYk(Ljava/lang/String;)V

    .line 27
    const-string v1, "effect"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(Lorg/json/JSONObject;)V

    .line 28
    const-string v1, "keyframes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/adsdk/ugeno/oJ/ex;->oJ(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/oJ/tB;->oJ(Ljava/util/Map;)V

    return-object v0
.end method

.method public static oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/oJ/tB;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_3

    .line 7
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v1, p1}, Lcom/bytedance/adsdk/ugeno/oJ/ex;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/oJ/tB;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 10
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static oJ(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 31
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 34
    const-string v3, "offset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 35
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 36
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 37
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 38
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    .line 39
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 40
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 41
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 43
    :cond_2
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 44
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tB(Ljava/lang/String;)[F
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    aput v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aput v3, v1, v4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p0, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v3, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    double-to-float v0, v5

    .line 30
    aput v0, v1, v2

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    double-to-float p0, v2

    .line 37
    aput p0, v1, v4

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-object v1
.end method
