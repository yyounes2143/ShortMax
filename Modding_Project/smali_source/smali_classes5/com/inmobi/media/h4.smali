.class public final Lcom/inmobi/media/h4;
.super Lcom/inmobi/media/X1;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/yb;


# instance fields
.field public b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/inmobi/media/X3;

.field public final g:Lcom/inmobi/media/z5;

.field public final h:Lcom/inmobi/media/c4;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

.field public final k:Lms/i;

.field public l:Lcom/inmobi/media/R6;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/X3;Lcom/inmobi/media/z5;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placementType"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "impressionId"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "creativeId"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "onLpLifecycleEvent"

    .line 22
    .line 23
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/inmobi/media/X1;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-wide p2, p0, Lcom/inmobi/media/h4;->b:J

    .line 30
    .line 31
    iput-object p4, p0, Lcom/inmobi/media/h4;->c:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/inmobi/media/h4;->d:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p6, p0, Lcom/inmobi/media/h4;->e:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p7, p0, Lcom/inmobi/media/h4;->f:Lcom/inmobi/media/X3;

    .line 38
    .line 39
    iput-object p8, p0, Lcom/inmobi/media/h4;->g:Lcom/inmobi/media/z5;

    .line 40
    .line 41
    const-class p1, Lcom/inmobi/media/h4;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/inmobi/media/h4;->i:Ljava/lang/String;

    .line 48
    .line 49
    sget-object p1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    const-string p1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    const-string p3, "ads"

    .line 55
    .line 56
    invoke-static {p3, p1, p2}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/inmobi/media/h4;->j:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 67
    .line 68
    sget-object p1, Lcom/inmobi/media/d4;->a:Lcom/inmobi/media/d4;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/inmobi/media/h4;->k:Lms/i;

    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Lcom/inmobi/media/c4;

    .line 103
    .line 104
    new-instance v2, Lcom/inmobi/media/e4;

    .line 105
    .line 106
    invoke-direct {v2, p0}, Lcom/inmobi/media/e4;-><init>(Lcom/inmobi/media/h4;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lcom/inmobi/media/f4;

    .line 110
    .line 111
    invoke-direct {v3, p0}, Lcom/inmobi/media/f4;-><init>(Lcom/inmobi/media/h4;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/inmobi/media/g4;

    .line 115
    .line 116
    invoke-direct {v4, p0}, Lcom/inmobi/media/g4;-><init>(Lcom/inmobi/media/h4;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    move-object v5, p8

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/c4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/inmobi/media/z5;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/inmobi/media/h4;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getEnableCookiesOnInAppBrowser()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    .line 141
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 149
    .line 150
    .line 151
    :cond_0
    return-void
.end method

.method private final getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h4;->k:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "triggerApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/h4;->e:Ljava/lang/String;

    const-string v2, "creativeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/h4;->d:Ljava/lang/String;

    const-string v1, "impressionId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/h4;->c:Ljava/lang/String;

    const-string v1, "adType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 9
    sget-object p1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 10
    const-string v1, "BlockAutoRedirection"

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h4;->i:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/h4;->g()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h4;->i:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/h4;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final f()Lcom/inmobi/media/M6;
    .locals 9

    .line 1
    new-instance v2, Lcom/inmobi/media/N6;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/inmobi/media/h4;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v3, "DEFAULT"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v2, v4, v3, v0, v1}, Lcom/inmobi/media/N6;-><init>(ZLjava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v7, p0, Lcom/inmobi/media/h4;->g:Lcom/inmobi/media/z5;

    .line 23
    .line 24
    new-instance v8, Lcom/inmobi/media/M6;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v0, v8

    .line 33
    move-object v5, p0

    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/M6;-><init>(Landroid/content/Context;Lcom/inmobi/media/N6;Lcom/inmobi/media/e2;Lcom/inmobi/media/Ub;Lcom/inmobi/media/yb;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V

    .line 35
    .line 36
    .line 37
    return-object v8
.end method

.method public final g()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h4;->getViewTouchTimestamp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {p0}, Lcom/inmobi/media/h4;->getViewTouchTimestamp()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    sub-long/2addr v3, v5

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/h4;->j:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v0, v3, v5

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v1

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/inmobi/media/h4;->j:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getAutoRedirectionEnforcement()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :cond_1
    move v1, v2

    .line 46
    :cond_2
    return v1
.end method

.method public final getLandingPageTelemetryControlInfo()Lcom/inmobi/media/R6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h4;->l:Lcom/inmobi/media/R6;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewTouchTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/h4;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p1, Lcom/inmobi/media/Y1;->d:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/inmobi/media/Y1;->d:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/h4;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/inmobi/media/h4;->n:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/h4;->f:Lcom/inmobi/media/X3;

    .line 9
    .line 10
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 16
    .line 17
    const-string v2, "onScroll"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/inmobi/media/X3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/h4;->setViewTouchTimestamp(J)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/inmobi/media/h4;->m:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/inmobi/media/h4;->m:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/inmobi/media/h4;->f:Lcom/inmobi/media/X3;

    .line 16
    .line 17
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 23
    .line 24
    const-string v2, "onInteraction"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/inmobi/media/X3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public final setLandingPageTelemetryControlInfo(Lcom/inmobi/media/R6;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/R6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h4;->l:Lcom/inmobi/media/R6;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/inmobi/media/h4;->h:Lcom/inmobi/media/c4;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, v0, Lcom/inmobi/media/c4;->j:Lcom/inmobi/media/R6;

    .line 9
    .line 10
    new-instance v1, Lcom/inmobi/media/O6;

    .line 11
    .line 12
    invoke-direct {v1, p1, v0}, Lcom/inmobi/media/O6;-><init>(Lcom/inmobi/media/R6;Lcom/inmobi/media/c4;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/inmobi/media/c4;->k:Lcom/inmobi/media/O6;

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setViewTouchTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/h4;->b:J

    .line 2
    .line 3
    return-void
.end method
