.class final Lcom/google/android/gms/internal/ads/zzdzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbvq;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeab;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzbvi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zza:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zzb(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzbb;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvi;->zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string v0, "Service can\'t call client"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zza:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvq;->zzm:Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzs:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zza:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 68
    .line 69
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbvi;->zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvi;->zzf(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    const-string v0, "Service can\'t call client"

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
