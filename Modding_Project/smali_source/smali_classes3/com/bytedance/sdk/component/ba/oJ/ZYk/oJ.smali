.class public Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Pfn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->tB()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method private static ZYk(ILandroid/content/Context;)J
    .locals 12

    if-nez p1, :cond_0

    int-to-long p0, p0

    return-wide p0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    div-long/2addr v6, v2

    sub-long/2addr v6, v4

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    const/16 v2, 0xa

    const-wide/16 v3, 0x1

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0xa

    if-gtz p1, :cond_3

    cmp-long p1, v0, v8

    if-gtz p1, :cond_1

    return-wide v3

    :cond_1
    cmp-long p1, v0, v10

    if-gtz p1, :cond_2

    .line 5
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 6
    :cond_2
    div-long/2addr v0, v8

    mul-long/2addr v0, v10

    int-to-long p0, p0

    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    add-long/2addr v0, v6

    sub-long/2addr v0, v10

    .line 8
    div-long/2addr v0, v8

    cmp-long p1, v0, v8

    if-gtz p1, :cond_4

    return-wide v3

    :cond_4
    cmp-long p1, v0, v10

    if-gtz p1, :cond_5

    .line 9
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_5
    mul-long/2addr v0, v10

    int-to-long p0, p0

    .line 10
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ZYk()Z
    .locals 1

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ba()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->ba()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public static ex()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->Pfn()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public static oJ(ILandroid/content/Context;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk(ILandroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static oJ()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static tB()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->ex()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method
