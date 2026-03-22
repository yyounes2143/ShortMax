.class public final Lcom/google/android/gms/internal/ads/zzfhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static zzb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "enabledLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfic;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "protoLock"
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdpw;

.field private final zzk:Ljava/util/List;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zzm:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "initLock"
    .end annotation
.end field

.field private final zzn:Lcom/google/android/gms/internal/ads/zzbvy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zzc:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zzd:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdpw;Lcom/google/android/gms/internal/ads/zzeag;Lcom/google/android/gms/internal/ads/zzbvy;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfig;->zzb()Lcom/google/android/gms/internal/ads/zzfic;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzg:Lcom/google/android/gms/internal/ads/zzfic;

    .line 9
    .line 10
    const-string p4, ""

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzh:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzm:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zze:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzj:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzn:Lcom/google/android/gms/internal/ads/zzbvy;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 26
    .line 27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzjk:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzd()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzk:Ljava/util/List;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzk:Ljava/util/List;

    .line 57
    .line 58
    return-void
.end method

.method public static zza()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhx;->zzb:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbex;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhx;->zzb:Ljava/lang/Boolean;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbex;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Double;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmpg-double v1, v3, v1

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhx;->zzb:Ljava/lang/Boolean;

    .line 57
    .line 58
    :cond_2
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhx;->zzb:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    monitor-exit v0

    .line 65
    return v1

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzfhn;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzm:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzm:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zze:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    .line 46
    .line 47
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zze:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzi:I

    .line 61
    .line 62
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjf:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzmo:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 79
    .line 80
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaf;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 97
    .line 98
    int-to-long v7, v1

    .line 99
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    .line 101
    move-object v4, p0

    .line 102
    move-wide v5, v7

    .line 103
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    .line 109
    int-to-long v5, v1

    .line 110
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 111
    .line 112
    move-object v1, v2

    .line 113
    move-object v2, p0

    .line 114
    move-wide v3, v5

    .line 115
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 116
    .line 117
    .line 118
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgz;->zzc()V

    .line 139
    .line 140
    .line 141
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_4
    if-eqz p1, :cond_9

    .line 151
    .line 152
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zzc:Ljava/lang/Object;

    .line 153
    .line 154
    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzg:Lcom/google/android/gms/internal/ads/zzfic;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfic;->zza()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzjg:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-lt v2, v3, :cond_5

    .line 178
    .line 179
    monitor-exit v0

    .line 180
    return-void

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfib;->zza()Lcom/google/android/gms/internal/ads/zzfhy;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzm()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzw(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzl()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzs(Z)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb()J

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhy;->zzh(J)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 207
    .line 208
    .line 209
    const/4 v3, 0x3

    .line 210
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzy(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 211
    .line 212
    .line 213
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 214
    .line 215
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzh:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 223
    .line 224
    .line 225
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 228
    .line 229
    .line 230
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzt(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzo()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzx(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zza()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzk(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 247
    .line 248
    .line 249
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzi:I

    .line 250
    .line 251
    int-to-long v3, v3

    .line 252
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhy;->zzf(J)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzn()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzv(I)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zze()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzg()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzh()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 281
    .line 282
    .line 283
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzj:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzh()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpw;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzi()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzd()Lcom/google/android/gms/internal/ads/zzfhz;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzo(Lcom/google/android/gms/internal/ads/zzfhz;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzf()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzk()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzj()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzc()J

    .line 332
    .line 333
    .line 334
    move-result-wide v3

    .line 335
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhy;->zzr(J)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 336
    .line 337
    .line 338
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzjk:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 339
    .line 340
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Ljava/lang/Boolean;

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-eqz p1, :cond_6

    .line 355
    .line 356
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzk:Ljava/util/List;

    .line 357
    .line 358
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfhy;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 359
    .line 360
    .line 361
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzjl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 362
    .line 363
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Ljava/lang/Boolean;

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_8

    .line 378
    .line 379
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgz;->zza()Lcom/google/android/gms/internal/ads/zzhcs;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgz;->zzb()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    if-eqz p1, :cond_7

    .line 390
    .line 391
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfhy;->zze(Lcom/google/android/gms/internal/ads/zzhcs;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 392
    .line 393
    .line 394
    :cond_7
    if-eqz p0, :cond_8

    .line 395
    .line 396
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzfhy;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhy;

    .line 397
    .line 398
    .line 399
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfie;->zza()Lcom/google/android/gms/internal/ads/zzfid;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfid;->zza(Lcom/google/android/gms/internal/ads/zzfhy;)Lcom/google/android/gms/internal/ads/zzfid;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfic;->zzb(Lcom/google/android/gms/internal/ads/zzfid;)Lcom/google/android/gms/internal/ads/zzfic;

    .line 407
    .line 408
    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 411
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 412
    throw p0

    .line 413
    :cond_9
    :goto_5
    return-void

    .line 414
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhx;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzg:Lcom/google/android/gms/internal/ads/zzfic;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfic;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzg:Lcom/google/android/gms/internal/ads/zzfic;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfig;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaV()[B

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfic;->zzc()Lcom/google/android/gms/internal/ads/zzfic;

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    .line 42
    .line 43
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzje:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v4, v1

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    new-instance v6, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v8, "application/x-protobuf"

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const v5, 0xea60

    .line 65
    .line 66
    .line 67
    move-object v3, v0

    .line 68
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzead;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zze:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhx;->zzn:Lcom/google/android/gms/internal/ads/zzbvy;

    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeaf;

    .line 84
    .line 85
    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvy;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzeaf;->zzb(Lcom/google/android/gms/internal/ads/zzead;)Lcom/google/android/gms/internal/ads/zzeae;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception v1

    .line 95
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 97
    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    move-object v1, v0

    .line 102
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwm;->zza()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v2, 0x3

    .line 109
    if-eq v1, v2, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_1
    return-void

    .line 113
    :cond_3
    :goto_2
    const-string v1, "CuiMonitor.sendCuiPing"

    .line 114
    .line 115
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 124
    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzfhn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhw;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfhw;-><init>(Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    return-void
.end method
