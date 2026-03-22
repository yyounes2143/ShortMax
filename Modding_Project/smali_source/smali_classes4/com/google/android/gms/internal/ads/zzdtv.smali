.class final Lcom/google/android/gms/internal/ads/zzdtv;
.super Lcom/google/android/gms/ads/internal/client/zzbj;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdtp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdtw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtw;Lcom/google/android/gms/internal/ads/zzdtp;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zzb(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zzc(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zze(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzd(JI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzd(JI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzg()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzh()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zze(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zzg(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzk()V
    .locals 0

    .line 1
    return-void
.end method
