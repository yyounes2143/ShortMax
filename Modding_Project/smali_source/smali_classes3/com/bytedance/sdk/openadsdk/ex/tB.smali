.class public Lcom/bytedance/sdk/openadsdk/ex/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$30;

    invoke-direct {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$30;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V

    const-string v4, "web_behavior_click"

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    const-string v0, "activity_recreate"

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static ZYk(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$24;

    invoke-direct {v5, p0, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/ex/tB$24;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    const-string v4, "endcard_feeling_duraion"

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 6

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$27;

    invoke-direct {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$27;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V

    const-string v4, "web_behavior_load"

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 6

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$14;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/ex/tB$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v4, "picture_click"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 6

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$7;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$7;-><init>(I)V

    const-string v4, "check_meta"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    if-nez p3, :cond_0

    .line 19
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 20
    :cond_0
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    const-string p2, "download_app_ad_track"

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    const-wide/32 v0, 0x30d40

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/tB$3;

    invoke-direct {v6, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$3;-><init>(J)V

    const-string v5, "video_click_duration"

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$18;

    invoke-direct {v5, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$18;-><init>(Lorg/json/JSONObject;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$35;

    invoke-direct {v5, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/ex/tB$35;-><init>(Lorg/json/JSONObject;J)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->Pfn:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$37;

    invoke-direct {v5, p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$37;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pag_json_data"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v0, "is_new_playable"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$46;

    .line 6
    .line 7
    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$46;-><init>(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    const-string v4, "show_next_ad_hint"

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$47;

    .line 6
    .line 7
    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$47;-><init>(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    const-string v4, "click_next_ad_button"

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 6

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$29;

    invoke-direct {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$29;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V

    const-string v4, "web_behavior_scroll"

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 6

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$13;

    invoke-direct {v5, p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$13;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    const-string v4, "material_status"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method private static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ofl()Z

    move-result v0

    const-string v1, "show"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Z)V

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    const-string v2, "onShow"

    move-object v1, v0

    move-object v3, p0

    move-object v4, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB$51;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 8
    invoke-static {p0, p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method

.method public static oJ()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    :try_start_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/ex/tB;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static oJ(ILorg/json/JSONObject;)V
    .locals 2

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    const-string v1, "ad_show_order"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string p0, "pag_json_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->IUZ()Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/tB$31;

    invoke-direct {v6, p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$31;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    const-string v5, "endcard_close"

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V
    .locals 9
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    if-eqz p2, :cond_2

    .line 39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Jm()I

    move-result v0

    invoke-static {v0, p4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/tB$21;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p4

    move-object v5, p2

    move-wide v6, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB$21;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;)V
    .locals 6

    .line 9
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$50;

    invoke-direct {v5, p5}, Lcom/bytedance/sdk/openadsdk/ex/tB$50;-><init>(Lorg/json/JSONObject;)V

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/so/so;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->oJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ex/tB$41;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/ex/tB$41;-><init>(Lcom/bytedance/sdk/component/so/so;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->cFZ()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    .line 56
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;I)V

    return-void

    .line 57
    :cond_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 61
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->ex:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->tB()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/tB$42;

    invoke-direct {v6, p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB$42;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;ILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v5, "open_browser"

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uaj()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/oJ;->oJ(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 6

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$26;

    invoke-direct {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$26;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V

    const-string v4, "web_behavior_keyword"

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 6

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$12;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/ex/tB$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v4, "endcard_load_start"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 6

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$1;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$1;-><init>(I)V

    const-string v4, "open_url_h5"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;F)V
    .locals 6

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->ZYk:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$10;

    invoke-direct {v5, p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$10;-><init>(ILjava/lang/String;FLjava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->oJ:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$9;

    invoke-direct {v5, p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$9;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;JZIJ)V
    .locals 14

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->ex:Ljava/lang/String;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/ex/tB$4;

    move-object v3, v13

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/openadsdk/ex/tB$4;-><init>(ILjava/lang/String;JZIJLjava/lang/String;)V

    move-wide/from16 p2, v0

    move-object/from16 p4, p0

    move-object/from16 p5, p1

    move-object/from16 p6, v2

    move-object/from16 p7, v13

    invoke-static/range {p2 .. p7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->tB:Ljava/lang/String;

    new-instance v11, Lcom/bytedance/sdk/openadsdk/ex/tB$11;

    move-object v5, v11

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/ex/tB$11;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    if-nez p3, :cond_0

    .line 68
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 69
    :cond_0
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    const-string p2, "open_ad_land_page_links"

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V
    .locals 6

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$22;

    invoke-direct {v5, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$22;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    const-string v4, "endcard_load_finish"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JII)V
    .locals 9

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Lcom/bytedance/sdk/openadsdk/ex/tB$44;

    move-object v2, v8

    move-object v3, p0

    move v4, p5

    move v5, p4

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB$44;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;IIJ)V

    const-string v4, "load"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/ex/tB$33;

    move-object v2, v9

    move-object v3, p0

    move-object/from16 v4, p6

    move v5, p4

    move-object v6, p5

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB$33;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;J)V

    const-string v4, "endcard_load_fail"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 6

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$40;

    invoke-direct {v5, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/ex/tB$40;-><init>(JLorg/json/JSONObject;)V

    const-string v3, "open_ad"

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JZ)V
    .locals 6

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$5;

    invoke-direct {v5, p4, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$5;-><init>(ZJ)V

    const-string v4, "lp_loading"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v1

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Lcom/bytedance/sdk/openadsdk/ex/tB$2;

    move-object v0, v8

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB$2;-><init>(JLcom/bytedance/sdk/openadsdk/utils/wd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string p2, "stay_duration"

    move-wide v3, v6

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$32;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$32;-><init>(Ljava/lang/String;)V

    const-string v4, "show_error"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 11

    if-nez p6, :cond_0

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    .line 35
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Lcom/bytedance/sdk/openadsdk/ex/tB$17;

    move-object v1, v10

    move-wide v2, p3

    move/from16 v4, p5

    move-object v5, p2

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB$17;-><init>(JILjava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;Lorg/json/JSONObject;)V

    move-wide v0, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$34;

    invoke-direct {v5, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/ex/tB$34;-><init>(JLorg/json/JSONObject;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V
    .locals 6

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$23;

    invoke-direct {v5, p3, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$23;-><init>(Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;Ljava/lang/String;)V

    const-string v4, "playable_track"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V
    .locals 15
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Jm()I

    move-result v0

    move-object/from16 v5, p3

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/tB$39;

    const-string v2, "sendJsAdEvent"

    move-object v1, v0

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p9

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p1

    move-wide/from16 v13, p6

    invoke-direct/range {v1 .. v14}, Lcom/bytedance/sdk/openadsdk/ex/tB$39;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;J)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$20;

    invoke-direct {v5, p3, p0}, Lcom/bytedance/sdk/openadsdk/ex/tB$20;-><init>(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$16;

    invoke-direct {v5, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$16;-><init>(Lorg/json/JSONObject;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    .line 32
    const-string p1, "click"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/HL;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$19;

    invoke-direct {v5, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/ex/tB$19;-><init>(Lorg/json/JSONObject;J)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 10
    const-string v0, "show"

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZZZZILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "ZZZZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/ex/tB$43;

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB$43;-><init>(ZZZZILjava/util/Map;)V

    const-string v2, "start_show_plb"

    move-wide p2, v0

    move-object p4, p0

    move-object p5, p1

    move-object/from16 p6, v2

    move-object/from16 p7, v9

    invoke-static/range {p2 .. p7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v12, Lcom/bytedance/sdk/openadsdk/ex/tB$45;

    move-object v2, v12

    move-object/from16 v3, p7

    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/ex/tB$45;-><init>(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    const-string v2, "load_ugen_template"

    move-wide/from16 p3, v0

    move-object/from16 p5, p0

    move-object/from16 p6, p2

    move-object/from16 p7, v2

    move-object/from16 p8, v12

    invoke-static/range {p3 .. p8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static oJ(Ljava/lang/String;J)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cFZ/tB;->oJ(Ljava/lang/String;J)V

    return-void
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V
    .locals 12
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Lcom/bytedance/sdk/openadsdk/core/model/BTZ;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 30
    new-instance v11, Lcom/bytedance/sdk/openadsdk/ex/tB$15;

    const-string v1, "onClick"

    move-object v0, v11

    move-object v2, p1

    move-object v5, p3

    move-object v6, p0

    move-object v7, p2

    move/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/ex/tB$15;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;ZILjava/util/Map;)V

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 7
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 20
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/tB$52;

    invoke-direct {v6, p0, p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$52;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v5, "ad_show_time"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$49;

    invoke-direct {v5, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$49;-><init>(Ljava/util/Map;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method private static oJ(Lorg/json/JSONObject;)V
    .locals 4

    .line 11
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/so;->oJ()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;II)V
    .locals 2

    .line 63
    :try_start_0
    const-string v0, "skip_show_time"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v0, "skip_time"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    const-string v1, "skip_after_time"

    mul-int/lit16 p1, p1, 0x3e8

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string p1, "pag_json_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static oJ(ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oG()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->HL(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/16 p1, 0x64

    if-eq p0, p1, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int p1, v3

    if-le p1, p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 77
    :goto_0
    const-string p1, "TTAD.AdEvent"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static so(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$48;

    .line 6
    .line 7
    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$48;-><init>(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    const-string v4, "click_playable_button"

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 6

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$28;

    invoke-direct {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$28;-><init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V

    const-string v4, "web_behavior_stay"

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->IUZ()Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/tB$25;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/ex/tB$25;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v5, "endcard_show"

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$8;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$8;-><init>(I)V

    const-string v4, "check_meta_more"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$6;

    invoke-direct {v5, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/tB$6;-><init>(J)V

    const-string v4, "load_feeling_duration"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$36;

    invoke-direct {v5, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB$36;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/ZYk;->ba:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/tB$38;

    invoke-direct {v5, p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB$38;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method
