.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmp;

.field public final synthetic zzb:Ljava/lang/Throwable;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjy;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmp;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfjy;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzb:Ljava/lang/Throwable;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzd:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzkL:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzb:Ljava/lang/Throwable;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcmp;->zzd:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmq;->zza(Lcom/google/android/gms/internal/ads/zzcmq;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbun;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbup;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcmq;->zzb:Lcom/google/android/gms/internal/ads/zzbup;

    .line 34
    .line 35
    const-string v0, "AttributionReporting.registerSourceAndPingClickUrl"

    .line 36
    .line 37
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbup;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcmp;->zzd:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmq;->zza(Lcom/google/android/gms/internal/ads/zzcmq;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbun;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbup;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcmq;->zza:Lcom/google/android/gms/internal/ads/zzbup;

    .line 52
    .line 53
    const-string v0, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    .line 54
    .line 55
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbup;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzd:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfjy;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzcyi;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
