.class final Lcom/google/android/gms/internal/ads/zzbtb;
.super Lcom/google/android/gms/internal/ads/zzbhv;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbtc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzbtd;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhv;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzbtd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtd;->zzd(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtd;->zze(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
