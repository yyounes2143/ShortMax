.class Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;
.super Ljava/lang/Object;
.source "AppLovinAdViewWrapper.java"


# instance fields
.field private final adViewWrapper:Landroid/widget/FrameLayout;

.field private final appLovinAdView:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method private constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p4}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->adViewWrapper:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static newInstance(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Lcom/google/android/gms/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public getAppLovinAdView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->adViewWrapper:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
