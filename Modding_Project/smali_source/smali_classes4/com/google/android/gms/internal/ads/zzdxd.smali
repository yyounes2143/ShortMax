.class public final Lcom/google/android/gms/internal/ads/zzdxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdxd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdxd;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzavu;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/zzchl;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchl;->zza()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcvp;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcvp;->zzc()Lcom/google/android/gms/internal/ads/zzfcw;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbde;->zzcX:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, -0x1

    .line 58
    if-eq v6, v7, :cond_0

    .line 59
    .line 60
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 61
    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    sub-long/2addr v6, v3

    .line 89
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzcZ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 90
    .line 91
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-long v2, v2

    .line 106
    cmp-long v2, v6, v2

    .line 107
    .line 108
    if-gez v2, :cond_1

    .line 109
    .line 110
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdww;

    .line 111
    .line 112
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(Lcom/google/android/gms/internal/ads/zzavu;Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwx;

    .line 121
    .line 122
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdwx;-><init>(Lcom/google/android/gms/internal/ads/zzavu;Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-object v0
.end method
