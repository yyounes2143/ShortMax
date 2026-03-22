.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbci;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbci;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zza:Lcom/google/android/gms/internal/ads/zzbci;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzft:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zza:Lcom/google/android/gms/internal/ads/zzbci;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 24
    .line 25
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbce;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbce;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/ads/zzayy;

    .line 35
    .line 36
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbci;->zza:Lcom/google/android/gms/internal/ads/zzayy;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbci;->zza:Lcom/google/android/gms/internal/ads/zzayy;

    .line 43
    .line 44
    const-string v3, "GMA_SDK"

    .line 45
    .line 46
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzayy;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbci;->zzb:Z
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    const-string v0, "Cannot dynamite load clearcut"

    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
