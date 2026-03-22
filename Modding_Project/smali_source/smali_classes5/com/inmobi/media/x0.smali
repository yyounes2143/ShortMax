.class public final Lcom/inmobi/media/x0;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a()Lcom/inmobi/media/q6;
    .locals 6

    .line 1
    new-instance v0, Lcom/inmobi/media/q6;

    invoke-direct {v0}, Lcom/inmobi/media/q6;-><init>()V

    .line 2
    new-instance v1, Lcom/inmobi/media/Ec;

    const-string v2, "ads"

    const-class v3, Lcom/inmobi/media/y0;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    new-instance v2, Lcom/inmobi/media/U6;

    new-instance v3, Lcom/inmobi/media/s0;

    invoke-direct {v3}, Lcom/inmobi/media/s0;-><init>()V

    const-class v4, Lcom/inmobi/media/h;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/inmobi/media/Ec;

    const-string v2, "trackingInfo"

    invoke-direct {v1, v2, v4}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    new-instance v2, Lcom/inmobi/media/U6;

    new-instance v3, Lcom/inmobi/media/t0;

    invoke-direct {v3}, Lcom/inmobi/media/t0;-><init>()V

    const-class v4, Lcom/inmobi/ads/core/TrackingInfo;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/inmobi/media/Ec;

    const-string v2, "trackers"

    invoke-direct {v1, v2, v4}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    new-instance v2, Lcom/inmobi/media/U6;

    new-instance v3, Lcom/inmobi/media/u0;

    invoke-direct {v3}, Lcom/inmobi/media/u0;-><init>()V

    const-class v4, Lcom/inmobi/ads/core/Trackers;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/inmobi/media/Ec;

    const-string v2, "url"

    invoke-direct {v1, v2, v4}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    new-instance v2, Lcom/inmobi/media/U6;

    new-instance v3, Lcom/inmobi/media/v0;

    invoke-direct {v3}, Lcom/inmobi/media/v0;-><init>()V

    const-class v5, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/inmobi/media/Ec;

    const-string v2, "imExts"

    invoke-direct {v1, v2, v4}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    new-instance v2, Lcom/inmobi/media/U6;

    new-instance v3, Lcom/inmobi/media/w0;

    invoke-direct {v3}, Lcom/inmobi/media/w0;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Lcom/inmobi/media/z5;)Lcom/inmobi/media/y0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "access$getTAG$cp(...)"

    const-string v3, "adContent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 17
    :try_start_0
    const-string v4, "expiry"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gtz v4, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 19
    :goto_0
    const-string v4, "ads"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz p5, :cond_1

    .line 21
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "no ads"

    move-object/from16 v4, p5

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_1
    return-object v3

    .line 22
    :cond_2
    invoke-static {}, Lcom/inmobi/media/x0;->a()Lcom/inmobi/media/q6;

    move-result-object v7

    const-class v8, Lcom/inmobi/media/y0;

    invoke-virtual {v7, v0, v8}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/inmobi/media/y0;

    if-eqz p5, :cond_3

    .line 23
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "adSet parsing success"

    move-object/from16 v8, p5

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v0, v7}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v13, :cond_d

    .line 24
    invoke-virtual {v13}, Lcom/inmobi/media/y0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    move-wide/from16 v7, p1

    .line 25
    invoke-static {v13, v7, v8}, Lcom/inmobi/media/y0;->a(Lcom/inmobi/media/y0;J)V

    .line 26
    invoke-static {v13, v1}, Lcom/inmobi/media/y0;->b(Lcom/inmobi/media/y0;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 27
    invoke-static {v13, v1}, Lcom/inmobi/media/y0;->a(Lcom/inmobi/media/y0;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v15, 0x0

    move v12, v15

    :goto_2
    if-ge v12, v14, :cond_b

    .line 29
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    invoke-virtual {v13}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v7

    .line 31
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v15

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    :cond_4
    move-object/from16 v16, v9

    check-cast v16, Lcom/inmobi/media/h;

    .line 32
    const-string v9, "impressionId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_7

    if-eqz p5, :cond_5

    .line 33
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflating ad at index - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p5

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v0, v7}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v17, v12

    goto :goto_5

    .line 34
    :cond_5
    :goto_4
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v0, "getJSONObject(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, v16

    move-object/from16 v9, p3

    move-wide v10, v5

    move/from16 v17, v12

    move-object/from16 v12, p5

    .line 36
    :try_start_2
    invoke-static/range {v7 .. v12}, Lcom/inmobi/media/J;->a(Lcom/inmobi/media/h;Lorg/json/JSONObject;Ljava/lang/String;JLcom/inmobi/media/z5;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_5
    if-eqz p5, :cond_6

    .line 37
    :try_start_3
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Error inflating ad"

    move-object/from16 v9, p5

    check-cast v9, Lcom/inmobi/media/A5;

    invoke-virtual {v9, v7, v8, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    :cond_6
    sget-object v7, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v7, Lcom/inmobi/media/f2;

    invoke-direct {v7, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const-string v0, "event"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v7}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    move-object/from16 v0, v16

    goto :goto_7

    :cond_7
    move v8, v10

    goto/16 :goto_3

    :cond_8
    move/from16 v17, v12

    :goto_6
    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_a

    if-eqz p5, :cond_9

    .line 41
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removing invalid ad  at index - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v9

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p5

    check-cast v9, Lcom/inmobi/media/A5;

    invoke-virtual {v9, v7, v8}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_9
    invoke-virtual {v13}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v12, v17, 0x1

    goto/16 :goto_2

    .line 43
    :cond_b
    invoke-virtual {v13}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    move-object v3, v13

    goto :goto_9

    :goto_8
    if-eqz p5, :cond_d

    .line 44
    invoke-static {}, Lcom/inmobi/media/y0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p5

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v4, "Exception while inflating AdSet"

    invoke-virtual {v2, v1, v4, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_d
    :goto_9
    return-object v3
.end method
