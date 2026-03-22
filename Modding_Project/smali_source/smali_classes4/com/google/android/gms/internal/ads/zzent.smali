.class public final Lcom/google/android/gms/internal/ads/zzent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzbzs;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzb:Lcom/google/android/gms/appset/AppSetIdClient;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zze:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgdy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 27
    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent;->zze:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzent;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzent;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdh:Lcom/google/android/gms/internal/ads/zzbcv;

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
    const/4 v1, -0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdi:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

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
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsj;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzenq;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzenq;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zze:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfea;->zza(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 105
    .line 106
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_0
    if-nez v0, :cond_2

    .line 111
    .line 112
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenu;

    .line 113
    .line 114
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzenu;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsj;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/e;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/google/android/gms/internal/ads/zzenr;

    .line 127
    .line 128
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzenr;-><init>()V

    .line 129
    .line 130
    .line 131
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzdj:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 138
    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzdk:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 156
    .line 157
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Ljava/lang/Long;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzent;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 172
    .line 173
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    .line 175
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzens;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzens;-><init>(Lcom/google/android/gms/internal/ads/zzent;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzent;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 185
    .line 186
    const-class v3, Ljava/lang/Exception;

    .line 187
    .line 188
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zze(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_1
    return-object v0

    .line 193
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenu;

    .line 194
    .line 195
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzenu;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method
