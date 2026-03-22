.class Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;
.super Ljava/lang/Object;
.source "FacebookRtbNativeAd.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeListener"
.end annotation


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeAd:Lcom/facebook/ads/NativeAdBase;

.field final synthetic this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->nativeAd:Lcom/facebook/ads/NativeAdBase;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->context:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->b(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->b(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->b(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;->onAdLeftApplication()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->nativeAd:Lcom/facebook/ads/NativeAdBase;

    .line 2
    .line 3
    const-string v1, "com.google.ads.mediation.facebook"

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    const/16 v0, 0x6a

    .line 10
    .line 11
    const-string v2, "Ad Loaded is not a Native Ad."

    .line 12
    .line 13
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->a(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->context:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/content/Context;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 46
    .line 47
    const/16 v0, 0x6b

    .line 48
    .line 49
    const-string v2, "Context is null."

    .line 50
    .line 51
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->a(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 74
    .line 75
    new-instance v1, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener$1;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener$1;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mapNativeAd(Landroid/content/Context;Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->getAdError(Lcom/facebook/ads/AdError;)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->a(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "onMediaDownloaded"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
