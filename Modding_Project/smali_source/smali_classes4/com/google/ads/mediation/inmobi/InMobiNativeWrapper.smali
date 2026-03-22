.class public Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
.super Ljava/lang/Object;
.source "InMobiNativeWrapper.java"


# instance fields
.field private final inMobiNative:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAdCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getAdCtaText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getAdDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getAdIconUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getAdLandingPageUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getAdTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCustomAdContent()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getCustomAdContent()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInMobiNative()Lcom/inmobi/ads/InMobiNative;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Integer;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inmobi/ads/InMobiNative;->getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isVideo()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->isVideo()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public load()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->load()V

    return-void
.end method

.method public load([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiNative;->load([B)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reportAdClickAndOpenLandingPage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->reportAdClickAndOpenLandingPage()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->resume()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiNative;->setExtras(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiNative;->setKeywords(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoEventListener(Lcom/inmobi/ads/listeners/VideoEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiNative;->setVideoEventListener(Lcom/inmobi/ads/listeners/VideoEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
