.class final Lcom/google/android/gms/measurement/internal/zzmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    .line 8
    .line 9
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zze:Z

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzf:Lcom/google/android/gms/measurement/internal/zznl;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzf:Lcom/google/android/gms/measurement/internal/zznl;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzZ()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    .line 24
    .line 25
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_5

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    goto :goto_4

    .line 48
    :catch_0
    move-exception v2

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    .line 57
    .line 58
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Ljava/lang/String;

    .line 64
    .line 65
    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zze:Z

    .line 66
    .line 67
    invoke-interface {v3, v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Ljava/lang/String;

    .line 78
    .line 79
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zze:Z

    .line 80
    .line 81
    invoke-interface {v3, v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzV()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzf:Lcom/google/android/gms/measurement/internal/zznl;

    .line 98
    .line 99
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "(legacy) Failed to get user properties; remote exception"

    .line 110
    .line 111
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .line 124
    .line 125
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_3
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    throw v1
.end method
