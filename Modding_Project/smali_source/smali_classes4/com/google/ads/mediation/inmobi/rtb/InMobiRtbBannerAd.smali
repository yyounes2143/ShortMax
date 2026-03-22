.class public Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;
.super Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;
.source "InMobiRtbBannerAd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/inmobi/InMobiInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ads/mediation/inmobi/InMobiAdFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer;",
            "Lcom/google/ads/mediation/inmobi/InMobiAdFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "c_google"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/google/ads/mediation/inmobi/InMobiExtrasBuilder;->build(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiExtras;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getParameterMap()Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setExtras(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getKeywords()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setKeywords(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->load([B)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public loadAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->findClosestBannerSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getPlacementId(Landroid/os/Bundle;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->createAndLoadBannerAd(Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
