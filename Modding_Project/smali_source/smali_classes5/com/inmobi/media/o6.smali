.class public final Lcom/inmobi/media/o6;
.super Lcom/inmobi/media/we;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInterstitialUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterstitialUnifiedAdManager.kt\ncom/inmobi/ads/controllers/InterstitialUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
    }
.end annotation


# instance fields
.field private o:Lcom/inmobi/media/m6;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/we;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic A()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    return-void
.end method

.method public static synthetic A(Lcom/inmobi/media/o6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;)V

    return-void
.end method

.method public static synthetic B(Lcom/inmobi/media/o6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/o6;->c(Lcom/inmobi/media/o6;)V

    return-void
.end method

.method private static final a(Lcom/inmobi/media/o6;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "callback - onAdDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDismissed()V

    :cond_1
    return-void
.end method

.method private static final a(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "callback - onAdFetchSuccessful"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/o6;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 9
    const-string p4, "intHtml"

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private final a(ZS)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "InterstitialUnifiedAdManager"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onShowFailure"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/inmobi/media/S0;->c(S)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lub/p5;

    invoke-direct {v0, p0}, Lub/p5;-><init>(Lcom/inmobi/media/o6;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "AdManager state - FAILED"

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->a(B)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/media/m6;->g()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1}, Lcom/inmobi/media/A5;->a()V

    :cond_4
    return-void
.end method

.method private static final b(Lcom/inmobi/media/o6;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "callback - onAdDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDisplayFailed()V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/media/o6;->y()V

    return-void
.end method

.method private static final b(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "callback - onAdLoadSucceeded"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    return-void
.end method

.method private final c(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/we;->q()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 35
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    const-string p2, "InMobi"

    if-ne v0, p1, :cond_3

    .line 36
    const-string p1, "Unable to Show Ad, canShowAd Failed"

    invoke-static {v1, p2, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, v1, p1}, Lcom/inmobi/media/o6;->a(ZS)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    if-ne v0, p1, :cond_5

    .line 39
    const-string p1, "Ad will be dismissed, Internal error"

    invoke-static {v1, p2, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/media/o6;->y()V

    .line 42
    invoke-virtual {p0}, Lcom/inmobi/media/o6;->b()V

    goto :goto_1

    .line 43
    :cond_5
    const-string p1, "Invalid state passed in fireErrorScenarioCallback"

    invoke-static {v1, p2, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static final c(Lcom/inmobi/media/o6;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "callback - onAdDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDisplayFailed()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/media/o6;->y()V

    return-void
.end method

.method private final e(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "InterstitialUnifiedAdManager"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/inmobi/media/A5;

    .line 10
    .line 11
    const-string v2, "onLoadSuccess"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->c(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/inmobi/media/A5;

    .line 26
    .line 27
    const-string v2, "AdManager state - LOADED"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x2

    .line 33
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lub/o5;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1}, Lub/o5;-><init>(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic x(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method private final x()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->q()B

    move-result v0

    const-string v1, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    const/4 v2, 0x0

    const-string v3, "InMobi"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v4, v3, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x863

    .line 5
    invoke-direct {p0, v2, v0}, Lcom/inmobi/media/o6;->a(ZS)V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    .line 6
    invoke-static {v4, v3, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x878

    .line 8
    invoke-direct {p0, v2, v0}, Lcom/inmobi/media/o6;->a(ZS)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_b

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v5

    goto :goto_0

    :cond_4
    move-object v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v4, v3, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v6

    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x864

    .line 15
    invoke-direct {p0, v2, v0}, Lcom/inmobi/media/o6;->a(ZS)V

    goto :goto_1

    .line 16
    :cond_7
    iget-boolean v0, p0, Lcom/inmobi/media/o6;->p:Z

    if-eqz v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_8

    const/16 v1, 0x865

    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->c(S)V

    .line 18
    :cond_8
    const-string v0, "Ad show is already called. Please wait for the the ad to be shown."

    invoke-static {v4, v3, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v2

    :cond_a
    move v2, v4

    :cond_b
    :goto_1
    return v2
.end method

.method private final y()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->b(B)V

    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/o6;->b(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public static synthetic z(Lcom/inmobi/media/o6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/o6;->b(Lcom/inmobi/media/o6;)V

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->q()B

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->H0()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final D()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "InterstitialUnifiedAdManager"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/inmobi/media/A5;

    .line 10
    .line 11
    const-string v2, "render"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 17
    .line 18
    if-eqz v0, :cond_e

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->H0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/inmobi/media/we;->n()Lcom/inmobi/ads/AdMetaInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    check-cast v0, Lcom/inmobi/media/A5;

    .line 40
    .line 41
    const-string v2, "already in ready state"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->n()Lcom/inmobi/ads/AdMetaInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/inmobi/media/o6;->e(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/media/o6;->p:Z

    .line 59
    .line 60
    const-string v3, "InMobi"

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "Ad show is already called. Please wait for the the ad to be shown."

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    check-cast v0, Lcom/inmobi/media/A5;

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-static {v2, v3, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 81
    .line 82
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 83
    .line 84
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 85
    .line 86
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 93
    .line 94
    if-eqz v0, :cond_d

    .line 95
    .line 96
    const/16 v1, 0x850

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->b(S)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    move-object v0, v4

    .line 114
    :goto_0
    iget-object v5, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 115
    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {p0, v3, v4}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    check-cast v4, Lcom/inmobi/media/A5;

    .line 139
    .line 140
    const-string v5, "ad is null. failure"

    .line 141
    .line 142
    invoke-virtual {v4, v1, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    iget-object v4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 146
    .line 147
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 148
    .line 149
    sget-object v6, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 150
    .line 151
    invoke-direct {v5, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4, v5}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 158
    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    const/16 v5, 0x876

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Lcom/inmobi/media/S0;->a(S)V

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/we;->n()Lcom/inmobi/ads/AdMetaInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-nez v4, :cond_a

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    check-cast v4, Lcom/inmobi/media/A5;

    .line 179
    .line 180
    const-string v5, "ad meta info is null. failure"

    .line 181
    .line 182
    invoke-virtual {v4, v1, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_9
    iget-object v4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 186
    .line 187
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 188
    .line 189
    sget-object v6, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 190
    .line 191
    invoke-direct {v5, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v4, v5}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 195
    .line 196
    .line 197
    iget-object v4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 198
    .line 199
    if-eqz v4, :cond_a

    .line 200
    .line 201
    const/16 v5, 0x877

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Lcom/inmobi/media/S0;->a(S)V

    .line 204
    .line 205
    .line 206
    :cond_a
    if-eqz v0, :cond_d

    .line 207
    .line 208
    if-eqz v3, :cond_d

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/inmobi/media/we;->v()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/inmobi/media/o6;->j()Lcom/inmobi/media/S0;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->e(B)Z

    .line 223
    .line 224
    .line 225
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    check-cast v0, Lcom/inmobi/media/A5;

    .line 232
    .line 233
    const-string v2, "AdManager state - LOADING_INTO_VIEW"

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_c
    const/16 v0, 0x8

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->j0()V

    .line 248
    .line 249
    .line 250
    :cond_d
    :goto_1
    return-void

    .line 251
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 252
    .line 253
    const-string v1, "Please make an ad request first in order to start loading the ad."

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->G0()Lcom/inmobi/media/Nd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/inmobi/media/Nd;->b:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->K0()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/inmobi/media/A5;

    .line 8
    .line 9
    const-string v1, "InterstitialUnifiedAdManager"

    .line 10
    .line 11
    const-string v2, "show"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->G0()Lcom/inmobi/media/Nd;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    const/4 v1, 0x1

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iput-boolean v1, v0, Lcom/inmobi/media/Nd;->b:Z

    .line 31
    .line 32
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->w0()V

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/media/o6;->x()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    sget-object v0, Lcom/inmobi/media/G4;->a:Lcom/inmobi/media/G4;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/G4;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    const/16 v0, 0x85d    # 3.0E-42f

    .line 58
    .line 59
    invoke-direct {p0, v1, v0}, Lcom/inmobi/media/o6;->a(ZS)V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-void

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    const/4 v2, 0x4

    .line 68
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->e(B)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ne v0, v1, :cond_6

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/inmobi/media/o6;->p:Z

    .line 75
    .line 76
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Lcom/inmobi/media/m6;->j(Lcom/inmobi/media/F0;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 41
    invoke-virtual {p0}, Lcom/inmobi/media/o6;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->x0()V

    :cond_0
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/inmobi/media/o6;->p:Z

    return-void
.end method

.method public a(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "watermarkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1    # Lcom/inmobi/media/Wa;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pubSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/inmobi/media/X;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lcom/inmobi/media/X;-><init>(Ljava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lcom/inmobi/media/Wa;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/X;->a(J)Lcom/inmobi/media/X;

    move-result-object v0

    .line 13
    iget-object v1, p1, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->c(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->a(Ljava/util/Map;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->e(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->b(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/X;->a()Lcom/inmobi/media/Z;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/inmobi/media/m6;

    invoke-direct {v1, p2, v0, p0}, Lcom/inmobi/media/m6;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    iput-object v1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    :cond_0
    if-eqz p3, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/we;->w()V

    .line 20
    :cond_1
    iget-object p3, p1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    const-string v0, "InterstitialUnifiedAdManager"

    if-eqz p3, :cond_6

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    const/4 v1, 0x0

    .line 22
    invoke-static {p4, p3, v1}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/A5;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/z5;)V

    .line 23
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Lcom/inmobi/media/A5;

    const-string p4, "Ad Unit initialised"

    invoke-virtual {p3, v0, p4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 25
    iget-object p4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p4, :cond_4

    invoke-virtual {p4, p3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/z5;)V

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p3

    if-eqz p3, :cond_5

    check-cast p3, Lcom/inmobi/media/A5;

    const-string p4, "adding interstitialAdUnit in referenceTracker"

    invoke-virtual {p3, v0, p4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_5
    iget-object p3, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    .line 28
    :cond_6
    iget-object p3, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p2}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;)V

    .line 29
    :cond_7
    iget-object p2, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p2, :cond_8

    iget-object p3, p1, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {p2, p3}, Lcom/inmobi/media/S0;->a(Ljava/util/Map;)V

    .line 30
    :cond_8
    iget-object p2, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p2, :cond_9

    const-string p3, "activity"

    invoke-virtual {p2, p3}, Lcom/inmobi/media/m6;->c(Ljava/lang/String;)V

    .line 31
    :cond_9
    iget-boolean p1, p1, Lcom/inmobi/media/Wa;->d:Z

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/inmobi/media/m6;->F0()V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/media/we;->t()Lcom/inmobi/ads/WatermarkData;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 34
    iget-object p2, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 35
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "setting up watermark"

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public final a(Lcom/inmobi/media/m6;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/m6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    return-void
.end method

.method public b()V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/s5;

    invoke-direct {v1, p0}, Lub/s5;-><init>(Lcom/inmobi/media/o6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InterstitialUnifiedAdManager"

    const-string v2, "AdManager state - CREATED"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/m6;->g()V

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public b(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "InterstitialUnifiedAdManager"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onAdFetchSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "onAdFetchSuccess - adUnit is null - fail"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    const/16 p1, 0x88e

    .line 9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->a(S)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/q5;

    invoke-direct {v1, p0, p1}, Lub/q5;-><init>(Lcom/inmobi/media/o6;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "InterstitialUnifiedAdManager"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onAdLoadSucceeded"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "adUnit is null"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/inmobi/media/o6;->c(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/inmobi/media/o6;->e(Lcom/inmobi/ads/AdMetaInfo;)V

    :goto_0
    return-void
.end method

.method public final c(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->u()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "InMobi"

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_1

    const/16 v3, 0x7d6

    invoke-virtual {v0, v3}, Lcom/inmobi/media/S0;->a(S)V

    .line 14
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    const-string v0, "Cannot call load() API after calling load(byte[])"

    if-eqz p1, :cond_2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {v1, v2, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/media/o6;->p:Z

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_4

    const/16 v3, 0x7d4

    invoke-virtual {v0, v3}, Lcom/inmobi/media/S0;->a(S)V

    .line 19
    :cond_4
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    const-string v0, "Ad show is already called. Please wait for the the ad to be shown."

    if-eqz p1, :cond_5

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-static {v1, v2, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 22
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/inmobi/media/we;->o()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/S0;->e(B)Z

    move-result p1

    if-ne p1, v1, :cond_b

    .line 26
    invoke-virtual {p0, v1}, Lcom/inmobi/media/we;->a(B)V

    .line 27
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Fetching an Interstitial ad for placement id: "

    const-string v2, "InterstitialUnifiedAdManager"

    if-eqz p1, :cond_8

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v4

    goto :goto_0

    :cond_7
    move-object v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v0

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 31
    invoke-static {v0, v2, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p1, p0}, Lcom/inmobi/media/S0;->g(Lcom/inmobi/media/F0;)V

    .line 33
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/inmobi/media/m6;->c0()V

    :cond_b
    :goto_2
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lub/r5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lub/r5;-><init>(Lcom/inmobi/media/o6;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/inmobi/media/A5;

    .line 20
    .line 21
    const-string v1, "InterstitialUnifiedAdManager"

    .line 22
    .line 23
    const-string v2, "AdManager state - DISPLAY_FAILED"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x6

    .line 29
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/m6;->g()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    check-cast v0, Lcom/inmobi/media/A5;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/inmobi/media/A5;

    .line 8
    .line 9
    const-string v1, "InterstitialUnifiedAdManager"

    .line 10
    .line 11
    const-string v2, "showTimeOut"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/o6;->j()Lcom/inmobi/media/S0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x6

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x7

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    const/16 v1, 0x86f

    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/inmobi/media/o6;->a(ZS)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v0, p0}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/F0;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    return-void
.end method

.method public j()Lcom/inmobi/media/S0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lcom/inmobi/media/m6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/o6;->o:Lcom/inmobi/media/m6;

    return-object v0
.end method
