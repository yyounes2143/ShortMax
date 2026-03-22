.class final Lcom/google/android/gms/internal/ads/zzbir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbis;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/internal/client/zzbx;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbir;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzc:Lcom/google/android/gms/internal/ads/zzbis;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbir;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzb(Lcom/google/android/gms/ads/internal/client/zzbx;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzc:Lcom/google/android/gms/internal/ads/zzbis;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbis;->zzc(Lcom/google/android/gms/internal/ads/zzbis;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->onAdManagerAdViewLoaded(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "Could not bind."

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
