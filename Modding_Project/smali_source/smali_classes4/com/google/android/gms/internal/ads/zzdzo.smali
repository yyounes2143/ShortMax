.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/common/util/concurrent/e;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvq;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zzc:Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvs;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbvq;->zzm:Landroid/os/Bundle;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzl:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvs;->zzc()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzm:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvs;->zzb()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zzc:Lcom/google/common/util/concurrent/e;

    .line 60
    .line 61
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeah;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvs;)V

    .line 70
    .line 71
    .line 72
    return-object v2
.end method
