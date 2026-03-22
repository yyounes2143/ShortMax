.class public final Lcom/google/android/gms/internal/ads/zzdxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdyk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhgl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzhgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzc:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzd:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zze:Lcom/google/android/gms/internal/ads/zzhgl;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/android/gms/internal/ads/zzdyy;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzd:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzfS:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-long v0, p1

    .line 24
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyy;

    .line 31
    .line 32
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbvq;->zzm:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-string v0, "ls"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zze:Lcom/google/android/gms/internal/ads/zzhgl;

    .line 14
    .line 15
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhgl;->zzb()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeab;

    .line 20
    .line 21
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzeab;->zzd(Lcom/google/android/gms/internal/ads/zzbvq;I)Lcom/google/common/util/concurrent/e;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdxl;

    .line 26
    .line 27
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdxl;-><init>(Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 31
    .line 32
    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvq;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzD(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzhK:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzc:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxm;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxm;-><init>(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzd:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgde;->zzw(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgde;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzfS:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 68
    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    int-to-long v2, v2

    .line 84
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    .line 86
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    .line 88
    invoke-static {v0, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgde;

    .line 93
    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxn;

    .line 95
    .line 96
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdxn;-><init>(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 100
    .line 101
    const-class v1, Ljava/lang/Throwable;

    .line 102
    .line 103
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzf(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgde;

    .line 108
    .line 109
    return-object p1
.end method
