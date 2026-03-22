.class public abstract Lcom/inmobi/media/B2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(F)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    .line 9
    invoke-static {p0}, Lbt/a;->c(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static final a(I)I
    .locals 1

    int-to-float v0, p0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v0, p0

    float-to-int p0, v0

    :catch_0
    return p0
.end method

.method public static final a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 11
    invoke-static {p0, p1, p2, v0}, Lcom/android/billingclient/api/x;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 5
    invoke-static {}, Lcom/inmobi/media/L3;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const/16 v4, 0xc8

    const-string v5, "OK"

    const-string v3, "UTF-8"

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1, p0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_0
    return-object v0
.end method

.method public static final a(Lcom/inmobi/media/Cf;Landroid/widget/RelativeLayout$LayoutParams;Lcom/inmobi/media/pa;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Bf;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 19
    iget v1, v1, Lcom/inmobi/media/Bf;->a:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 20
    :goto_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/Bf;

    if-eqz v3, :cond_1

    .line 22
    iget v3, v3, Lcom/inmobi/media/Bf;->c:I

    goto :goto_1

    :cond_1
    move v3, v2

    .line 23
    :goto_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/Bf;

    if-eqz p0, :cond_2

    .line 25
    iget p0, p0, Lcom/inmobi/media/Bf;->d:I

    goto :goto_2

    :cond_2
    move p0, v2

    .line 26
    :goto_2
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/appsflyer/internal/p;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/appsflyer/internal/q;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string v0, "getPackageInfo(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/16 v0, 0x23

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final a(Lorg/json/JSONArray;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(F)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lbt/a;->c(F)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static final c(F)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    div-float/2addr p0, v0

    .line 6
    float-to-int p0, p0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method
