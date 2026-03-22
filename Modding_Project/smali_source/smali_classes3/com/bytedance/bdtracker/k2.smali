.class public final Lcom/bytedance/bdtracker/k2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lcom/bytedance/bdtracker/h2;JLjava/lang/String;I)V
    .locals 7
    .param p0    # Lcom/bytedance/bdtracker/h2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v6, Lcom/bytedance/bdtracker/t2;

    if-eqz p3, :cond_0

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    const-string p3, ""

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x1

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/bdtracker/t2;-><init>(JLjava/lang/String;J)V

    .line 3
    iput p4, v6, Lcom/bytedance/bdtracker/t2;->a:I

    if-eqz p0, :cond_1

    .line 4
    check-cast p0, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {p0, v6}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0    # Lcom/bytedance/bdtracker/h2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "metricsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x45d20c4

    if-eq v2, v3, :cond_1

    const p2, 0x1018f5f5

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sdk_init"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/bdtracker/y2;

    sub-long/2addr v0, p3

    invoke-direct {p1, v0, v1}, Lcom/bytedance/bdtracker/y2;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v2, "api_usage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/bdtracker/n2;

    sub-long/2addr v0, p3

    invoke-direct {p1, p2, v0, v1}, Lcom/bytedance/bdtracker/n2;-><init>(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    check-cast p0, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Lcom/bytedance/bdtracker/h2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/s2;

    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/s2;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/h2;Ljava/net/URL;JILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/bytedance/bdtracker/h2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/simulator/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/bytedance/bdtracker/x2;

    invoke-direct {v3}, Lcom/bytedance/bdtracker/x2;-><init>()V

    sub-long/2addr v1, p2

    .line 7
    iput-wide v1, v3, Lcom/bytedance/bdtracker/x2;->e:J

    const/4 p2, 0x1

    if-nez p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const-string p3, ""

    goto :goto_3

    :cond_3
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    array-length p3, p1

    sub-int/2addr p3, p2

    aget-object p3, p1, p3

    .line 9
    :cond_4
    :goto_3
    iput-object p3, v3, Lcom/bytedance/bdtracker/x2;->d:Ljava/lang/String;

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_5

    move v0, p2

    goto :goto_4

    .line 10
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 11
    iput-object p1, v3, Lcom/bytedance/bdtracker/x2;->b:Ljava/lang/Integer;

    .line 12
    iput-object p5, v3, Lcom/bytedance/bdtracker/x2;->c:Ljava/lang/String;

    .line 13
    :goto_4
    iput v0, v3, Lcom/bytedance/bdtracker/x2;->a:I

    .line 14
    check-cast p0, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {p0, v3}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_6
    return-void
.end method
