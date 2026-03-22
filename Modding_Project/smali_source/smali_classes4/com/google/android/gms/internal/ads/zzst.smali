.class final Lcom/google/android/gms/internal/ads/zzst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztg;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# static fields
.field private static final zza:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MESSAGE_PARAMS_INSTANCE_POOL"
    .end annotation
.end field

.field private static final zzb:Ljava/lang/Object;


# instance fields
.field private final zzc:Landroid/media/MediaCodec;

.field private final zzd:Landroid/os/HandlerThread;

.field private zze:Landroid/os/Handler;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdm;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzst;->zza:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzst;->zzb:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdm;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdm;-><init>(Lcom/google/android/gms/internal/ads/zzdj;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzc:Landroid/media/MediaCodec;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzst;->zzd:Landroid/os/HandlerThread;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzg:Lcom/google/android/gms/internal/ads/zzdm;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzst;Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/os/Bundle;

    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzc:Landroid/media/MediaCodec;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-static {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzg:Lcom/google/android/gms/internal/ads/zzdm;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdm;->zzf()Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/zzss;

    .line 59
    .line 60
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzss;->zza:I

    .line 61
    .line 62
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/MediaCodec$CryptoInfo;

    .line 63
    .line 64
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzss;->zze:J

    .line 65
    .line 66
    iget v9, p1, Lcom/google/android/gms/internal/ads/zzss;->zzf:I

    .line 67
    .line 68
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzst;->zzb:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzst;->zzc:Landroid/media/MediaCodec;

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .line 85
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_0
    move-object v2, p1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lcom/google/android/gms/internal/ads/zzss;

    .line 93
    .line 94
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzss;->zza:I

    .line 95
    .line 96
    iget v6, p1, Lcom/google/android/gms/internal/ads/zzss;->zzc:I

    .line 97
    .line 98
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzss;->zze:J

    .line 99
    .line 100
    iget v9, p1, Lcom/google/android/gms/internal/ads/zzss;->zzf:I

    .line 101
    .line 102
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzst;->zzc:Landroid/media/MediaCodec;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_2
    move-exception v0

    .line 110
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .line 112
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :goto_1
    if-eqz v2, :cond_4

    .line 117
    .line 118
    sget-object p0, Lcom/google/android/gms/internal/ads/zzst;->zza:Ljava/util/ArrayDeque;

    .line 119
    .line 120
    monitor-enter p0

    .line 121
    :try_start_5
    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    throw p1

    .line 129
    :cond_4
    return-void
.end method

.method private static zzi()Lcom/google/android/gms/internal/ads/zzss;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzst;->zza:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzss;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzss;-><init>()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/zzss;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method private static zzj([B[B)[B
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    array-length v1, p1

    .line 8
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_2
    :goto_0
    array-length p1, p0

    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static zzk([I[I)[I
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    array-length v1, p1

    .line 8
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_2
    :goto_0
    array-length p1, p0

    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzg:Lcom/google/android/gms/internal/ads/zzdm;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzd()Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zza()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    throw v1

    .line 37
    :cond_1
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_2
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    throw v0
.end method

.method public final zzd(IIIJI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzst;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzst;->zzi()Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v2, 0x0

    .line 9
    move-object v0, p2

    .line 10
    move v1, p1

    .line 11
    move v3, p3

    .line 12
    move-wide v4, p4

    .line 13
    move v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzss;->zza(IIIJI)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 18
    .line 19
    sget-object p3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p3, 0x1

    .line 22
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final zze(IILcom/google/android/gms/internal/ads/zzhp;JI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzst;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzst;->zzi()Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p2

    .line 11
    move v1, p1

    .line 12
    move-wide v4, p4

    .line 13
    move v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzss;->zza(IIIJI)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/MediaCodec$CryptoInfo;

    .line 18
    .line 19
    iget p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzf:I

    .line 20
    .line 21
    iput p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 22
    .line 23
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzd:[I

    .line 24
    .line 25
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 26
    .line 27
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzst;->zzk([I[I)[I

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 32
    .line 33
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zze:[I

    .line 34
    .line 35
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 36
    .line 37
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzst;->zzk([I[I)[I

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 42
    .line 43
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzb:[B

    .line 44
    .line 45
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 46
    .line 47
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzst;->zzj([B[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 55
    .line 56
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zza:[B

    .line 57
    .line 58
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 59
    .line 60
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzst;->zzj([B[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 68
    .line 69
    iget p4, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzc:I

    .line 70
    .line 71
    iput p4, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 72
    .line 73
    new-instance p4, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 74
    .line 75
    iget p5, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzg:I

    .line 76
    .line 77
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzhp;->zzh:I

    .line 78
    .line 79
    invoke-direct {p4, p5, p3}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p4}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 86
    .line 87
    sget-object p3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 88
    .line 89
    const/4 p3, 0x2

    .line 90
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzst;->zzc()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzst;->zzb()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzd:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzh:Z

    .line 15
    .line 16
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzh:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzd:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsr;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(Lcom/google/android/gms/internal/ads/zzst;Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzst;->zze:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzh:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method
