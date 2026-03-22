.class final Lcom/google/android/gms/internal/ads/zzdvx;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdwf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzb:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzb:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzd(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzb:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zza:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
