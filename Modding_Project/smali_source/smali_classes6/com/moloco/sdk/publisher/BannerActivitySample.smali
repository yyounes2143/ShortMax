.class final Lcom/moloco/sdk/publisher/BannerActivitySample;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private banner:Lcom/moloco/sdk/publisher/Banner;

.field private final bannerContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->bannerContainer:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/moloco/sdk/publisher/BannerActivitySample;Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/publisher/BannerActivitySample;->onCreate$lambda$0(Lcom/moloco/sdk/publisher/BannerActivitySample;Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/moloco/sdk/publisher/BannerActivitySample;Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->banner:Lcom/moloco/sdk/publisher/Banner;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->bannerContainer:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/moloco/sdk/publisher/BannerActivitySample$onCreate$1$1;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/moloco/sdk/publisher/BannerActivitySample$onCreate$1$1;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/publisher/Banner;->setAdShowListener(Lcom/moloco/sdk/publisher/BannerAdShowListener;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/moloco/sdk/publisher/BannerActivitySample$onCreate$1$2;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/moloco/sdk/publisher/BannerActivitySample$onCreate$1$2;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "bid response"

    .line 30
    .line 31
    invoke-interface {p1, v0, p2}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/AdLoad;->isLoaded()Z

    .line 35
    .line 36
    .line 37
    const-string p2, "an_another_bid_response"

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, p2, v0}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->bannerContainer:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    const-string p2, ""

    .line 49
    .line 50
    invoke-interface {p1, p2, v0}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p2, "some_other_bid_response"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2, v0}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->bannerContainer:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->bannerContainer:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 10
    .line 11
    const-string p1, "MY_MEDIATION"

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/moloco/sdk/publisher/MediationInfo;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/moloco/sdk/publisher/a;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcom/moloco/sdk/publisher/a;-><init>(Lcom/moloco/sdk/publisher/BannerActivitySample;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v1, "MOLOCO_ADUNIT_ID"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco;->createBanner$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->banner:Lcom/moloco/sdk/publisher/Banner;

    .line 5
    .line 6
    const-string v1, "banner"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v2

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/Destroyable;->destroy()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->banner:Lcom/moloco/sdk/publisher/Banner;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v2

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move-object v0, v2

    .line 38
    :goto_0
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object v3, p0, Lcom/moloco/sdk/publisher/BannerActivitySample;->banner:Lcom/moloco/sdk/publisher/Banner;

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move-object v2, v3

    .line 49
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void
.end method
