.class public final Lcom/google/android/gms/internal/ads/zzaxl;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzayl;


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzasp;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzh:Lcom/google/android/gms/internal/ads/zzayl;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzasp;Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const-string v3, "rfz55QLsxMWzB2XqDjYWCElC2tXCWyMh5Hq3cP2KfWk="

    .line 3
    .line 4
    const/16 v6, 0x1b

    .line 5
    .line 6
    const-string v2, "5l2BxulTXy+0Wovy9T0xreNvMgccuxz9Mfzqj2nIzDWreku9cf/hyHYbFP2gke7n"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 13
    .line 14
    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxl;->zzj:Landroid/content/Context;

    .line 17
    .line 18
    move-object/from16 v0, p9

    .line 19
    .line 20
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxl;->zzi:Lcom/google/android/gms/internal/ads/zzasp;

    .line 21
    .line 22
    move-object/from16 v0, p10

    .line 23
    .line 24
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxl;->zzk:Lcom/google/android/gms/internal/ads/zzaup;

    .line 25
    .line 26
    return-void
.end method

.method private final zzc()Lcom/google/android/gms/internal/ads/zzaum;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcW:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzi:Lcom/google/android/gms/internal/ads/zzasp;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zza()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzj:Landroid/content/Context;

    .line 45
    .line 46
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaum;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaum;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzk:Lcom/google/android/gms/internal/ads/zzaup;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zza()Lcom/google/common/util/concurrent/e;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zza()Lcom/google/common/util/concurrent/e;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    int-to-long v3, v0

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    invoke-interface {v1, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    :cond_1
    const-string v0, "E"

    .line 91
    .line 92
    :goto_1
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 93
    .line 94
    return-object v2
.end method

.method private final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzk()Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzk()Ljava/util/concurrent/Future;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzc()Lcom/google/android/gms/internal/ads/zzatq;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatq;->zzaf()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatq;->zzg()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method


# virtual methods
.method protected final zza()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzh:Lcom/google/android/gms/internal/ads/zzayl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzj:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzayl;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/zzaum;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 31
    .line 32
    const-string v4, "E"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_a

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    const/4 v3, 0x5

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move v3, v4

    .line 68
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzk:Lcom/google/android/gms/internal/ads/zzaup;

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzc()Lcom/google/android/gms/internal/ads/zzaum;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_2
    const/4 v5, 0x0

    .line 79
    if-ne v3, v4, :cond_3

    .line 80
    .line 81
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzi:Lcom/google/android/gms/internal/ads/zzasp;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzd()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbde;->zzcK:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Ljava/lang/Boolean;

    .line 105
    .line 106
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzcJ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 107
    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzb()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move-object v7, v2

    .line 130
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_5

    .line 135
    .line 136
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawx;->zzo()Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_5

    .line 149
    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzd()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 155
    .line 156
    filled-new-array {v1, v5, v7}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 165
    .line 166
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaum;

    .line 167
    .line 168
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzaum;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_6

    .line 178
    .line 179
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 180
    .line 181
    const-string v6, "E"

    .line 182
    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 190
    .line 191
    if-eq v3, v4, :cond_8

    .line 192
    .line 193
    const/4 v1, 0x4

    .line 194
    if-eq v3, v1, :cond_7

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    throw v2

    .line 198
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzd()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxa;->zzd(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_9

    .line 207
    .line 208
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 209
    .line 210
    :cond_9
    :goto_3
    move-object v1, v5

    .line 211
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaum;

    .line 219
    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 222
    .line 223
    monitor-enter v2

    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaum;->zza:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 229
    .line 230
    .line 231
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaum;->zzb:J

    .line 232
    .line 233
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzast;->zzV(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 234
    .line 235
    .line 236
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaum;->zzc:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzX(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 239
    .line 240
    .line 241
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaum;->zzd:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 244
    .line 245
    .line 246
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaum;->zze:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    goto :goto_6

    .line 254
    :cond_b
    :goto_5
    monitor-exit v2

    .line 255
    return-void

    .line 256
    :goto_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    throw v0

    .line 258
    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    throw v1
.end method

.method protected final zzb()Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "X.509"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzcL:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxa;->zzf(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "user"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzcM:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxa;->zzf(Ljava/lang/String;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 68
    .line 69
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzj:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawx;->zzj()Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v3, 0x1e

    .line 93
    .line 94
    if-gt v2, v3, :cond_1

    .line 95
    .line 96
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 97
    .line 98
    const-string v3, "S"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeh;->zze()Lcom/google/android/gms/internal/ads/zzgeh;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaym;

    .line 116
    .line 117
    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Lcom/google/android/gms/internal/ads/zzgeh;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    const/16 v6, 0x8

    .line 122
    .line 123
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgcb;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    move-object v0, v1

    .line 133
    :catch_0
    :goto_0
    return-object v0
.end method
