.class final Lcom/google/android/gms/internal/ads/zzfmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:F

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfmd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmd;F)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfmc;->zza:F

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmc;->zzb:Lcom/google/android/gms/internal/ads/zzfmd;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmc;->zzb:Lcom/google/android/gms/internal/ads/zzfmd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmd;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzg(Lcom/google/android/gms/internal/ads/zzfme;)Lcom/google/android/gms/internal/ads/zzfmq;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfmc;->zza:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmq;->zze(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
