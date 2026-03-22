.class public final Lcom/google/android/gms/internal/ads/zzdyo;
.super Lcom/google/android/gms/internal/ads/zzdyi;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zzg:Ljava/lang/String;

.field private zzh:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyi;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzv()Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuv;

    .line 16
    .line 17
    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzbuv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzf:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzd:Z

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzf:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbuv;->zzp()Lcom/google/android/gms/internal/ads/zzbve;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zze:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 23
    .line 24
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zznp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyh;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zze:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 47
    .line 48
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyh;-><init>(Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyg;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdyg;-><init>(Lcom/google/android/gms/internal/ads/zzdyi;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbve;->zze(Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzbvi;)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_1
    const/4 v2, 0x3

    .line 64
    if-ne v1, v2, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzf:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbuv;->zzp()Lcom/google/android/gms/internal/ads/zzbve;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzg:Ljava/lang/String;

    .line 73
    .line 74
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zznp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 75
    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyh;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zze:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 97
    .line 98
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyh;-><init>(Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyg;

    .line 103
    .line 104
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdyg;-><init>(Lcom/google/android/gms/internal/ads/zzdyi;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbve;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvi;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 112
    .line 113
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 127
    .line 128
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 132
    .line 133
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    goto :goto_4

    .line 144
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 145
    .line 146
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 147
    .line 148
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_3
    monitor-exit p1

    .line 155
    return-void

    .line 156
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    if-eq v1, v3, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 13
    .line 14
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzc:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object p1

    .line 33
    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzc:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zze:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzf:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdym;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(Lcom/google/android/gms/internal/ads/zzdyo;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcak;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object p1

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v1, v3, :cond_0

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdyx;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    monitor-exit v0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzc:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-object p1

    .line 34
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzh:I

    .line 35
    .line 36
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzc:Z

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzg:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zzf:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyn;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdyn;-><init>(Lcom/google/android/gms/internal/ads/zzdyo;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcak;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-object p1

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1
.end method
