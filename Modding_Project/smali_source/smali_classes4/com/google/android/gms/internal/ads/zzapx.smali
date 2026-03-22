.class public final Lcom/google/android/gms/internal/ads/zzapx;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzapw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzapn;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzapu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzb:Lcom/google/android/gms/internal/ads/zzapw;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzapn;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzapu;

    .line 14
    .line 15
    return-void
.end method

.method private zzb()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqd;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzt(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    :try_start_0
    const-string v2, "network-queue-take"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzw()Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzc()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzb:Lcom/google/android/gms/internal/ads/zzapw;

    .line 33
    .line 34
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzapw;->zza(Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzapz;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "network-http-complete"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzapz;->zze:Z

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzv()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const-string v2, "not-modified"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzp(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzr()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception v2

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v2

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzh(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqj;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "network-parse-complete"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zzb:Lcom/google/android/gms/internal/ads/zzapm;

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzapn;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzj()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapm;)V

    .line 88
    .line 89
    .line 90
    const-string v3, "network-cache-written"

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzq()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzapu;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzapu;->zzb(Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqj;Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzs(Lcom/google/android/gms/internal/ads/zzaqj;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaqm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_0
    :try_start_1
    const-string v3, "Unhandled exception %s"

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqp;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqm;

    .line 122
    .line 123
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaqm;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzapu;

    .line 130
    .line 131
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzapu;->zza(Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqm;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzr()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzapu;

    .line 142
    .line 143
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zza(Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqm;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzr()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzt(I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzt(I)V

    .line 154
    .line 155
    .line 156
    throw v2
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapx;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
