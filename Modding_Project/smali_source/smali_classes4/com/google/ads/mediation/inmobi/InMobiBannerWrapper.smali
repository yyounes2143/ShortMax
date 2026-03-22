.class public Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;
.super Ljava/lang/Object;
.source "InMobiBannerWrapper.java"


# instance fields
.field private final inMobiBanner:Lcom/inmobi/ads/InMobiBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getInMobiBanner()Lcom/inmobi/ads/InMobiBanner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    return-object v0
.end method

.method public load()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->load()V

    return-void
.end method

.method public load([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->load([B)V

    return-void
.end method

.method public setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnableAutoRefresh(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setExtras(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setKeywords(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
