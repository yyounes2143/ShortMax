.class public final Lcom/google/android/gms/internal/ads/zzelv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzche;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzell;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhx;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcrp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzche;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzell;Lcom/google/android/gms/internal/ads/zzfcu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzc:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelv;->zza:Lcom/google/android/gms/internal/ads/zzfcu;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzy()Lcom/google/android/gms/internal/ads/zzfhx;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzell;->zzd()Lcom/google/android/gms/internal/ads/zzeky;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzw(Lcom/google/android/gms/internal/ads/zzeky;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzelv;)Lcom/google/android/gms/internal/ads/zzche;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzelv;)Lcom/google/android/gms/internal/ads/zzell;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzelv;)Lcom/google/android/gms/internal/ads/zzfhx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzelv;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzell;->zza()Lcom/google/android/gms/internal/ads/zzcwb;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x6

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcwb;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzelv;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzell;->zza()Lcom/google/android/gms/internal/ads/zzcwb;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcwb;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzf:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrp;->zzf()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelm;Lcom/google/android/gms/internal/ads/zzeln;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzc:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 19
    .line 20
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzA()Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelq;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzelq;-><init>(Lcom/google/android/gms/internal/ads/zzelv;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 41
    .line 42
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 43
    .line 44
    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzA()Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelr;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzelr;-><init>(Lcom/google/android/gms/internal/ads/zzelv;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 65
    .line 66
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfdt;->zza(Landroid/content/Context;Z)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzche;->zzk()Lcom/google/android/gms/internal/ads/zzdvi;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzdvi;->zzo(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzelp;

    .line 100
    .line 101
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzelp;->zza:I

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    new-instance p3, Landroid/util/Pair;

    .line 112
    .line 113
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-direct {p3, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Landroid/util/Pair;

    .line 127
    .line 128
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrr;->zzb:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    filled-new-array {p3, v1}, [Landroid/util/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdrt;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zza:Lcom/google/android/gms/internal/ads/zzfcu;

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzJ(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfcu;->zzB(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfcu;->zzD(I)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzL()Lcom/google/android/gms/internal/ads/zzfcw;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfht;->zzf(Lcom/google/android/gms/internal/ads/zzfcw;)I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    const/16 v1, 0x8

    .line 165
    .line 166
    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfhi;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfcw;->zzn:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 171
    .line 172
    if-eqz p3, :cond_4

    .line 173
    .line 174
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzell;->zzd()Lcom/google/android/gms/internal/ads/zzeky;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzeky;->zzm(Lcom/google/android/gms/ads/internal/client/zzco;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 184
    .line 185
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzche;->zzg()Lcom/google/android/gms/internal/ads/zzdha;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcvf;

    .line 190
    .line 191
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcvf;->zzl()Lcom/google/android/gms/internal/ads/zzcvh;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzf(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 205
    .line 206
    .line 207
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbu;

    .line 208
    .line 209
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzd:Lcom/google/android/gms/internal/ads/zzell;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzd()Lcom/google/android/gms/internal/ads/zzeky;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzche;->zzA()Ljava/util/concurrent/Executor;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdbu;->zzk(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzn()Lcom/google/android/gms/internal/ads/zzdbw;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zze(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzc()Lcom/google/android/gms/internal/ads/zzdgw;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 237
    .line 238
    .line 239
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcop;

    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(Landroid/view/ViewGroup;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzc(Lcom/google/android/gms/internal/ads/zzcop;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 246
    .line 247
    .line 248
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdha;->zzg()Lcom/google/android/gms/internal/ads/zzdhb;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbex;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 253
    .line 254
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    check-cast p2, Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_5

    .line 265
    .line 266
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdhb;->zzf()Lcom/google/android/gms/internal/ads/zzfhu;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzi(I)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 271
    .line 272
    .line 273
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 276
    .line 277
    .line 278
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 279
    .line 280
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 281
    .line 282
    .line 283
    move-object v6, p2

    .line 284
    goto :goto_1

    .line 285
    :cond_5
    move-object v6, v0

    .line 286
    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzche;->zzx()Lcom/google/android/gms/internal/ads/zzfdv;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfdv;->zzc(I)V

    .line 291
    .line 292
    .line 293
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcrp;

    .line 294
    .line 295
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzche;->zzB()Ljava/util/concurrent/ScheduledExecutorService;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdhb;->zza()Lcom/google/android/gms/internal/ads/zzcse;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcse;->zzi()Lcom/google/common/util/concurrent/e;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcse;->zzh(Lcom/google/common/util/concurrent/e;)Lcom/google/common/util/concurrent/e;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcrp;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/e;)V

    .line 316
    .line 317
    .line 318
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzf:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 319
    .line 320
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelu;

    .line 321
    .line 322
    move-object v3, p2

    .line 323
    move-object v4, p0

    .line 324
    move-object v5, p4

    .line 325
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzelu;-><init>(Lcom/google/android/gms/internal/ads/zzelv;Lcom/google/android/gms/internal/ads/zzeln;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzdhb;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrp;->zze(Lcom/google/android/gms/internal/ads/zzgdj;)V

    .line 329
    .line 330
    .line 331
    return v2
.end method
