.class public final Lcom/inmobi/media/V4;
.super Lcom/inmobi/media/P;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Lcom/inmobi/media/x;

.field public final g:Landroid/widget/RelativeLayout;

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/inmobi/media/x;Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adBackgroundView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lcom/inmobi/media/P;-><init>(Landroid/widget/RelativeLayout;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/V4;->e:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/inmobi/media/V4;->g:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    instance-of v1, v0, Lcom/inmobi/media/ec;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/ec;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    move-result-object v1

    sget-object v2, Lcom/inmobi/media/T4;->a:Lcom/inmobi/media/T4;

    invoke-virtual {v1, v2}, Lcom/inmobi/media/tf;->a(Lkotlin/jvm/functions/Function1;)V

    .line 7
    iget-boolean v1, v0, Lcom/inmobi/media/ec;->H:Z

    if-eqz v1, :cond_2

    return-void

    .line 8
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    const-string v0, "InMobi"

    const-string v1, "SDK encountered unexpected error in processing close request"

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/pa;)V
    .locals 2

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/pa;

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    const-string v1, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/ec;

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/U4;

    invoke-direct {v1, p1}, Lcom/inmobi/media/U4;-><init>(Lcom/inmobi/media/pa;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/media/tf;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V4;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 18
    .line 19
    :goto_0
    const-string v1, "InMobi"

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0, v3}, Lcom/inmobi/media/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catch_0
    const-string v0, "SDK encountered unexpected error while finishing fullscreen view"

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 44
    .line 45
    const-string v4, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView"

    .line 46
    .line 47
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Lcom/inmobi/media/ec;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ec;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_1
    const-string v0, "SDK encountered unexpected error in processing close request"

    .line 60
    .line 61
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    sget-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 67
    .line 68
    const-string v1, "container"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/inmobi/media/x;->b()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/V4;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lcom/inmobi/media/V4;->h:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Lcom/inmobi/media/w;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V4;->g:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v2

    .line 33
    :goto_0
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move-object v2, v3

    .line 44
    check-cast v2, Landroid/view/ViewGroup;

    .line 45
    .line 46
    :cond_1
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/V4;->g:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/inmobi/media/x;->getPlacementType()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-object v0, p0, Lcom/inmobi/media/V4;->f:Lcom/inmobi/media/x;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/inmobi/media/w;->a()V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void
.end method
