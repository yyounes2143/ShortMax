.class final Lcom/google/android/gms/internal/ads/zzbin;
.super Lcom/google/android/gms/internal/ads/zzbhs;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbiq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzbip;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbin;->zza:Lcom/google/android/gms/internal/ads/zzbiq;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbin;->zza:Lcom/google/android/gms/internal/ads/zzbiq;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbiq;->zza(Lcom/google/android/gms/internal/ads/zzbiq;)Lcom/google/android/gms/ads/formats/zzf;

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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbiq;->zza(Lcom/google/android/gms/internal/ads/zzbiq;)Lcom/google/android/gms/ads/formats/zzf;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbiq;->zze(Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbhk;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/formats/zzf;->zzb(Lcom/google/android/gms/internal/ads/zzbhk;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
