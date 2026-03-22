.class public abstract Lcom/inmobi/media/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;)V
    .locals 5

    const-string v0, "omidConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getMaxRetries()I

    move-result v1

    .line 33
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getRetryInterval()I

    move-result v2

    if-nez v0, :cond_0

    .line 34
    const-string p0, "ia"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    new-instance v3, Lcom/inmobi/media/N9;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, v3, Lcom/inmobi/media/N9;->x:Z

    .line 37
    iput-boolean v0, v3, Lcom/inmobi/media/N9;->t:Z

    .line 38
    iput-boolean v0, v3, Lcom/inmobi/media/N9;->u:Z

    .line 39
    sget-object v0, Lcom/inmobi/media/z4;->b:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    new-instance v4, Lub/m4;

    invoke-direct {v4, p0, v1, v3, v2}, Lub/m4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;ILcom/inmobi/media/N9;I)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static final a(Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;ILcom/inmobi/media/N9;I)V
    .locals 7

    const-string v0, "$omidConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mNetworkRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Lcom/inmobi/media/Sa;

    const-string v2, "omid_js_store"

    invoke-direct {v1, v0, v2}, Lcom/inmobi/media/Sa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/inmobi/media/Sa;->b()J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    sub-long/2addr v3, v0

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getExpiry()J

    move-result-wide v0

    cmp-long p0, v3, v0

    if-lez p0, :cond_a

    const/4 p0, 0x0

    move v0, p0

    :catch_0
    :cond_1
    :goto_0
    if-gt v0, p1, :cond_a

    .line 6
    const-string v1, "ia"

    const-string v3, "TAG"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v4, "mRequest"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v5

    .line 10
    invoke-virtual {v4}, Lcom/inmobi/media/P9;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_2

    goto/16 :goto_6

    :cond_2
    int-to-long v3, p3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 12
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    .line 13
    new-instance p1, Lcom/inmobi/media/Sa;

    invoke-direct {p1, v5, v2}, Lcom/inmobi/media/Sa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object p2, v4, Lcom/inmobi/media/P9;->f:Ljava/util/Map;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 15
    const-string v0, "Content-Encoding"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_1

    :cond_4
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_5

    .line 16
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object p2, p3

    :goto_2
    const-string v0, "gzip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-boolean p2, Lcom/inmobi/media/T9;->a:Z

    .line 19
    iget-object p2, v4, Lcom/inmobi/media/P9;->b:[B

    if-eqz p2, :cond_7

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p2, p2

    new-array p2, p2, [B

    .line 21
    iget-object v0, v4, Lcom/inmobi/media/P9;->b:[B

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v0

    invoke-static {v0, p0, p2, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 22
    :cond_7
    :goto_3
    new-array p2, p0, [B

    .line 23
    :goto_4
    invoke-static {p2}, Lcom/inmobi/media/T9;->a([B)[B

    move-result-object p0

    if-eqz p0, :cond_9

    .line 24
    :try_start_1
    new-instance p2, Ljava/lang/String;

    .line 25
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, p2

    goto :goto_5

    .line 27
    :catch_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 28
    :cond_8
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    move-result-object p3

    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    .line 30
    const-string p0, "omid_js_string"

    invoke-virtual {p1, p0, p3}, Lcom/inmobi/media/Sa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    return-void
.end method
