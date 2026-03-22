.class public final Lcom/inmobi/media/J0;
.super Lcom/inmobi/media/G1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/S0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/J0;->d:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/inmobi/media/G1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lcom/inmobi/media/p8;Lcom/inmobi/media/S0;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$dataModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/inmobi/media/p8;->r:Lcom/inmobi/media/F9;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v3

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v3}, Lcom/inmobi/media/h;->o()Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    .line 27
    invoke-static {v1, v4}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;I)Z

    move-result v10

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/inmobi/media/h;->e()Lcom/inmobi/adquality/models/AdQualityControl;

    move-result-object v5

    :goto_0
    move-object/from16 v20, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 29
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/inmobi/media/h;->u()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    move-object v13, v5

    goto :goto_4

    :cond_2
    :goto_3
    const-string v5, "html"

    goto :goto_2

    .line 30
    :goto_4
    invoke-virtual {v1, v3}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/media/h;)Z

    move-result v7

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/media/Z;->p()Z

    move-result v3

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->J()B

    move-result v21

    .line 34
    invoke-static {v1, v4}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/media/S0;I)Ljava/util/Set;

    move-result-object v22

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->n()Ljava/lang/String;

    move-result-object v23

    .line 36
    new-instance v5, Lcom/inmobi/media/Q;

    .line 37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x2e17a0

    move-object v3, v5

    .line 38
    invoke-direct/range {v5 .. v27}, Lcom/inmobi/media/Q;-><init>(Ljava/lang/String;ZJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Boolean;Lcom/inmobi/ads/WatermarkData;Lcom/inmobi/adquality/models/AdQualityControl;BLjava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/hc;Lcom/inmobi/media/z5;I)V

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/inmobi/media/S0;->c(Lcom/inmobi/media/S0;)Lcom/inmobi/media/tf;

    move-result-object v5

    .line 40
    new-instance v6, Lcom/inmobi/media/Cc;

    const-string v7, "interactiveAdUnit"

    const-string v8, "default"

    invoke-direct {v6, v7, v8}, Lcom/inmobi/media/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/inmobi/media/tf;->a(Lcom/inmobi/media/Cc;Landroid/content/Context;SLcom/inmobi/media/Q;)Lcom/inmobi/media/ec;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;Lcom/inmobi/media/ec;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;)Lcom/inmobi/media/gc;

    move-result-object v4

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/gc;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 47
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 48
    iget-object v4, v3, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_4

    sget-object v5, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "disableUrlsToOpenInExternalApp "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_4
    iput-boolean v2, v3, Lcom/inmobi/media/ec;->y:Z

    .line 50
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Lcom/inmobi/media/ec;->setBlobProvider(Lcom/inmobi/media/b2;)V

    .line 51
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v2}, Lcom/inmobi/media/ec;->setPreloadView(Z)V

    .line 52
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->T()B

    move-result v3

    if-nez v3, :cond_8

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/S0;->a(ZLcom/inmobi/media/ec;)V

    .line 54
    :cond_8
    const-string v3, "URL"

    .line 55
    iget-object v4, v0, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    .line 56
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    if-eqz v3, :cond_9

    .line 57
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 58
    iget-object v0, v0, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 59
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/inmobi/media/ec;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 61
    iget-object v0, v0, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 62
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/inmobi/media/ec;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 63
    :goto_6
    iget-object v3, v1, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_a

    .line 64
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v5, "<get-TAG>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "Exception for handleInterActive "

    invoke-virtual {v3, v4, v5, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    :cond_a
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v4, 0x4c

    .line 67
    invoke-virtual {v1, v3, v2, v4}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 68
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 69
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/G1;->b:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/S0;

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    new-instance v10, Lcom/inmobi/media/p8;

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->J()B

    move-result v2

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v7, v4

    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/inmobi/media/T9;->a:Z

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/inmobi/media/y0;->h()Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/inmobi/media/T9;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    move-object v7, v1

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/J0;->d:Lcom/inmobi/media/S0;

    .line 9
    iget-object v9, v1, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 10
    const-string v1, "pubContent"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfig"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    .line 11
    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/p8;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Ljava/util/Map;Lcom/inmobi/media/Ue;Lcom/inmobi/media/z5;)V

    .line 12
    iget-object v1, p0, Lcom/inmobi/media/J0;->d:Lcom/inmobi/media/S0;

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/inmobi/media/J0;->d:Lcom/inmobi/media/S0;

    new-instance v3, Lub/m0;

    invoke-direct {v3, v10, v2}, Lub/m0;-><init>(Lcom/inmobi/media/p8;Lcom/inmobi/media/S0;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 13
    :goto_2
    iget-object v2, p0, Lcom/inmobi/media/J0;->d:Lcom/inmobi/media/S0;

    .line 14
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_2

    .line 15
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v3

    .line 16
    const-string v4, "<get-TAG>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v4, "Exception for handleInterActive "

    invoke-virtual {v2, v3, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    :cond_2
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v3, 0x1

    const/16 v4, 0x4c

    .line 18
    invoke-virtual {v0, v2, v3, v4}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 19
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 20
    const-string v0, "event"

    invoke-static {v1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/G1;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/G1;->b:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/inmobi/media/S0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 15
    .line 16
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/16 v3, 0x28

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
