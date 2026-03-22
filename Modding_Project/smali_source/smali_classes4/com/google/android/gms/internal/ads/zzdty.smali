.class final Lcom/google/android/gms/internal/ads/zzdty;
.super Lcom/google/android/gms/internal/ads/zzbxb;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdua;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdty;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdty;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zze(Lcom/google/android/gms/internal/ads/zzdua;)Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzd(Lcom/google/android/gms/internal/ads/zzdua;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzm(JI)V

    .line 12
    .line 13
    .line 14
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdty;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zze(Lcom/google/android/gms/internal/ads/zzdua;)Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzd(Lcom/google/android/gms/internal/ads/zzdua;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzm(JI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdty;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zze(Lcom/google/android/gms/internal/ads/zzdua;)Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzd(Lcom/google/android/gms/internal/ads/zzdua;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zzp(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
