.class final Lcom/google/android/gms/internal/ads/zzbta;
.super Lcom/google/android/gms/internal/ads/zzbhs;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbtd;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhj;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbtd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtd;->zzc(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtd;->zzc(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtd;->zze(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
