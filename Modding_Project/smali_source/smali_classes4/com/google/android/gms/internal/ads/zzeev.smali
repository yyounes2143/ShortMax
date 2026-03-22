.class final Lcom/google/android/gms/internal/ads/zzeev;
.super Lcom/google/android/gms/internal/ads/zzbrc;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeex;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzedp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeex;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzeew;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeev;->zza:Lcom/google/android/gms/internal/ads/zzeex;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbrc;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzb:Lcom/google/android/gms/internal/ads/zzedp;

    .line 10
    .line 11
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzb:Lcom/google/android/gms/internal/ads/zzedp;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzb:Lcom/google/android/gms/internal/ads/zzedp;

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

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zza:Lcom/google/android/gms/internal/ads/zzeex;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeex;->zze(Lcom/google/android/gms/internal/ads/zzeex;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzb:Lcom/google/android/gms/internal/ads/zzedp;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefd;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefd;->zzo()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbpz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zza:Lcom/google/android/gms/internal/ads/zzeex;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeex;->zzd(Lcom/google/android/gms/internal/ads/zzeex;Lcom/google/android/gms/internal/ads/zzbpz;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzb:Lcom/google/android/gms/internal/ads/zzedp;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefd;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefd;->zzo()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
