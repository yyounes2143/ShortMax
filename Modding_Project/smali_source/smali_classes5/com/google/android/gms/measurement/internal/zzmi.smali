.class final Lcom/google/android/gms/measurement/internal/zzmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zznl;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zznl;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhh;->zzl()Lcom/google/android/gms/measurement/internal/zzjl;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "Analytics storage consent denied; will not get app instance id"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzj()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zzR(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zze:Lcom/google/android/gms/measurement/internal/zzhg;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 60
    .line 61
    .line 62
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto :goto_4

    .line 66
    :catchall_1
    move-exception v1

    .line 67
    goto :goto_3

    .line 68
    :catch_0
    move-exception v1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->zzZ()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "Failed to get app instance id"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 90
    .line 91
    .line 92
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 95
    .line 96
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzj()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zzR(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhh;->zze:Lcom/google/android/gms/measurement/internal/zzhg;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->zzV()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .line 134
    .line 135
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    .line 137
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_1
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zznl;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "Failed to get app instance id"

    .line 154
    .line 155
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 156
    .line 157
    .line 158
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :goto_2
    monitor-exit v0

    .line 162
    return-void

    .line 163
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    throw v1
.end method
