.class public Lcom/bytedance/sdk/component/adexpress/ex/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ZYk(Landroid/content/Context;)I
    .locals 1

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->ZYk()Landroid/content/Context;

    move-result-object p0

    .line 4
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 5
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 6
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static ZYk(Landroid/content/Context;F)I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->ZYk()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->ex(Landroid/content/Context;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static ex(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    return p0
.end method

.method public static oJ(Landroid/content/Context;F)F
    .locals 0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->ZYk()Landroid/content/Context;

    move-result-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->ex(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method public static oJ(FFFF)I
    .locals 2

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method public static oJ(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->ZYk()Landroid/content/Context;

    move-result-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 6
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private static oJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "ko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "ja"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "ar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    const-string p0, "cn"

    goto :goto_1

    .line 9
    :pswitch_1
    const-string p0, "my"

    goto :goto_1

    .line 10
    :pswitch_2
    const-string p0, "korea"

    goto :goto_1

    .line 11
    :pswitch_3
    const-string p0, "japan"

    goto :goto_1

    .line 12
    :pswitch_4
    const-string p0, "aa"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_4
        0xd37 -> :sswitch_3
        0xd64 -> :sswitch_2
        0xda6 -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static tB(Landroid/content/Context;F)F
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->ZYk()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->ex(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static tB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/cY;->ZYk(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    const-string v0, "zhHant"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 9
    :catchall_1
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
