.class public final Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;
.super Ljava/lang/Object;
.source "MolocoBannerAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/moloco/MolocoBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/moloco/sdk/publisher/Banner;",
        "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/publisher/Banner;

    check-cast p2, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->invoke(Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->getDescription()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.moloco.sdk"

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p2}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$getMediationAdLoadCallback$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 5
    const-string p2, "Moloco ad object returned was null."

    .line 6
    const-string v0, "com.google.ads.mediation.moloco"

    const/16 v1, 0x67

    .line 7
    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p2}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$getMediationAdLoadCallback$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p2, p1}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$setMolocoAd$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;Lcom/moloco/sdk/publisher/Banner;)V

    .line 10
    iget-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$getMolocoAd$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)Lcom/moloco/sdk/publisher/Banner;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "molocoAd"

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object v1, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-virtual {p1, v1}, Lcom/moloco/sdk/publisher/Banner;->setAdShowListener(Lcom/moloco/sdk/publisher/BannerAdShowListener;)V

    .line 11
    iget-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$getMolocoAd$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)Lcom/moloco/sdk/publisher/Banner;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    iget-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->access$getBidResponse$p(Lcom/google/ads/mediation/moloco/MolocoBannerAd;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/moloco/MolocoBannerAd$loadAd$createBannerCallback$1;->this$0:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    invoke-interface {p2, p1, v0}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    return-void
.end method
