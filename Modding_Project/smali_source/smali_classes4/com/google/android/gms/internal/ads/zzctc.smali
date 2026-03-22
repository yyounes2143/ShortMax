.class public final Lcom/google/android/gms/internal/ads/zzctc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbq;
.implements Lcom/google/android/gms/internal/ads/zzcxm;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcte;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcte;Lcom/google/android/gms/internal/ads/zzfcw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzcte;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzcte;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcte;->zze(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzu()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzcte;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcte;->zzd(Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
