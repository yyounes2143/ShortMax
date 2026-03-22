.class final Lcom/google/ads/mediation/bidmachine/prebid/f;
.super Lcom/google/ads/mediation/bidmachine/prebid/a;
.source "SourceFile"


# instance fields
.field private final e:Lcom/google/ads/mediation/bidmachine/common/delegate/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    const-string v1, "AdMobBMNativePrebidAd"

    .line 4
    .line 5
    invoke-direct {p0, v1, v0, p1}, Lcom/google/ads/mediation/bidmachine/prebid/a;-><init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/ads/mediation/bidmachine/common/delegate/g;

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
    invoke-direct {p1, v1, v0, v2}, Lcom/google/ads/mediation/bidmachine/common/delegate/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/prebid/f;->e:Lcom/google/ads/mediation/bidmachine/common/delegate/c;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lio/bidmachine/nativead/NativeRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/prebid/f;->e:Lcom/google/ads/mediation/bidmachine/common/delegate/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->a(Landroid/content/Context;Lio/bidmachine/nativead/NativeRequest;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/prebid/f;->a(Landroid/content/Context;Lio/bidmachine/nativead/NativeRequest;)V

    return-void
.end method
