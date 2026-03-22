.class public final Lcom/google/android/gms/internal/ads/zzewt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbzs;

.field private final zzb:Z

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zze:I

.field private final zzf:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzs;ZLcom/google/android/gms/internal/ads/zzbzh;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewt;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzewt;->zze:I

    .line 13
    .line 14
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzf:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzewt;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzewu;
    .locals 1

    .line 1
    const-string v0, "TrustlessTokenSignal"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewt;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzewu;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzewu;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzhk:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewu;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzewu;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzf:I

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v0, v2, :cond_3

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzhm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, ","

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzewt;->zze:I

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewu;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzewu;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/google/android/gms/internal/ads/zzewr;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewr;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfs;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    .line 113
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    .line 115
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Lcom/google/android/gms/internal/ads/zzews;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzews;-><init>(Lcom/google/android/gms/internal/ads/zzewt;)V

    .line 122
    .line 123
    .line 124
    const-class v3, Ljava/lang/Exception;

    .line 125
    .line 126
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zze(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0

    .line 131
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewu;

    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzewu;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method
