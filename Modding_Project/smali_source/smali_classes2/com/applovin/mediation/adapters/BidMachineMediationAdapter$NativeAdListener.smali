.class Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;
.super Ljava/lang/Object;
.source "BidMachineMediationAdapter.java"

# interfaces
.implements Lio/bidmachine/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeAdListener"
.end annotation


# instance fields
.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

.field private final serverParameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Landroid/os/Bundle;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->serverParameters:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$300(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->serverParameters:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->handleNativeAdLoaded(Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;)Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private handleNativeAdLoaded(Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V
    .locals 1
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener$2;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
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
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdClicked(Lmp/b;)V

    return-void
.end method

.method public onAdClicked(Lmp/b;)V
    .locals 1
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Native ad clicked"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdClicked()V

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdExpired(Lmp/b;)V

    return-void
.end method

.method public onAdExpired(Lmp/b;)V
    .locals 1
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Native ad expired"

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
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdImpression(Lmp/b;)V

    return-void
.end method

.method public onAdImpression(Lmp/b;)V
    .locals 1
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v0, "Native ad impression"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdDisplayed(Landroid/os/Bundle;)V

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
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdLoadFailed(Lmp/b;Lfr/a;)V

    return-void
.end method

.method public onAdLoadFailed(Lmp/b;Lfr/a;)V
    .locals 2
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->access$200(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lfr/a;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native ad failed to load with error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdLoaded(Lmp/b;)V

    return-void
.end method

.method public onAdLoaded(Lmp/b;)V
    .locals 4
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    const-string v1, "Native ad loaded"

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 3
    const-string v0, ""

    iget-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->serverParameters:Landroid/os/Bundle;

    const-string v2, "template"

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lmp/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") does not have required assets."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->MISSING_REQUIRED_NATIVE_AD_ASSETS:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lmp/b;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->handleNativeAdLoaded(Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

    return-void

    .line 10
    :cond_1
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    .line 12
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 13
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    invoke-direct {v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    invoke-direct {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    invoke-virtual {v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getCachingExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener$1;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;Ljava/lang/String;Lmp/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->handleNativeAdLoaded(Lmp/b;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

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
    check-cast p1, Lmp/b;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->onAdShowFailed(Lmp/b;Lfr/a;)V

    return-void
.end method

.method public onAdShowFailed(Lmp/b;Lfr/a;)V
    .locals 2
    .param p1    # Lmp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native ad failed to show with error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method
