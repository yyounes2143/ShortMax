.class public final Lcom/google/android/gms/internal/ads/zzbzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;I)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzi;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzi;-><init>(Lcom/google/android/gms/internal/ads/zzbzj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p2
.end method
