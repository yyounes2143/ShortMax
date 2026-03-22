.class public Lcom/mbridge/msdk/foundation/same/report/metrics/f;
.super Ljava/lang/Object;
.source "SameMetricsReport.java"


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

.method private a(Ljava/lang/String;Ljava/util/Map;)Lcom/mbridge/msdk/tracker/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/tracker/e;"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 40
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/tracker/e;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/tracker/e;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 42
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/b;->b()Lcom/mbridge/msdk/foundation/same/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/b;->a()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 43
    const-string v1, "r_v_r"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/e;->b(I)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 47
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->r()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 81
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "resource_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 82
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_0

    .line 84
    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 85
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p2, -0x1

    :goto_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g()Ljava/util/List;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_6

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 92
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g()Ljava/util/List;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_6

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 96
    :goto_4
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/tracker/m;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    const-string v0, "r_stid"

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 50
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v2

    if-nez v2, :cond_0

    .line 51
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/b;->k0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    const-string v3, "as_rid"

    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/b;->k0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/b;->J()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/b;->I()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    .line 56
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 57
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const-string v3, "1.0"

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    :cond_3
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "log_rate"

    if-nez p1, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 p1, -0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 64
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 66
    const-string v2, "us_rid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 67
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 68
    const-string v2, "u_stid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_6
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    .line 70
    invoke-virtual {p3}, Lcom/mbridge/msdk/tracker/m;->c()Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_7

    .line 71
    :try_start_2
    invoke-virtual {p3}, Lcom/mbridge/msdk/tracker/m;->c()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :catch_1
    :cond_7
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 74
    :goto_4
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_8

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v3, "126_exclude"

    .line 6
    .line 7
    const-string v4, "rid_n"

    .line 8
    .line 9
    const-string v5, "cid"

    .line 10
    .line 11
    const-string v6, "dspid"

    .line 12
    .line 13
    const-string v7, "ec_temp_id"

    .line 14
    .line 15
    const-string v8, "endcard_crid"

    .line 16
    .line 17
    const-string v9, "video_crid"

    .line 18
    .line 19
    const-string v10, "crid"

    .line 20
    .line 21
    const-string v11, "vtid"

    .line 22
    .line 23
    const-string v12, "lcs"

    .line 24
    .line 25
    new-instance v13, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 26
    .line 27
    invoke-direct {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    sget-object v14, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->g:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    if-eqz v14, :cond_0

    .line 41
    .line 42
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :goto_0
    move-object v1, v0

    .line 49
    goto/16 :goto_28

    .line 50
    .line 51
    :cond_0
    if-nez v2, :cond_1

    .line 52
    .line 53
    const-string v1, "metrics_data_reason"

    .line 54
    .line 55
    const-string v2, "metrics \u4e0a\u62a5\u65f6\u610f\u5916\u4e3a\u7a7a"

    .line 56
    .line 57
    invoke-virtual {v13, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    return-object v1

    .line 65
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    if-eqz v15, :cond_3

    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 81
    .line 82
    .line 83
    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    move-object/from16 v16, v4

    .line 85
    .line 86
    const/16 v4, 0x127

    .line 87
    .line 88
    if-ne v15, v4, :cond_4

    .line 89
    .line 90
    :cond_2
    move-object/from16 v4, p0

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object/from16 v16, v4

    .line 95
    .line 96
    move-object v4, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move-object/from16 v16, v4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    :try_start_2
    const-string v15, "SameMetricsReport"

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v15, v4}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_2
    sget-object v4, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->f:[Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    :try_start_3
    const-string v4, "m_download_start"

    .line 123
    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    if-nez v4, :cond_5

    .line 129
    .line 130
    :try_start_4
    const-string v4, "m_download_end"

    .line 131
    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    :cond_5
    move-object/from16 v4, p0

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_7

    .line 146
    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    goto :goto_3

    .line 152
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    :goto_3
    if-eqz v4, :cond_8

    .line 157
    .line 158
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    if-lez v15, :cond_8

    .line 163
    .line 164
    invoke-interface {v14, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    :cond_8
    move-object/from16 v4, p0

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :goto_4
    invoke-direct {v4, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    goto :goto_7

    .line 175
    :catch_1
    move-exception v0

    .line 176
    move-object/from16 v4, p0

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    if-eqz v15, :cond_9

    .line 185
    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    if-eqz v15, :cond_a

    .line 199
    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    goto :goto_6

    .line 205
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    :goto_6
    if-eqz v15, :cond_b

    .line 210
    .line 211
    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    .line 213
    .line 214
    :cond_b
    :goto_7
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    if-eqz v15, :cond_c

    .line 219
    .line 220
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->r()Ljava/util/Map;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    const-string v1, "1"

    .line 253
    .line 254
    if-eqz v4, :cond_d

    .line 255
    .line 256
    :try_start_5
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-eqz v4, :cond_d

    .line 261
    .line 262
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    check-cast v4, Ljava/util/Map;

    .line 267
    .line 268
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 272
    if-eqz v4, :cond_d

    .line 273
    .line 274
    :try_start_6
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    check-cast v4, Ljava/util/Map;

    .line 279
    .line 280
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Ljava/lang/String;

    .line 285
    .line 286
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Ljava/util/Map;

    .line 291
    .line 292
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_d

    .line 300
    .line 301
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 305
    return-object v1

    .line 306
    :catch_2
    move-exception v0

    .line 307
    move-object v2, v0

    .line 308
    :try_start_7
    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 309
    .line 310
    if-eqz v3, :cond_d

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    .line 314
    .line 315
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_4e

    .line 324
    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 330
    .line 331
    if-nez v3, :cond_e

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_e
    const-string v4, "i_s_c_t"

    .line 335
    .line 336
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterCallBackState()I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    const-string v4, "r_index"

    .line 348
    .line 349
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    const-string v4, "s_show_index"

    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondShowIndex()I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v14

    .line 370
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    const-string v4, "f_a_v_c_s"

    .line 374
    .line 375
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterAdsVideoCallState()I

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    const-string v4, "f_a_s_c_s"

    .line 387
    .line 388
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterAdsShowCallState()I

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    if-eqz v4, :cond_f

    .line 404
    .line 405
    const-string v14, "ignore_video"

    .line 406
    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v15

    .line 417
    const/16 v17, 0x1

    .line 418
    .line 419
    xor-int/lit8 v15, v15, 0x1

    .line 420
    .line 421
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    invoke-virtual {v13, v14, v15}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    const-string v14, "ignore_template"

    .line 429
    .line 430
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v15

    .line 434
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v15

    .line 438
    xor-int/lit8 v15, v15, 0x1

    .line 439
    .line 440
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    invoke-virtual {v13, v14, v15}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    const-string v14, "ignore_ec"

    .line 448
    .line 449
    move-object/from16 v18, v2

    .line 450
    .line 451
    const/4 v15, 0x2

    .line 452
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    xor-int/lit8 v2, v2, 0x1

    .line 461
    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v13, v14, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_f
    move-object/from16 v18, v2

    .line 471
    .line 472
    const-string v2, "ignore_video"

    .line 473
    .line 474
    const/4 v4, 0x1

    .line 475
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    invoke-virtual {v13, v2, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    const-string v2, "ignore_template"

    .line 483
    .line 484
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v14

    .line 488
    invoke-virtual {v13, v2, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    const-string v2, "ignore_ec"

    .line 492
    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    invoke-virtual {v13, v2, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    :goto_9
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-nez v2, :cond_11

    .line 509
    .line 510
    const-string v2, "n_lrid"

    .line 511
    .line 512
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNRid()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-nez v2, :cond_10

    .line 528
    .line 529
    const-string v2, "n_rid"

    .line 530
    .line 531
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNRid()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    :cond_10
    const-string v2, "lrid"

    .line 539
    .line 540
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_11
    const-string v2, "lrid"

    .line 549
    .line 550
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    :goto_a
    const-string v2, "rid"

    .line 558
    .line 559
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eqz v2, :cond_12

    .line 571
    .line 572
    const-string v2, "stid"

    .line 573
    .line 574
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    :cond_12
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 590
    .line 591
    .line 592
    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 593
    const-string v14, ","

    .line 594
    .line 595
    if-eqz v4, :cond_13

    .line 596
    .line 597
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v15

    .line 606
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalCheckShow()I

    .line 613
    .line 614
    .line 615
    move-result v15

    .line 616
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-virtual {v13, v12, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_13
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalCheckShow()I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-virtual {v13, v12, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    :goto_b
    if-eqz v2, :cond_15

    .line 639
    .line 640
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-eqz v4, :cond_15

    .line 645
    .line 646
    invoke-virtual {v13, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    if-eqz v4, :cond_14

    .line 651
    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v13, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v15

    .line 661
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-virtual {v13, v11, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    goto :goto_c

    .line 682
    :cond_14
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v13, v11, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    :cond_15
    :goto_c
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    .line 694
    .line 695
    .line 696
    move-result-wide v19

    .line 697
    const-wide/16 v21, 0x0

    .line 698
    .line 699
    cmp-long v2, v19, v21

    .line 700
    .line 701
    if-eqz v2, :cond_17

    .line 702
    .line 703
    invoke-virtual {v13, v10}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    if-eqz v2, :cond_16

    .line 708
    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v13, v10}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    move-object v4, v11

    .line 725
    move-object v15, v12

    .line 726
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    .line 727
    .line 728
    .line 729
    move-result-wide v11

    .line 730
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v13, v10, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_16
    move-object v4, v11

    .line 742
    move-object v15, v12

    .line 743
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    .line 744
    .line 745
    .line 746
    move-result-wide v11

    .line 747
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v13, v10, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    goto :goto_d

    .line 755
    :cond_17
    move-object v4, v11

    .line 756
    move-object v15, v12

    .line 757
    :goto_d
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVidCrtvId()J

    .line 758
    .line 759
    .line 760
    move-result-wide v11

    .line 761
    cmp-long v2, v11, v21

    .line 762
    .line 763
    if-eqz v2, :cond_19

    .line 764
    .line 765
    invoke-virtual {v13, v9}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    if-eqz v2, :cond_18

    .line 770
    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v13, v9}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v11

    .line 780
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVidCrtvId()J

    .line 787
    .line 788
    .line 789
    move-result-wide v11

    .line 790
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    invoke-virtual {v13, v9, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    goto :goto_e

    .line 801
    :cond_18
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVidCrtvId()J

    .line 802
    .line 803
    .line 804
    move-result-wide v11

    .line 805
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v13, v9, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    :cond_19
    :goto_e
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcCrtvId()J

    .line 813
    .line 814
    .line 815
    move-result-wide v11

    .line 816
    cmp-long v2, v11, v21

    .line 817
    .line 818
    if-eqz v2, :cond_1b

    .line 819
    .line 820
    invoke-virtual {v13, v8}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-eqz v2, :cond_1a

    .line 825
    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v13, v8}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcCrtvId()J

    .line 842
    .line 843
    .line 844
    move-result-wide v11

    .line 845
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-virtual {v13, v8, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    goto :goto_f

    .line 856
    :cond_1a
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcCrtvId()J

    .line 857
    .line 858
    .line 859
    move-result-wide v11

    .line 860
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    invoke-virtual {v13, v8, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    :cond_1b
    :goto_f
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    .line 868
    .line 869
    .line 870
    move-result-wide v11

    .line 871
    cmp-long v2, v11, v21

    .line 872
    .line 873
    if-eqz v2, :cond_1d

    .line 874
    .line 875
    invoke-virtual {v13, v7}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_1c

    .line 880
    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v13, v7}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v11

    .line 890
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    .line 897
    .line 898
    .line 899
    move-result-wide v11

    .line 900
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-virtual {v13, v7, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 908
    .line 909
    .line 910
    goto :goto_10

    .line 911
    :cond_1c
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    .line 912
    .line 913
    .line 914
    move-result-wide v11

    .line 915
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    invoke-virtual {v13, v7, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    .line 921
    .line 922
    :cond_1d
    :goto_10
    const-string v2, "bid_tk"

    .line 923
    .line 924
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v11

    .line 928
    invoke-virtual {v13, v2, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 936
    .line 937
    .line 938
    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 939
    const-string v11, "2"

    .line 940
    .line 941
    if-nez v2, :cond_1f

    .line 942
    .line 943
    :try_start_9
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u0;->i(Ljava/lang/String;)Z

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    if-eqz v2, :cond_1e

    .line 952
    .line 953
    const-string v2, "sdyv"

    .line 954
    .line 955
    invoke-virtual {v13, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    .line 957
    .line 958
    goto :goto_11

    .line 959
    :cond_1e
    const-string v2, "sdyv"

    .line 960
    .line 961
    invoke-virtual {v13, v2, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    .line 963
    .line 964
    :cond_1f
    :goto_11
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    if-eqz v2, :cond_23

    .line 969
    .line 970
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    if-nez v2, :cond_23

    .line 983
    .line 984
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u0;->i(Ljava/lang/String;)Z

    .line 993
    .line 994
    .line 995
    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 996
    const-string v12, "vdyv"

    .line 997
    .line 998
    if-eqz v2, :cond_21

    .line 999
    .line 1000
    :try_start_a
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-eqz v2, :cond_20

    .line 1005
    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    move-object/from16 v17, v4

    .line 1012
    .line 1013
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    const-string v4, ",1"

    .line 1021
    .line 1022
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    invoke-virtual {v13, v12, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_12

    .line 1033
    :cond_20
    move-object/from16 v17, v4

    .line 1034
    .line 1035
    invoke-virtual {v13, v12, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_12

    .line 1039
    :cond_21
    move-object/from16 v17, v4

    .line 1040
    .line 1041
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    if-eqz v2, :cond_22

    .line 1046
    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v13, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    const-string v4, ",2"

    .line 1060
    .line 1061
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    invoke-virtual {v13, v12, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    goto :goto_12

    .line 1072
    :cond_22
    invoke-virtual {v13, v12, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_12

    .line 1076
    :cond_23
    move-object/from16 v17, v4

    .line 1077
    .line 1078
    :goto_12
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    if-nez v2, :cond_27

    .line 1087
    .line 1088
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v2

    .line 1092
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u0;->i(Ljava/lang/String;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1096
    const-string v4, "edyv"

    .line 1097
    .line 1098
    if-eqz v2, :cond_25

    .line 1099
    .line 1100
    :try_start_b
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    if-eqz v2, :cond_24

    .line 1105
    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v12

    .line 1115
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    const-string v12, ",1"

    .line 1119
    .line 1120
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    goto :goto_13

    .line 1131
    :cond_24
    invoke-virtual {v13, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_13

    .line 1135
    :cond_25
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v2

    .line 1139
    if-eqz v2, :cond_26

    .line 1140
    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v12

    .line 1150
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    const-string v12, ",2"

    .line 1154
    .line 1155
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_13

    .line 1166
    :cond_26
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    :cond_27
    :goto_13
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v2

    .line 1177
    if-nez v2, :cond_29

    .line 1178
    .line 1179
    new-instance v2, Lorg/json/JSONObject;

    .line 1180
    .line 1181
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v13, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v4

    .line 1192
    if-eqz v4, :cond_28

    .line 1193
    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v13, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v12

    .line 1203
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    const-string v12, "par_dspid"

    .line 1210
    .line 1211
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    invoke-virtual {v13, v6, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1223
    .line 1224
    .line 1225
    goto :goto_14

    .line 1226
    :cond_28
    const-string v4, "par_dspid"

    .line 1227
    .line 1228
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v2

    .line 1232
    invoke-virtual {v13, v6, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1233
    .line 1234
    .line 1235
    :cond_29
    :goto_14
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    .line 1236
    .line 1237
    .line 1238
    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1239
    const-string v4, "only_ec"

    .line 1240
    .line 1241
    const/4 v12, 0x2

    .line 1242
    if-ne v2, v12, :cond_2b

    .line 1243
    .line 1244
    :try_start_c
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v2

    .line 1248
    if-eqz v2, :cond_2a

    .line 1249
    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v11

    .line 1259
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    const-string v11, ",2"

    .line 1263
    .line 1264
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_15

    .line 1275
    :cond_2a
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    goto :goto_15

    .line 1279
    :cond_2b
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v2

    .line 1283
    if-eqz v2, :cond_2c

    .line 1284
    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v11

    .line 1294
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    const-string v11, ",1"

    .line 1298
    .line 1299
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_15

    .line 1310
    :cond_2c
    invoke-virtual {v13, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    .line 1312
    .line 1313
    :goto_15
    const-string v2, "hb"

    .line 1314
    .line 1315
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v4

    .line 1319
    if-eqz v4, :cond_2d

    .line 1320
    .line 1321
    move-object v4, v1

    .line 1322
    goto :goto_16

    .line 1323
    :cond_2d
    const-string v4, "0"

    .line 1324
    .line 1325
    :goto_16
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    const-string v2, "adspace_t"

    .line 1329
    .line 1330
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    .line 1331
    .line 1332
    .line 1333
    move-result v4

    .line 1334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v4

    .line 1338
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v13, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v2

    .line 1345
    if-eqz v2, :cond_2e

    .line 1346
    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v13, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v4

    .line 1356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v4

    .line 1366
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v2

    .line 1373
    invoke-virtual {v13, v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1374
    .line 1375
    .line 1376
    :goto_17
    move-object/from16 v2, v16

    .line 1377
    .line 1378
    goto :goto_18

    .line 1379
    :cond_2e
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    invoke-virtual {v13, v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1384
    .line 1385
    .line 1386
    goto :goto_17

    .line 1387
    :goto_18
    invoke-virtual {v13, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v4

    .line 1391
    if-eqz v4, :cond_2f

    .line 1392
    .line 1393
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v13, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v11

    .line 1402
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v11

    .line 1412
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v4

    .line 1419
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1420
    .line 1421
    .line 1422
    goto :goto_19

    .line 1423
    :cond_2f
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1428
    .line 1429
    .line 1430
    :goto_19
    sget-object v4, Lcom/mbridge/msdk/foundation/controller/a;->r:Ljava/util/HashMap;

    .line 1431
    .line 1432
    if-eqz v4, :cond_30

    .line 1433
    .line 1434
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v11

    .line 1438
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v4

    .line 1442
    check-cast v4, Ljava/lang/String;

    .line 1443
    .line 1444
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v11

    .line 1448
    if-nez v11, :cond_30

    .line 1449
    .line 1450
    const-string v11, "u_stid"

    .line 1451
    .line 1452
    invoke-virtual {v13, v11, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1453
    .line 1454
    .line 1455
    :cond_30
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v4

    .line 1459
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v4

    .line 1463
    if-nez v4, :cond_31

    .line 1464
    .line 1465
    const-string v4, "unit_id"

    .line 1466
    .line 1467
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v11

    .line 1471
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1472
    .line 1473
    .line 1474
    :cond_31
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 1475
    .line 1476
    .line 1477
    move-result v4

    .line 1478
    if-eqz v4, :cond_32

    .line 1479
    .line 1480
    const-string v4, "adtp"

    .line 1481
    .line 1482
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 1483
    .line 1484
    .line 1485
    move-result v11

    .line 1486
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v11

    .line 1490
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1491
    .line 1492
    .line 1493
    :cond_32
    const-string v4, "hb"

    .line 1494
    .line 1495
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v11

    .line 1499
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v11

    .line 1503
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1504
    .line 1505
    .line 1506
    const-string v4, "exp_ids"

    .line 1507
    .line 1508
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getExpIds()Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v11

    .line 1512
    invoke-virtual {v13, v4, v11}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1513
    .line 1514
    .line 1515
    const-string v4, "2000047"

    .line 1516
    .line 1517
    move-object v11, v1

    .line 1518
    move-object/from16 v1, p1

    .line 1519
    .line 1520
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1521
    .line 1522
    .line 1523
    move-result v4

    .line 1524
    if-eqz v4, :cond_34

    .line 1525
    .line 1526
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTyped()I

    .line 1527
    .line 1528
    .line 1529
    move-result v4

    .line 1530
    const/4 v12, -0x1

    .line 1531
    if-eq v4, v12, :cond_33

    .line 1532
    .line 1533
    const-string v4, "type_d"

    .line 1534
    .line 1535
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTyped()I

    .line 1536
    .line 1537
    .line 1538
    move-result v12

    .line 1539
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v12

    .line 1543
    invoke-virtual {v13, v4, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1544
    .line 1545
    .line 1546
    :cond_33
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReasond()Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v4

    .line 1550
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v4

    .line 1554
    if-nez v4, :cond_34

    .line 1555
    .line 1556
    const-string v4, "reason_d"

    .line 1557
    .line 1558
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReasond()Ljava/lang/String;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v12

    .line 1562
    invoke-virtual {v13, v4, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1563
    .line 1564
    .line 1565
    :cond_34
    const-string v4, "2000048"

    .line 1566
    .line 1567
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v4

    .line 1571
    if-eqz v4, :cond_37

    .line 1572
    .line 1573
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTyped()I

    .line 1574
    .line 1575
    .line 1576
    move-result v4

    .line 1577
    const/4 v12, -0x1

    .line 1578
    if-eq v4, v12, :cond_35

    .line 1579
    .line 1580
    const-string v4, "type"

    .line 1581
    .line 1582
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTyped()I

    .line 1583
    .line 1584
    .line 1585
    move-result v12

    .line 1586
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v12

    .line 1590
    invoke-virtual {v13, v4, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1591
    .line 1592
    .line 1593
    :cond_35
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReasond()Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v4

    .line 1597
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1598
    .line 1599
    .line 1600
    move-result v4

    .line 1601
    if-nez v4, :cond_36

    .line 1602
    .line 1603
    const-string v4, "reason"

    .line 1604
    .line 1605
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReasond()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v12

    .line 1609
    invoke-virtual {v13, v4, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1610
    .line 1611
    .line 1612
    :cond_36
    const-string v4, "rtins_type"

    .line 1613
    .line 1614
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRtinsType()I

    .line 1615
    .line 1616
    .line 1617
    move-result v12

    .line 1618
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v12

    .line 1622
    invoke-virtual {v13, v4, v12}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1623
    .line 1624
    .line 1625
    :cond_37
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 1626
    .line 1627
    .line 1628
    move-result v4

    .line 1629
    const/16 v12, 0x5e

    .line 1630
    .line 1631
    if-eq v4, v12, :cond_39

    .line 1632
    .line 1633
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 1634
    .line 1635
    .line 1636
    move-result v4

    .line 1637
    const/16 v12, 0x11f

    .line 1638
    .line 1639
    if-ne v4, v12, :cond_38

    .line 1640
    .line 1641
    goto :goto_1a

    .line 1642
    :cond_38
    move-object/from16 v16, v2

    .line 1643
    .line 1644
    move-object v1, v11

    .line 1645
    move-object v12, v15

    .line 1646
    move-object/from16 v11, v17

    .line 1647
    .line 1648
    move-object/from16 v2, v18

    .line 1649
    .line 1650
    goto/16 :goto_8

    .line 1651
    .line 1652
    :cond_39
    :goto_1a
    sget-object v4, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->j:[Ljava/lang/String;

    .line 1653
    .line 1654
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v4

    .line 1658
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1662
    const-string v12, "temp_display_type"

    .line 1663
    .line 1664
    if-eqz v4, :cond_3d

    .line 1665
    .line 1666
    :try_start_d
    const-string v4, "show_index"

    .line 1667
    .line 1668
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getShowIndex()I

    .line 1669
    .line 1670
    .line 1671
    move-result v14

    .line 1672
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v14

    .line 1676
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1677
    .line 1678
    .line 1679
    const-string v4, "trigger_show_type"

    .line 1680
    .line 1681
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getShowType()I

    .line 1682
    .line 1683
    .line 1684
    move-result v14

    .line 1685
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v14

    .line 1689
    invoke-virtual {v13, v4, v14}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    .line 1691
    .line 1692
    sget-object v4, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->l:[Ljava/lang/String;

    .line 1693
    .line 1694
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v4

    .line 1698
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1699
    .line 1700
    .line 1701
    move-result v4

    .line 1702
    if-eqz v4, :cond_3b

    .line 1703
    .line 1704
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isTemplateRenderSucc()Z

    .line 1705
    .line 1706
    .line 1707
    move-result v4

    .line 1708
    if-eqz v4, :cond_3a

    .line 1709
    .line 1710
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->e:I

    .line 1711
    .line 1712
    goto :goto_1b

    .line 1713
    :cond_3a
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->f:I

    .line 1714
    .line 1715
    :goto_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v4

    .line 1719
    invoke-virtual {v13, v12, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    .line 1721
    .line 1722
    :cond_3b
    const-string v4, "2000147"

    .line 1723
    .line 1724
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v4

    .line 1728
    if-eqz v4, :cond_3d

    .line 1729
    .line 1730
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isECTemplateRenderSucc()Z

    .line 1731
    .line 1732
    .line 1733
    move-result v4

    .line 1734
    if-eqz v4, :cond_3c

    .line 1735
    .line 1736
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->e:I

    .line 1737
    .line 1738
    goto :goto_1c

    .line 1739
    :cond_3c
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->f:I

    .line 1740
    .line 1741
    :goto_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v4

    .line 1745
    invoke-virtual {v13, v12, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1746
    .line 1747
    .line 1748
    :cond_3d
    const-string v4, "2000130"

    .line 1749
    .line 1750
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1754
    const-string v14, "alecfc=1"

    .line 1755
    .line 1756
    if-eqz v4, :cond_44

    .line 1757
    .line 1758
    :try_start_e
    const-string v4, ""

    .line 1759
    .line 1760
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v16

    .line 1764
    if-eqz v16, :cond_3e

    .line 1765
    .line 1766
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v4

    .line 1770
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v4

    .line 1774
    :cond_3e
    move-object/from16 v16, v2

    .line 1775
    .line 1776
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v2

    .line 1780
    move-object/from16 v19, v5

    .line 1781
    .line 1782
    const-string v5, "ec_full_screen_click"

    .line 1783
    .line 1784
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result v20

    .line 1788
    if-nez v20, :cond_3f

    .line 1789
    .line 1790
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v2

    .line 1794
    if-eqz v2, :cond_3f

    .line 1795
    .line 1796
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->g:I

    .line 1797
    .line 1798
    goto :goto_1d

    .line 1799
    :cond_3f
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->h:I

    .line 1800
    .line 1801
    :goto_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v2

    .line 1805
    invoke-virtual {v13, v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1806
    .line 1807
    .line 1808
    const-string v2, "temp_full_screen_click"

    .line 1809
    .line 1810
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v5

    .line 1814
    if-nez v5, :cond_40

    .line 1815
    .line 1816
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v4

    .line 1820
    if-eqz v4, :cond_40

    .line 1821
    .line 1822
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->g:I

    .line 1823
    .line 1824
    goto :goto_1e

    .line 1825
    :cond_40
    sget v4, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->h:I

    .line 1826
    .line 1827
    :goto_1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v4

    .line 1831
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    .line 1835
    .line 1836
    .line 1837
    move-result v2

    .line 1838
    const/4 v4, 0x2

    .line 1839
    if-ne v2, v4, :cond_41

    .line 1840
    .line 1841
    const/4 v2, 0x1

    .line 1842
    goto :goto_1f

    .line 1843
    :cond_41
    const/4 v2, 0x0

    .line 1844
    :goto_1f
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v4

    .line 1848
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v5

    .line 1852
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v5

    .line 1856
    move-object/from16 v20, v6

    .line 1857
    .line 1858
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->w()Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v6

    .line 1862
    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/videocommon/setting/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v4

    .line 1866
    const-string v5, "video_skip_result"

    .line 1867
    .line 1868
    if-nez v4, :cond_42

    .line 1869
    .line 1870
    const/4 v4, 0x2

    .line 1871
    goto :goto_20

    .line 1872
    :cond_42
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/c;->E()I

    .line 1873
    .line 1874
    .line 1875
    move-result v4

    .line 1876
    :goto_20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v4

    .line 1880
    invoke-virtual {v13, v5, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    .line 1882
    .line 1883
    if-eqz v2, :cond_43

    .line 1884
    .line 1885
    const-string v2, "video_end_type"

    .line 1886
    .line 1887
    const/4 v4, 0x2

    .line 1888
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v5

    .line 1892
    invoke-virtual {v13, v2, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1893
    .line 1894
    .line 1895
    goto :goto_21

    .line 1896
    :cond_43
    const-string v2, "video_end_type"

    .line 1897
    .line 1898
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    .line 1899
    .line 1900
    .line 1901
    move-result v4

    .line 1902
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v4

    .line 1906
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1907
    .line 1908
    .line 1909
    goto :goto_21

    .line 1910
    :cond_44
    move-object/from16 v16, v2

    .line 1911
    .line 1912
    move-object/from16 v19, v5

    .line 1913
    .line 1914
    move-object/from16 v20, v6

    .line 1915
    .line 1916
    :goto_21
    sget-object v2, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->k:[Ljava/lang/String;

    .line 1917
    .line 1918
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v2

    .line 1922
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1923
    .line 1924
    .line 1925
    move-result v2

    .line 1926
    if-eqz v2, :cond_4d

    .line 1927
    .line 1928
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTempSource()I

    .line 1929
    .line 1930
    .line 1931
    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 1932
    const-string v4, "full_screen_click"

    .line 1933
    .line 1934
    const/4 v5, 0x1

    .line 1935
    if-eq v2, v5, :cond_4a

    .line 1936
    .line 1937
    const/4 v5, 0x2

    .line 1938
    if-eq v2, v5, :cond_45

    .line 1939
    .line 1940
    goto/16 :goto_27

    .line 1941
    .line 1942
    :cond_45
    :try_start_f
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v2

    .line 1946
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    .line 1947
    .line 1948
    .line 1949
    move-result v5

    .line 1950
    const/16 v6, 0x1f5

    .line 1951
    .line 1952
    if-ne v5, v6, :cond_46

    .line 1953
    .line 1954
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v5

    .line 1958
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1959
    .line 1960
    .line 1961
    move-result v5

    .line 1962
    if-nez v5, :cond_46

    .line 1963
    .line 1964
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v2

    .line 1968
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1969
    .line 1970
    .line 1971
    move-result v2

    .line 1972
    goto :goto_22

    .line 1973
    :cond_46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1974
    .line 1975
    .line 1976
    move-result v5

    .line 1977
    if-nez v5, :cond_47

    .line 1978
    .line 1979
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v2

    .line 1983
    goto :goto_22

    .line 1984
    :cond_47
    const/4 v2, 0x0

    .line 1985
    :goto_22
    if-eqz v2, :cond_48

    .line 1986
    .line 1987
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->g:I

    .line 1988
    .line 1989
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v2

    .line 1993
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1994
    .line 1995
    .line 1996
    goto :goto_23

    .line 1997
    :cond_48
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->h:I

    .line 1998
    .line 1999
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v2

    .line 2003
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2004
    .line 2005
    .line 2006
    :goto_23
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isECTemplateRenderSucc()Z

    .line 2007
    .line 2008
    .line 2009
    move-result v2

    .line 2010
    if-eqz v2, :cond_49

    .line 2011
    .line 2012
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->e:I

    .line 2013
    .line 2014
    goto :goto_24

    .line 2015
    :cond_49
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->f:I

    .line 2016
    .line 2017
    :goto_24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v2

    .line 2021
    invoke-virtual {v13, v12, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2022
    .line 2023
    .line 2024
    goto :goto_27

    .line 2025
    :cond_4a
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v2

    .line 2029
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v2

    .line 2033
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2034
    .line 2035
    .line 2036
    move-result v2

    .line 2037
    if-eqz v2, :cond_4b

    .line 2038
    .line 2039
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->g:I

    .line 2040
    .line 2041
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v2

    .line 2045
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2046
    .line 2047
    .line 2048
    goto :goto_25

    .line 2049
    :cond_4b
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->h:I

    .line 2050
    .line 2051
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v2

    .line 2055
    invoke-virtual {v13, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2056
    .line 2057
    .line 2058
    :goto_25
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isTemplateRenderSucc()Z

    .line 2059
    .line 2060
    .line 2061
    move-result v2

    .line 2062
    if-eqz v2, :cond_4c

    .line 2063
    .line 2064
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->e:I

    .line 2065
    .line 2066
    goto :goto_26

    .line 2067
    :cond_4c
    sget v2, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->f:I

    .line 2068
    .line 2069
    :goto_26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v2

    .line 2073
    invoke-virtual {v13, v12, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2074
    .line 2075
    .line 2076
    :goto_27
    const-string v2, "click_temp_source"

    .line 2077
    .line 2078
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTempSource()I

    .line 2079
    .line 2080
    .line 2081
    move-result v4

    .line 2082
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v4

    .line 2086
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2087
    .line 2088
    .line 2089
    const-string v2, "trigger_click_type"

    .line 2090
    .line 2091
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickType()I

    .line 2092
    .line 2093
    .line 2094
    move-result v4

    .line 2095
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v4

    .line 2099
    invoke-virtual {v13, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2100
    .line 2101
    .line 2102
    const-string v2, "trigger_click_source"

    .line 2103
    .line 2104
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTriggerClickSource()I

    .line 2105
    .line 2106
    .line 2107
    move-result v3

    .line 2108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v3

    .line 2112
    invoke-virtual {v13, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 2113
    .line 2114
    .line 2115
    :cond_4d
    move-object v1, v11

    .line 2116
    move-object v12, v15

    .line 2117
    move-object/from16 v11, v17

    .line 2118
    .line 2119
    move-object/from16 v2, v18

    .line 2120
    .line 2121
    move-object/from16 v5, v19

    .line 2122
    .line 2123
    move-object/from16 v6, v20

    .line 2124
    .line 2125
    goto/16 :goto_8

    .line 2126
    .line 2127
    :goto_28
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 2128
    .line 2129
    if-eqz v2, :cond_4e

    .line 2130
    .line 2131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2132
    .line 2133
    .line 2134
    :cond_4e
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v1

    .line 2138
    return-object v1
.end method

.method private d(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    :goto_0
    return-object v0
.end method

.method private e(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "2000154"

    .line 2
    .line 3
    const-string v1, "2000126"

    .line 4
    .line 5
    const-string v2, "2000125"

    .line 6
    .line 7
    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const-string v5, "2000123"

    .line 17
    .line 18
    const-string v6, "duration"

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    const-string v2, "2000127"

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide p1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const-string v1, "2000047"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string v1, "2000048"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    const-string v1, "2000155"

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide p1

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    const-string v0, "2000146"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_7

    .line 162
    .line 163
    const-string p1, "2000130"

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/lang/String;)J

    .line 166
    .line 167
    .line 168
    move-result-wide p1

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v3, v6, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :goto_0
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 178
    .line 179
    if-eqz p2, :cond_7

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_1
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a()Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    const-string v0, "_"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    :try_start_0
    sget-object v2, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->e:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, ""

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    const-string v3, "auto_load"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->r()Ljava/util/Map;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 106
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->q()Ljava/util/Map;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->l()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 110
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 111
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 112
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 7

    .line 1
    const-string v0, "n_lrid"

    const-string v1, "lrid"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_10

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->c(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_2
    sget-object v3, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->d:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->e(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 12
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 14
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16
    :cond_6
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const-string v5, "label_second"

    if-eqz v3, :cond_8

    .line 18
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_8
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->d(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 28
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    :cond_a
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "1"

    if-eqz v0, :cond_b

    :try_start_2
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a()I

    move-result p3

    const/16 v0, 0x128

    if-eq p3, v0, :cond_b

    return-void

    .line 31
    :cond_b
    sget-object p3, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->m:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 32
    const-string p3, "use_local_dns"

    invoke-static {}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->b()Lcom/mbridge/msdk/tracker/network/toolbox/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->e()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "0"

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_1

    :cond_c
    move-object v0, v3

    :goto_1
    :try_start_3
    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p3, "local_dns_available"

    invoke-static {}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->b()Lcom/mbridge/msdk/tracker/network/toolbox/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    move-object v1, v3

    :goto_2
    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_e
    invoke-direct {p0, p1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/mbridge/msdk/tracker/e;

    move-result-object p1

    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    .line 35
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V

    :cond_f
    if-eqz p4, :cond_10

    .line 36
    invoke-interface {p4}, Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 37
    :goto_3
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_10

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_4
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 2

    if-eqz p3, :cond_6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p3, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->d(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 11
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/mbridge/msdk/tracker/e;

    move-result-object p1

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V

    :cond_5
    if-eqz p4, :cond_6

    .line 14
    invoke-interface {p4}, Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method
