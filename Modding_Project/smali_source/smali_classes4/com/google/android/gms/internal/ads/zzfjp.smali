.class public final Lcom/google/android/gms/internal/ads/zzfjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzgdz;Lcom/google/android/gms/internal/ads/zzfjq;)V
    .locals 0
    .param p4    # Lcom/google/android/gms/internal/ads/zzfjq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzc:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzd:Lcom/google/android/gms/internal/ads/zzfjq;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzfjp;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjp;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjp;IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 2
    .line 3
    if-eq p5, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    .line 11
    .line 12
    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzb()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq p1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zza()D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-double p2, p2

    .line 25
    mul-double/2addr v0, p2

    .line 26
    double-to-long v0, v0

    .line 27
    :cond_1
    add-int/2addr p1, v2

    .line 28
    invoke-direct {p0, p4, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfjp;->zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/e;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    return-object p0
.end method

.method private final zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-le p4, v1, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzd:Lcom/google/android/gms/internal/ads/zzfjq;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzd()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const-string p3, ""

    .line 20
    .line 21
    const/4 p4, 0x2

    .line 22
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    return-object p1

    .line 39
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zziW:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "pa"

    .line 78
    .line 79
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "&"

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move-object v0, p1

    .line 112
    :goto_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfjo;

    .line 113
    .line 114
    move-object v1, v7

    .line 115
    move-object v2, p0

    .line 116
    move v3, p4

    .line 117
    move-wide v4, p2

    .line 118
    move-object v6, p1

    .line 119
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfjo;-><init>(Lcom/google/android/gms/internal/ads/zzfjp;IJLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v1, 0x0

    .line 123
    .line 124
    cmp-long p1, p2, v1

    .line 125
    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzc:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 129
    .line 130
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjn;

    .line 131
    .line 132
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfjn;-><init>(Lcom/google/android/gms/internal/ads/zzfjp;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2, v7, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzc:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 145
    .line 146
    new-instance p4, Lcom/google/android/gms/internal/ads/zzfjm;

    .line 147
    .line 148
    invoke-direct {p4, p0, v0}, Lcom/google/android/gms/internal/ads/zzfjm;-><init>(Lcom/google/android/gms/internal/ads/zzfjp;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    .line 153
    invoke-interface {p1, p4, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgdz;->zzc(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzgdx;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2, v7, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjp;->zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p1

    .line 9
    :catch_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
