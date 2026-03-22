.class final Lcom/google/android/gms/internal/ads/zzezn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfej;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcve;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzezl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzcve;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezn;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzc:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzezn;)Lcom/google/android/gms/internal/ads/zzezl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzd:Lcom/google/android/gms/internal/ads/zzezl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzezn;)Lcom/google/android/gms/internal/ads/zzfet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzezn;->zze()Lcom/google/android/gms/internal/ads/zzfet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzezn;Lcom/google/android/gms/internal/ads/zzezl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzd:Lcom/google/android/gms/internal/ads/zzezl;

    .line 2
    .line 3
    return-void
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzfet;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcve;->zzf()Lcom/google/android/gms/internal/ads/zzfcw;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzezn;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 14
    .line 15
    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzd:Lcom/google/android/gms/internal/ads/zzezl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfl;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

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
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezl;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzezn;->zze()Lcom/google/android/gms/internal/ads/zzfet;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzezl;-><init>(Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzezm;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzd:Lcom/google/android/gms/internal/ads/zzezl;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezn;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcve;->zzb()Lcom/google/android/gms/internal/ads/zzcse;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfej;->zza()Lcom/google/android/gms/internal/ads/zzfeq;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcse;->zzf(Lcom/google/android/gms/internal/ads/zzfeq;)Lcom/google/common/util/concurrent/e;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgde;->zzw(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgde;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezk;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzezk;-><init>(Lcom/google/android/gms/internal/ads/zzezn;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzc:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgde;

    .line 68
    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezj;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzezj;-><init>(Lcom/google/android/gms/internal/ads/zzezn;)V

    .line 72
    .line 73
    .line 74
    const-class v3, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 75
    .line 76
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zze(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgde;

    .line 81
    .line 82
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezi;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzezi;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzc:Ljava/util/concurrent/Executor;

    .line 88
    .line 89
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
