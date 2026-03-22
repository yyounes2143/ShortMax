.class final Lcom/google/android/gms/ads/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfpj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zza:Lcom/google/android/gms/ads/internal/zzk;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zza:Lcom/google/android/gms/ads/internal/zzk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/ads/zzfoi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, p2

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zza:Lcom/google/android/gms/ads/internal/zzk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/ads/zzfoi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, p2

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfoi;->zze(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    return-void
.end method
