.class public final Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;
.super Ljava/lang/Object;
.source "MintegralFactory.kt"

# interfaces
.implements Lcom/google/ads/mediation/mintegral/MintegralBidNewInterstitialAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/mintegral/MintegralFactory;->createBidInterstitialHandler()Lcom/google/ads/mediation/mintegral/MintegralBidNewInterstitialAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placementId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adUnitId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 22
    .line 23
    return-void
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "bidToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->loadFromBid(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->playVideoMute(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string v0, "jsonObject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->setExtraInfo(Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setInterstitialVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialWithCodeListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->setInterstitialVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showFromBid()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralFactory$createBidInterstitialHandler$1;->instance:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->showFromBid()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
