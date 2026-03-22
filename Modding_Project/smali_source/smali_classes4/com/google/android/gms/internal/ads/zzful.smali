.class final Lcom/google/android/gms/internal/ads/zzful;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfun;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfun;Lcom/google/android/gms/internal/ads/zzfum;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzful;->zza:Lcom/google/android/gms/internal/ads/zzfun;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzful;->zza:Lcom/google/android/gms/internal/ads/zzfun;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfun;->zzd(Lcom/google/android/gms/internal/ads/zzfun;)Lcom/google/android/gms/internal/ads/zzfuo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "LmdServiceConnectionManager.onServiceConnected(%s)"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfuo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfuj;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfuj;-><init>(Lcom/google/android/gms/internal/ads/zzful;Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfun;->zzl(Lcom/google/android/gms/internal/ads/zzfun;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzful;->zza:Lcom/google/android/gms/internal/ads/zzfun;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfun;->zzd(Lcom/google/android/gms/internal/ads/zzfun;)Lcom/google/android/gms/internal/ads/zzfuo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "LmdServiceConnectionManager.onServiceDisconnected(%s)"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfuo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfuk;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfuk;-><init>(Lcom/google/android/gms/internal/ads/zzful;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfun;->zzl(Lcom/google/android/gms/internal/ads/zzfun;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
