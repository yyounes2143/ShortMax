.class public final Lcom/google/ads/mediation/moloco/MolocoNativeAd$onAdLoadSuccess$2;
.super Ljava/lang/Object;
.source "MolocoNativeAd.kt"

# interfaces
.implements Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/moloco/MolocoNativeAd;->onAdLoadSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $showCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$onAdLoadSuccess$2;->$showCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGeneralClickHandled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$onAdLoadSuccess$2;->$showCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onImpressionHandled()V
    .locals 0

    .line 1
    return-void
.end method
