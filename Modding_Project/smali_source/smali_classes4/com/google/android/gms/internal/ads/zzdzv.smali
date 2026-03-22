.class final Lcom/google/android/gms/internal/ads/zzdzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbva;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeab;Lcom/google/android/gms/internal/ads/zzbvj;Lcom/google/android/gms/internal/ads/zzbva;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzb:Lcom/google/android/gms/internal/ads/zzbvj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzbva;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzb:Lcom/google/android/gms/internal/ads/zzbvj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zzb(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzbb;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvj;->zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzb:Lcom/google/android/gms/internal/ads/zzbvj;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzbva;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbvj;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbva;)V
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
