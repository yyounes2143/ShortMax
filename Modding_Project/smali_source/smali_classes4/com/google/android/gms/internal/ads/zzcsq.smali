.class public final Lcom/google/android/gms/internal/ads/zzcsq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxm;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzcza;
.implements Lcom/google/android/gms/internal/ads/zzcws;
.implements Lcom/google/android/gms/internal/ads/zzcvy;
.implements Lcom/google/android/gms/internal/ads/zzdbm;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zze()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzc()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdn(Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdo(Lcom/google/android/gms/internal/ads/zzfcn;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzl;->zzk(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzdu(Lcom/google/android/gms/internal/ads/zzbwc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zze()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzh()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzi()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzj(Lcom/google/android/gms/ads/internal/client/zzm;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzl(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzg()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzh(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
