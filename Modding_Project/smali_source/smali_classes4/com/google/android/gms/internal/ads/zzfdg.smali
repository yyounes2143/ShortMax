.class final Lcom/google/android/gms/internal/ads/zzfdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfg;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcmq;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjy;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzeca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzb:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzd:Lcom/google/android/gms/internal/ads/zzeca;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzD()Lcom/google/android/gms/internal/ads/zzfca;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzai:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzkx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzb:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcmq;->zzj(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcmq;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfjy;Ljava/util/Random;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v4, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzfjy;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzcyi;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzR()Lcom/google/android/gms/internal/ads/zzfcd;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v0, "Common configuration cannot be null"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "BufferingGmsgHandlers.getBufferingClickGmsgHandler"

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzecc;

    .line 87
    .line 88
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzA(Landroid/content/Context;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzgx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 109
    .line 110
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    const/4 v7, 0x1

    .line 125
    const/4 v8, 0x0

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzS:Z

    .line 131
    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    move v5, v7

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    move v5, v8

    .line 137
    :goto_0
    if-eqz v0, :cond_4

    .line 138
    .line 139
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzad:Lcom/google/android/gms/internal/ads/zzbtw;

    .line 140
    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    move v8, v7

    .line 144
    :cond_4
    const/4 v0, 0x2

    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    if-nez v5, :cond_5

    .line 148
    .line 149
    if-eqz v8, :cond_6

    .line 150
    .line 151
    :cond_5
    move v5, v0

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    move v5, v7

    .line 154
    :goto_1
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 155
    .line 156
    move-object v0, v6

    .line 157
    move-wide v1, v2

    .line 158
    move-object v3, p1

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzecc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zzd:Lcom/google/android/gms/internal/ads/zzeca;

    .line 163
    .line 164
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzeca;->zzd(Lcom/google/android/gms/internal/ads/zzecc;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method
