.class public final Lcom/google/android/gms/internal/ads/zzevm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbzs;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdy;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbf;Lcom/google/android/gms/internal/ads/zzbzs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgdy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevm;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzevm;->zzc:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzevm;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzevn;
    .locals 1

    .line 1
    const-string v0, "AppSetIdInfoGmscoreSignal"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzevm;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzevn;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzevn;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdh:Lcom/google/android/gms/internal/ads/zzbcv;

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
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsj;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/google/android/gms/internal/ads/zzevk;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzevk;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevm;->zzc:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/ads/zzber;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    sget-object v1, Lcom/google/android/gms/internal/ads/zzber;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    .line 85
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    .line 87
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzevl;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzevl;-><init>(Lcom/google/android/gms/internal/ads/zzevm;)V

    .line 94
    .line 95
    .line 96
    const-class v3, Ljava/lang/Exception;

    .line 97
    .line 98
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zze(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevn;

    .line 104
    .line 105
    const/4 v2, -0x1

    .line 106
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzevn;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method
