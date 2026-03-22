.class public final Lcom/inmobi/media/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/inmobi/media/i2;

.field public final c:Lcom/inmobi/media/R6;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/inmobi/media/v3;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/inmobi/media/w3;

.field public h:Z

.field public final i:Ljava/lang/ref/WeakReference;

.field public final j:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/i2;Landroid/content/Context;Lcom/inmobi/media/e2;Lcom/inmobi/media/yb;Lcom/inmobi/media/R6;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "urlToLoad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "redirectionValidator"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "api"

    .line 17
    .line 18
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/inmobi/media/k2;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/inmobi/media/k2;->b:Lcom/inmobi/media/i2;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 29
    .line 30
    iput-object p7, p0, Lcom/inmobi/media/k2;->d:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Lcom/inmobi/media/v3;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/inmobi/media/v3;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 38
    .line 39
    new-instance p2, Lcom/inmobi/media/w3;

    .line 40
    .line 41
    invoke-direct {p2, p4, p6}, Lcom/inmobi/media/w3;-><init>(Lcom/inmobi/media/e2;Lcom/inmobi/media/R6;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/inmobi/media/k2;->g:Lcom/inmobi/media/w3;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    invoke-direct {p2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/inmobi/media/k2;->j:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    const-string p2, "connectionCallback"

    .line 61
    .line 62
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p0, p1, Lcom/inmobi/media/v3;->c:Lcom/inmobi/media/k2;

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "getApplicationContext(...)"

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p3, p0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 8

    .line 22
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 23
    iget-object v2, v1, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_1

    .line 24
    iget-object v2, v1, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/inmobi/media/u3;

    invoke-direct {v3, v1}, Lcom/inmobi/media/u3;-><init>(Lcom/inmobi/media/v3;)V

    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    iput-object v2, v1, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 26
    :cond_1
    invoke-direct {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonPosition(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const-string v2, "setCloseButtonPosition(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 29
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 30
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDownloadButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 31
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBookmarksButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    iget-boolean v3, p1, Lcom/inmobi/media/i2;->b:Z

    if-eqz v3, :cond_7

    .line 33
    iget-object v3, p0, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    sget v4, Lcom/inmobi/ads/R$drawable;->im_close_transparent:I

    .line 34
    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 36
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 37
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "getBitmap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v4, 0x18

    if-eqz v3, :cond_3

    .line 38
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 39
    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "Bitmap.createBitmap(width, height, config)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v2, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    if-eqz v3, :cond_6

    .line 43
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    move-object v2, v4

    .line 44
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 45
    :cond_7
    invoke-static {}, Lcom/inmobi/media/U3;->h()Lcom/inmobi/media/V3;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    move-result-object v3

    .line 47
    sget-object v4, Lcom/inmobi/media/pa;->b:Lcom/inmobi/media/pa;

    if-eq v3, v4, :cond_9

    sget-object v4, Lcom/inmobi/media/pa;->d:Lcom/inmobi/media/pa;

    if-ne v3, v4, :cond_8

    goto :goto_3

    .line 48
    :cond_8
    iget v3, v2, Lcom/inmobi/media/V3;->b:I

    int-to-float v3, v3

    .line 49
    iget p1, p1, Lcom/inmobi/media/i2;->a:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    int-to-float p1, p1

    .line 50
    iget v2, v2, Lcom/inmobi/media/V3;->c:F

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 51
    invoke-virtual {v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_4

    .line 52
    :cond_9
    :goto_3
    iget v1, v2, Lcom/inmobi/media/V3;->a:I

    int-to-float v1, v1

    .line 53
    iget p1, p1, Lcom/inmobi/media/i2;->a:F

    mul-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float v1, p1

    .line 54
    iget v2, v2, Lcom/inmobi/media/V3;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 55
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityWidthPx(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 56
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setActivitySideSheetBreakpointDp(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :goto_4
    const/4 p1, 0x1

    .line 57
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    iget-object v1, p0, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    .line 2
    iget-object v2, v0, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v3, Lcom/inmobi/media/t3;

    invoke-direct {v3, v0}, Lcom/inmobi/media/t3;-><init>(Lcom/inmobi/media/v3;)V

    .line 5
    iput-object v3, v0, Lcom/inmobi/media/v3;->b:Lcom/inmobi/media/t3;

    .line 6
    invoke-static {v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/k2;->b:Lcom/inmobi/media/i2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/inmobi/media/k2;->a(Lcom/inmobi/media/i2;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v3, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 10
    iget-object v4, v3, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v4, :cond_1

    .line 11
    iget-object v4, v3, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v4, :cond_0

    new-instance v2, Lcom/inmobi/media/u3;

    invoke-direct {v2, v3}, Lcom/inmobi/media/u3;-><init>(Lcom/inmobi/media/v3;)V

    invoke-virtual {v4, v2}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    .line 12
    :cond_0
    iput-object v2, v3, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    move-object v4, v2

    .line 13
    :cond_1
    invoke-direct {v0, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v3, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 16
    iget-object v4, v3, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v4, :cond_4

    .line 17
    iget-object v4, v3, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v4, :cond_3

    new-instance v2, Lcom/inmobi/media/u3;

    invoke-direct {v2, v3}, Lcom/inmobi/media/u3;-><init>(Lcom/inmobi/media/v3;)V

    invoke-virtual {v4, v2}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    .line 18
    :cond_3
    iput-object v2, v3, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    move-object v4, v2

    .line 19
    :cond_4
    invoke-direct {v0, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 20
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v2

    const-string v0, "build(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/inmobi/media/e2;

    iget-object v5, p0, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    iget-object v0, p0, Lcom/inmobi/media/k2;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/inmobi/media/yb;

    iget-object v7, p0, Lcom/inmobi/media/k2;->d:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/inmobi/media/e2;Lcom/inmobi/media/R6;Lcom/inmobi/media/yb;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v2, "context"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/inmobi/media/v3;->b:Lcom/inmobi/media/t3;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v0, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 27
    .line 28
    :cond_0
    iput-object v3, v0, Lcom/inmobi/media/v3;->b:Lcom/inmobi/media/t3;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
