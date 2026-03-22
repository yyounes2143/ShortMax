.class public final Lcom/inmobi/media/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/sa;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Lcom/inmobi/media/x;

.field public c:Lcom/inmobi/media/P;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Lcom/inmobi/media/Y3;

.field public f:Lcom/inmobi/media/pa;

.field public g:F

.field public h:Lcom/inmobi/media/z5;

.field public final i:Lcom/inmobi/media/i5;

.field public final j:Lcom/inmobi/media/h5;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    .line 25
    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput p1, p0, Lcom/inmobi/media/j5;->g:F

    .line 29
    .line 30
    new-instance p1, Lcom/inmobi/media/i5;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/inmobi/media/i5;-><init>(Lcom/inmobi/media/j5;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/inmobi/media/j5;->i:Lcom/inmobi/media/i5;

    .line 36
    .line 37
    new-instance p1, Lcom/inmobi/media/h5;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/inmobi/media/h5;-><init>(Lcom/inmobi/media/j5;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/inmobi/media/j5;->j:Lcom/inmobi/media/h5;

    .line 43
    .line 44
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Y3;)V
    .locals 1

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/j5;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/inmobi/media/j5;->g:F

    .line 108
    iget-object v1, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz v1, :cond_0

    .line 109
    iput v0, v1, Lcom/inmobi/media/P;->c:F

    .line 110
    invoke-virtual {v1}, Lcom/inmobi/media/P;->e()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0xffef

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    return-void

    .line 76
    :cond_2
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    invoke-static {v1}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    .line 116
    iget-object v1, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    invoke-static {v1}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 118
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    const p1, 0x1020002

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0xffef

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 123
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0xffee

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_3

    .line 125
    iget-object p1, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 126
    :cond_3
    iget-object p2, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    if-eqz p2, :cond_4

    .line 127
    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Intent;Landroid/util/SparseArray;)V
    .locals 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContainers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/x;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->b()V

    goto/16 :goto_a

    .line 5
    :cond_0
    const-string v0, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p2}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/inmobi/media/w;->a()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->b()V

    goto/16 :goto_a

    .line 8
    :cond_2
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    .line 9
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 10
    iget-boolean p1, p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->g:Z

    if-nez p1, :cond_e

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->g:Z

    .line 13
    instance-of p1, p2, Lcom/inmobi/media/ec;

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_0

    .line 14
    :cond_3
    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/ec;

    .line 15
    iget-boolean p1, p1, Lcom/inmobi/media/ec;->S0:Z

    :goto_0
    if-eqz p1, :cond_d

    .line 16
    iget-object p1, p0, Lcom/inmobi/media/j5;->h:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v4, "InMobiActivityViewHandler"

    const-string v5, "showInImmersiveMode"

    invoke-virtual {p1, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz v4, :cond_5

    check-cast p1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    goto :goto_1

    :cond_5
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_6

    goto/16 :goto_4

    .line 18
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_7

    goto/16 :goto_4

    .line 19
    :cond_7
    sget-object v4, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v4}, Lcom/inmobi/media/L3;->z()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v5, 0x3

    .line 21
    invoke-static {v3, v5}, Lcom/applovin/adview/b;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 22
    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_2

    .line 24
    :cond_8
    invoke-virtual {v4}, Lcom/inmobi/media/L3;->x()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 26
    invoke-static {v5, v3}, Lcom/applovin/adview/b;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 27
    invoke-virtual {p1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 29
    :cond_9
    :goto_2
    invoke-virtual {v4}, Lcom/inmobi/media/L3;->z()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 30
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    :goto_3
    if-eqz p1, :cond_b

    .line 32
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_b
    if-eqz p1, :cond_e

    .line 33
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_4

    .line 34
    :cond_c
    invoke-virtual {v4}, Lcom/inmobi/media/L3;->F()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x1606

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_4

    .line 36
    :cond_d
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_e

    .line 37
    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    :goto_4
    const/16 p1, 0xc8

    if-ne p1, v0, :cond_f

    .line 40
    invoke-interface {p2}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "html"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_f
    const/16 p1, 0xca

    if-ne p1, v0, :cond_10

    .line 41
    invoke-interface {p2}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "htmlUrl"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    const/16 p1, 0xc9

    if-ne p1, v0, :cond_13

    .line 42
    invoke-interface {p2}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inmobiJson"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 43
    :cond_11
    invoke-interface {p2}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/inmobi/media/w;->a()V

    .line 44
    :cond_12
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->b()V

    goto/16 :goto_a

    .line 45
    :cond_13
    :try_start_1
    iput-object p2, p0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 46
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/inmobi/media/x;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->a()V

    .line 48
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const v0, 0xfffe

    if-nez p1, :cond_14

    goto :goto_5

    .line 49
    :cond_14
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 51
    iput-object v1, p0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    .line 52
    :goto_5
    invoke-virtual {p0, p2}, Lcom/inmobi/media/j5;->a(Lcom/inmobi/media/x;)V

    .line 53
    iget-object p1, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/inmobi/media/P;->f()V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_9

    .line 54
    :cond_15
    :goto_6
    iget-object p1, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_16

    goto :goto_8

    :cond_16
    const v1, 0x1020002

    .line 55
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_17

    const v1, 0xffef

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    goto :goto_7

    :cond_17
    move-object p1, v2

    .line 57
    :goto_7
    iget-object v1, p0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1a

    if-nez p1, :cond_18

    goto :goto_8

    .line 58
    :cond_18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_19

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/inmobi/media/P;->e()V

    .line 62
    :cond_1a
    :goto_8
    instance-of p1, p2, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_1b

    .line 63
    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/ec;

    iget-object v0, p0, Lcom/inmobi/media/j5;->j:Lcom/inmobi/media/h5;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->setEmbeddedBrowserJsCallbacks(Lcom/inmobi/media/a4;)V

    .line 64
    :cond_1b
    instance-of p1, p2, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_1f

    .line 65
    iget-object p1, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    if-nez p1, :cond_1c

    goto :goto_a

    :cond_1c
    move-object v0, p2

    check-cast v0, Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Y3;->setUserLeftApplicationListener(Lcom/inmobi/media/Fe;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 66
    :goto_9
    invoke-interface {p2, v2}, Lcom/inmobi/media/x;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 67
    invoke-interface {p2}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-interface {p2}, Lcom/inmobi/media/w;->a()V

    .line 68
    :cond_1d
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->b()V

    .line 69
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 70
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 71
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_a

    .line 72
    :cond_1e
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->b()V

    :cond_1f
    :goto_a
    return-void
.end method

.method public final a(Lcom/inmobi/media/pa;)V
    .locals 2

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/P;->a(Lcom/inmobi/media/pa;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    if-eq v0, p1, :cond_4

    invoke-static {v0}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    move-result v0

    invoke-static {p1}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    .line 103
    iget-object p1, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/media/P;->e()V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/j5;->c()V

    return-void

    .line 105
    :cond_4
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    return-void
.end method

.method public final a(Lcom/inmobi/media/x;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x409f29ea

    if-eq v2, v3, :cond_3

    const v3, 0x3107ab

    if-eq v2, v3, :cond_2

    const v3, 0x49aca1c4    # 1414200.5f

    if-ne v2, v3, :cond_5

    const-string v2, "htmlUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    :goto_0
    new-instance v1, Lcom/inmobi/media/V4;

    iget-object v2, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, p1, v0}, Lcom/inmobi/media/V4;-><init>(Ljava/lang/ref/WeakReference;Lcom/inmobi/media/x;Landroid/widget/RelativeLayout;)V

    goto :goto_1

    .line 86
    :cond_3
    const-string v2, "inmobiJson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    new-instance v1, Lcom/inmobi/media/z6;

    iget-object v2, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, p1, v0}, Lcom/inmobi/media/z6;-><init>(Ljava/lang/ref/WeakReference;Lcom/inmobi/media/x;Landroid/widget/RelativeLayout;)V

    .line 88
    :goto_1
    iput-object v1, p0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 89
    iget-object v0, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/P;->a(Lcom/inmobi/media/pa;)V

    .line 90
    iget v0, p0, Lcom/inmobi/media/j5;->g:F

    .line 91
    iput v0, v1, Lcom/inmobi/media/P;->c:F

    .line 92
    instance-of v0, p1, Lcom/inmobi/media/ec;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 93
    :cond_4
    check-cast p1, Lcom/inmobi/media/ec;

    .line 94
    iget-boolean p1, p1, Lcom/inmobi/media/ec;->S0:Z

    .line 95
    :goto_2
    iput-boolean p1, v1, Lcom/inmobi/media/P;->d:Z

    return-void

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InMobiActivityViewHandler: Unknown Markup type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    instance-of v1, v0, Lcom/inmobi/media/ec;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/ec;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

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
    return-void

    .line 14
    :cond_0
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    instance-of v2, v0, Lcom/inmobi/media/ec;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast v0, Lcom/inmobi/media/ec;

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/inmobi/media/ec;->S0:Z

    .line 20
    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/Activity;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    :cond_2
    invoke-static {}, Lcom/inmobi/media/U3;->h()Lcom/inmobi/media/V3;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    iget v2, v0, Lcom/inmobi/media/V3;->a:I

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    iget v3, v0, Lcom/inmobi/media/V3;->c:F

    .line 55
    .line 56
    mul-float/2addr v2, v3

    .line 57
    iget v0, v0, Lcom/inmobi/media/V3;->b:I

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    mul-float/2addr v0, v3

    .line 61
    iget-object v3, p0, Lcom/inmobi/media/j5;->f:Lcom/inmobi/media/pa;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, -0x1

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    int-to-float v0, v1

    .line 71
    iget v1, p0, Lcom/inmobi/media/j5;->g:F

    .line 72
    .line 73
    sub-float/2addr v0, v1

    .line 74
    mul-float/2addr v0, v2

    .line 75
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0, v0, v4}, Lcom/inmobi/media/j5;->a(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    int-to-float v1, v1

    .line 84
    iget v2, p0, Lcom/inmobi/media/j5;->g:F

    .line 85
    .line 86
    sub-float/2addr v1, v2

    .line 87
    mul-float/2addr v1, v0

    .line 88
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0, v4, v0}, Lcom/inmobi/media/j5;->a(II)V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    check-cast v2, Landroid/view/ViewGroup;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v2, v1

    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    new-instance v3, Lub/p4;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Lub/p4;-><init>(Lcom/inmobi/media/Y3;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    iget-object v2, v0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 54
    .line 55
    .line 56
    :cond_4
    iput-object v1, v0, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/inmobi/media/Y3;->e:Lcom/inmobi/media/Fe;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/Df;

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/inmobi/media/Df;->a()V

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    .line 71
    .line 72
    :cond_6
    iput-object v1, p0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 73
    .line 74
    sget-object v0, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 75
    .line 76
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 77
    .line 78
    const-string v2, "onClose"

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/inmobi/media/j5;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    return-void
.end method
