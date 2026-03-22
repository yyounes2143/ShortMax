.class public final Lcom/moloco/sdk/internal/publisher/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/r;->d(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;ZLkotlin/jvm/functions/Function0;)Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/r$a;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/moloco/sdk/internal/publisher/r$a;->e:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p1, "RewardedInterstitialAdShowListenerImpl"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/r$a;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/r$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v3, "issuing of reward is already handled"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->b:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->c:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/r$a;->a:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x0

    .line 41
    const-string v3, "issuing of reward..."

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/r$a;->onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 52
    .line 53
    iget-object v8, p0, Lcom/moloco/sdk/internal/publisher/r$a;->a:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    const/4 v12, 0x0

    .line 57
    const-string v9, "reward can\'t be issued: ad was forcibly closed or ad was missing"

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-static/range {v7 .. v12}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/r$a;->a(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 1

    .line 1
    const-string v0, "molocoAdError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/r$a;->onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/r$a;->a(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/r$a;->d:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
