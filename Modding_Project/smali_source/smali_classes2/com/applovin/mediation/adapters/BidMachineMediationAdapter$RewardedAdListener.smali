.class Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;
.super Ljava/lang/Object;
.source "BidMachineMediationAdapter.java"

# interfaces
.implements Lio/bidmachine/AdListener;
.implements Lio/bidmachine/AdFullScreenListener;
.implements Lio/bidmachine/AdRewardedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardedAdListener"
.end annotation


# instance fields
.field private hasGrantedReward:Z

.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

.field final synthetic this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdClicked(Lvq/a;)V

    return-void
.end method

.method public onAdClicked(Lvq/a;)V
    .locals 1
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Rewarded ad clicked"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdClicked()V

    return-void
.end method

.method public bridge synthetic onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdClosed(Lvq/a;Z)V

    return-void
.end method

.method public onAdClosed(Lvq/a;Z)V
    .locals 2
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string p2, "Rewarded ad closed"

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->hasGrantedReward:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->shouldAlwaysRewardUser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getReward()Lcom/applovin/mediation/MaxReward;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded user with reward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onUserRewarded(Lcom/applovin/mediation/MaxReward;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdHidden()V

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdExpired(Lvq/a;)V

    return-void
.end method

.method public onAdExpired(Lvq/a;)V
    .locals 1
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Rewarded ad expired"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdImpression(Lvq/a;)V

    return-void
.end method

.method public onAdImpression(Lvq/a;)V
    .locals 1
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Rewarded ad impression"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayed()V

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdLoadFailed(Lvq/a;Lfr/a;)V

    return-void
.end method

.method public onAdLoadFailed(Lvq/a;Lfr/a;)V
    .locals 2
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->access$200(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lfr/a;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded ad failed to load with error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdLoaded(Lvq/a;)V

    return-void
.end method

.method public onAdLoaded(Lvq/a;)V
    .locals 2
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v1, "Rewarded ad loaded"

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->access$100(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Llp/c;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    const-string v1, "creative_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoaded(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onAdRewarded(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdRewarded(Lvq/a;)V

    return-void
.end method

.method public onAdRewarded(Lvq/a;)V
    .locals 1
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Rewarded ad should grant reward"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->hasGrantedReward:Z

    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lvq/a;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->onAdShowFailed(Lvq/a;Lfr/a;)V

    return-void
.end method

.method public onAdShowFailed(Lvq/a;Lfr/a;)V
    .locals 2
    .param p1    # Lvq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance p1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 3
    invoke-virtual {p2}, Lfr/a;->e()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lfr/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded ad failed to show with error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method
