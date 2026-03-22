.class Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;
.super Ljava/lang/Object;
.source "PangleRewardedAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->showAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdShowed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onUserEarnedReward(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd$2;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->e(Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onUserEarnedRewardFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Failed to reward user: %s"

    .line 2
    .line 3
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Lcom/google/ads/mediation/pangle/PangleConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
