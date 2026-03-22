.class public abstract Lcom/google/android/gms/internal/play_billing/zzcj;
.super Lcom/google/android/gms/internal/play_billing/zzck;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_billing/zzck<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzck;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzr(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;->zzc:Ljava/lang/Throwable;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzck;->zzb:Lcom/google/android/gms/internal/play_billing/zzcy;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcy;->zza()Ljava/util/logging/Logger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 22
    .line 23
    const-string v1, "com.google.common.util.concurrent.AbstractFuture"

    .line 24
    .line 25
    const-string v2, "getDoneValue"

    .line 26
    .line 27
    const-string v3, "Failure.exception is unexpectedly null."

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;->zzc:Ljava/lang/Throwable;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zza:Ljava/lang/Object;

    .line 49
    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    :cond_2
    return-object p0

    .line 54
    :cond_3
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzd:Ljava/lang/Throwable;

    .line 57
    .line 58
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 59
    .line 60
    const-string v1, "Task was cancelled."

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzu(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static zzh(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private static zzr(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 2
    .line 3
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zze;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzc:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzd:Ljava/lang/Throwable;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 28
    .line 29
    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/play_billing/zzcj$zza;-><init>(ZLjava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    move-object p0, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/zzdf;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    move-object v1, p0

    .line 45
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdf;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdf;->zze()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/zzck;->zzc:Z

    .line 65
    .line 66
    xor-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    and-int/2addr v3, v1

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 72
    .line 73
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzcj$zza;-><init>(ZLjava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    return-object v3

    .line 113
    :catch_0
    move-exception p0

    .line 114
    goto :goto_2

    .line 115
    :catch_1
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :catch_2
    move-exception v0

    .line 118
    goto :goto_3

    .line 119
    :catch_3
    move-exception v3

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    if-nez v3, :cond_7

    .line 122
    .line 123
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzck;->zza:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    :cond_7
    return-object v3

    .line 126
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :goto_3
    if-nez v1, :cond_8

    .line 133
    .line 134
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    .line 143
    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 156
    .line 157
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzcj$zza;-><init>(ZLjava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :goto_4
    if-eqz v1, :cond_9

    .line 162
    .line 163
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 164
    .line 165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzcj$zza;-><init>(ZLjava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    return-object p0
.end method

.method private static zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 25
    .line 26
    .line 27
    :goto_1
    throw p0

    .line 28
    :catch_0
    const/4 v0, 0x1

    .line 29
    goto :goto_0
.end method

.method private final zzt(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "SUCCESS, result=["

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "null"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :catch_1
    move-exception v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-ne v1, p0, :cond_1

    .line 25
    .line 26
    const-string v1, "this future"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "@"

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    const-string v1, "UNKNOWN, cause=["

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " thrown from get()]"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_2
    const-string v0, "CANCELLED"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_2
    const-string v2, "FAILURE, cause=["

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private static zzu(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzo()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzg()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzk(Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    move-object v2, p1

    .line 15
    move-object p1, p0

    .line 16
    move-object p0, v2

    .line 17
    :goto_1
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 20
    .line 21
    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 22
    .line 23
    move-object p0, p1

    .line 24
    move-object p1, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_2
    if-eqz p0, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->zzb:Ljava/lang/Runnable;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    check-cast p1, Ljava/lang/Runnable;

    .line 36
    .line 37
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 42
    .line 43
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 46
    .line 47
    if-ne v1, p1, :cond_2

    .line 48
    .line 49
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzr(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    move-object p1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->zzc:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object p0, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    return-void
.end method

.method private static zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v5

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzb:Lcom/google/android/gms/internal/play_billing/zzcy;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcy;->zza()Ljava/util/logging/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "RuntimeException while executing runnable "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " with executor "

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    .line 48
    .line 49
    const-string v3, "executeListener"

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v4, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v2

    .line 12
    :goto_0
    or-int/2addr v1, v4

    .line 13
    if-eqz v1, :cond_8

    .line 14
    .line 15
    sget-boolean v1, Lcom/google/android/gms/internal/play_billing/zzck;->zzc:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 20
    .line 21
    new-instance v4, Ljava/util/concurrent/CancellationException;

    .line 22
    .line 23
    const-string v5, "Future.cancel() was called."

    .line 24
    .line 25
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzcj$zza;-><init>(ZLjava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zza:Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 38
    .line 39
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :goto_2
    move-object v4, p0

    .line 43
    move v5, v2

    .line 44
    :cond_3
    :goto_3
    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_7

    .line 49
    .line 50
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzu(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V

    .line 51
    .line 52
    .line 53
    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 54
    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 60
    .line 61
    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zze;

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    move-object v4, v0

    .line 66
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 67
    .line 68
    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    move v5, v3

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    move v5, v2

    .line 75
    :goto_4
    instance-of v6, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 76
    .line 77
    or-int/2addr v5, v6

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    move v5, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    :goto_5
    move v2, v3

    .line 83
    goto :goto_6

    .line 84
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 85
    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_7
    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    move v2, v5

    .line 97
    :cond_8
    :goto_6
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzck;->zzm(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 4
    .line 5
    return v0
.end method

.method public final isDone()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    and-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "com.google.common.util.concurrent."

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :goto_0
    const/16 v1, 0x40

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "[status="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 67
    .line 68
    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 69
    .line 70
    const-string v2, "]"

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const-string v1, "CANCELLED"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->isDone()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzt(Ljava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const-string v3, "PENDING"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 102
    .line 103
    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 104
    .line 105
    const-string v5, "Exception thrown from implementation: "

    .line 106
    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    const-string v4, ", setFuture=["

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 117
    .line 118
    if-ne v3, p0, :cond_3

    .line 119
    .line 120
    :try_start_0
    const-string v3, "this future"

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v3

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzd()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const/4 v4, 0x0

    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    if-eqz v5, :cond_6

    .line 161
    .line 162
    :cond_5
    move-object v3, v4

    .line 163
    goto :goto_3

    .line 164
    :catchall_1
    move-exception v3

    .line 165
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 181
    .line 182
    const-string v4, ", info=["

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->isDone()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzt(Ljava/lang/StringBuilder;)V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0
.end method

.method public final zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    const-string v0, "Executor was null."

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzbg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcj;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzp(Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    .line 34
    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected zzd()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method protected final zze()Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zze;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;->zzc:Ljava/lang/Throwable;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method protected zzg()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final zzi(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzu(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    return v0
.end method

.method protected final zzj(Lcom/google/android/gms/internal/play_billing/zzcz;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzr(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzu(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzcj;Lcom/google/android/gms/internal/play_billing/zzcz;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcj$zzc;->zza:Lcom/google/android/gms/internal/play_billing/zzcj$zzc;

    .line 54
    .line 55
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    return v2

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 60
    .line 61
    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 66
    .line 67
    iget-boolean v0, v0, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzc:Z

    .line 68
    .line 69
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    .line 71
    .line 72
    :cond_4
    return v1
.end method
