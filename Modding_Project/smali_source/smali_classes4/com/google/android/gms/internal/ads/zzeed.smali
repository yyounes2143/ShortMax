.class final Lcom/google/android/gms/internal/ads/zzeed;
.super Lcom/google/android/gms/internal/ads/zzbqz;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzedp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzeee;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqz;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeed;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzefd;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefd;->zzi(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzefd;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefd;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzg()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzefd;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefd;->zzo()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
