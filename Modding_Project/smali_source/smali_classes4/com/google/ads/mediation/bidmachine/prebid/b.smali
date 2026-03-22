.class final Lcom/google/ads/mediation/bidmachine/prebid/b;
.super Lcom/google/ads/mediation/bidmachine/prebid/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAd;


# instance fields
.field private final e:Lcom/google/ads/mediation/bidmachine/common/delegate/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    const-string v1, "AdMobBMBannerPrebidAd"

    .line 4
    .line 5
    invoke-direct {p0, v1, v0, p1}, Lcom/google/ads/mediation/bidmachine/prebid/a;-><init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/a;->a()Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lcom/google/ads/mediation/bidmachine/prebid/auction/a;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/google/ads/mediation/bidmachine/prebid/auction/a;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v1, v0, v2}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/prebid/b;->e:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lnm/b;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/prebid/b;->a(Landroid/content/Context;Lnm/b;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lnm/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/prebid/b;->e:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->a(Landroid/content/Context;Lnm/b;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/prebid/b;->e:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
