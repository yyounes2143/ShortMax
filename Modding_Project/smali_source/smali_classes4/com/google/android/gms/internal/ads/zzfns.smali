.class public final Lcom/google/android/gms/internal/ads/zzfns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfns;

.field private static final zzb:Landroid/os/Handler;

.field private static zzc:Landroid/os/Handler;

.field private static final zzd:Ljava/lang/Runnable;

.field private static final zze:Ljava/lang/Runnable;


# instance fields
.field private final zzf:Ljava/util/List;

.field private zzg:I

.field private zzh:Z

.field private final zzi:Ljava/util/List;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfmv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfnl;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfnm;

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfns;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfns;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zza:Lcom/google/android/gms/internal/ads/zzfns;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzb:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfno;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfno;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzd:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnp;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnp;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zze:Ljava/lang/Runnable;

    .line 35
    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzf:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzh:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzi:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmv;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmv;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzj:Lcom/google/android/gms/internal/ads/zzfmv;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnm;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfnv;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfnv;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnm;-><init>(Lcom/google/android/gms/internal/ads/zzfnv;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzl:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 46
    .line 47
    return-void
.end method

.method static bridge synthetic zzb()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfns;)Lcom/google/android/gms/internal/ads/zzfnm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzl:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 2
    .line 3
    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfns;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zza:Lcom/google/android/gms/internal/ads/zzfns;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zze()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zze:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzf()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzd:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfns;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzg:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzi:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzh:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmi;->zza()Lcom/google/android/gms/internal/ads/zzfmi;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmi;->zzb()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/ads/zzflp;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzm:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzj:Lcom/google/android/gms/internal/ads/zzfmv;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfmv;->zza()Lcom/google/android/gms/internal/ads/zzfmu;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zze()Ljava/util/HashSet;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zze()Ljava/util/HashSet;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzfmu;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfnl;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfmv;->zzb()Lcom/google/android/gms/internal/ads/zzfmu;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    if-eqz v11, :cond_1

    .line 105
    .line 106
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/zzfmu;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/zzfne;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    const-string v10, "notVisibleReason"

    .line 114
    .line 115
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception v10

    .line 120
    const-string v11, "Error with setting not visible reason"

    .line 121
    .line 122
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfne;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfne;->zzf(Lorg/json/JSONObject;)V

    .line 129
    .line 130
    .line 131
    new-instance v9, Ljava/util/HashSet;

    .line 132
    .line 133
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzl:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 140
    .line 141
    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzfnm;->zzc(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzf()Ljava/util/HashSet;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-lez v3, :cond_3

    .line 156
    .line 157
    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzfmu;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const/4 v8, 0x1

    .line 162
    const/4 v9, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    move-object v4, p0

    .line 165
    move-object v7, v3

    .line 166
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfns;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmu;Lorg/json/JSONObject;IZ)V

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfne;->zzf(Lorg/json/JSONObject;)V

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzl:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzf()Ljava/util/HashSet;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v4, v3, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzfnm;->zzd(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzl:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb()V

    .line 185
    .line 186
    .line 187
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzg()V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 191
    .line 192
    .line 193
    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzm:J

    .line 195
    .line 196
    sub-long/2addr v0, v2

    .line 197
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzf:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-lez v2, :cond_5

    .line 204
    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_5

    .line 214
    .line 215
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfnr;

    .line 220
    .line 221
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 222
    .line 223
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 224
    .line 225
    .line 226
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()V

    .line 227
    .line 228
    .line 229
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzfnq;

    .line 230
    .line 231
    if-eqz v3, :cond_4

    .line 232
    .line 233
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfnq;

    .line 234
    .line 235
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfnq;->zza()V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfms;->zza()Lcom/google/android/gms/internal/ads/zzfms;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfms;->zzc()V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method private final zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmu;Lorg/json/JSONObject;IZ)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    :goto_0
    move v5, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :goto_1
    move-object v1, p2

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p0

    .line 12
    move v6, p5

    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfmu;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfmt;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final zzl()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfns;->zze:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmu;Lorg/json/JSONObject;Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnj;->zza(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzl(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v5, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfmu;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/ads/zzfne;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzd(Landroid/view/View;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzfne;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzk(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :try_start_0
    const-string p2, "hasWindowFocus"

    .line 46
    .line 47
    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    const-string p2, "Error with setting has window focus"

    .line 53
    .line 54
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    :try_start_1
    const-string p1, "isPipActive"

    .line 70
    .line 71
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    const-string p2, "Error with setting is picture-in-picture active"

    .line 77
    .line 78
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzk:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzh()V

    .line 84
    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfnk;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfnk;->zza()Lcom/google/android/gms/internal/ads/zzfml;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lorg/json/JSONArray;

    .line 99
    .line 100
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfnk;->zzb()Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    move v6, v0

    .line 112
    :goto_2
    if-ge v6, v3, :cond_3

    .line 113
    .line 114
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v6, v6, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    :try_start_2
    const-string p3, "isFriendlyObstructionFor"

    .line 127
    .line 128
    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string p3, "friendlyObstructionClass"

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfml;->zzd()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    const-string p3, "friendlyObstructionPurpose"

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfml;->zza()Lcom/google/android/gms/internal/ads/zzfls;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string p3, "friendlyObstructionReason"

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfml;->zzc()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v4, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .line 157
    .line 158
    :goto_3
    move p3, v7

    .line 159
    goto :goto_4

    .line 160
    :catch_2
    move-exception p3

    .line 161
    const-string v1, "Error with setting friendly obstruction"

    .line 162
    .line 163
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    move p3, v0

    .line 168
    :goto_4
    if-nez p4, :cond_5

    .line 169
    .line 170
    if-eqz p3, :cond_6

    .line 171
    .line 172
    :cond_5
    move v6, v7

    .line 173
    goto :goto_5

    .line 174
    :cond_6
    move v6, v0

    .line 175
    :goto_5
    move-object v1, p0

    .line 176
    move-object v2, p1

    .line 177
    move-object v3, p2

    .line 178
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfns;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmu;Lorg/json/JSONObject;IZ)V

    .line 179
    .line 180
    .line 181
    :goto_6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzg:I

    .line 182
    .line 183
    add-int/2addr p1, v7

    .line 184
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzg:I

    .line 185
    .line 186
    :cond_7
    :goto_7
    return-void
.end method

.method public final zzh()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzi()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfns;->zzd:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzc:Landroid/os/Handler;

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfns;->zze:Ljava/lang/Runnable;

    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzf:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfns;->zzb:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfnn;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfnn;-><init>(Lcom/google/android/gms/internal/ads/zzfns;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
