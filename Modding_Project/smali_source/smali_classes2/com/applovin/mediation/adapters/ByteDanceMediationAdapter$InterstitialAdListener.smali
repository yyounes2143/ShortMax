.class Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;
.super Ljava/lang/Object;
.source "ByteDanceMediationAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialAdListener"
.end annotation


# instance fields
.field private final codeId:Ljava/lang/String;

.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

.field final synthetic this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;Ljava/lang/String;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Interstitial ad clicked: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdClicked()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Interstitial ad hidden: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdHidden()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial ad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") NO FILL\'d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_FILL:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial ad loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;->access$102(Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    .line 6
    iget-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoaded()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public onAdShowed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Interstitial ad displayed: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayed()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;->access$200(ILjava/lang/String;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "Interstitial ad ("

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->codeId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ") failed to load with error: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$InterstitialAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    .line 38
    .line 39
    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
