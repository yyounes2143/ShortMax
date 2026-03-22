.class final Lcom/google/android/gms/internal/ads/zzfjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfhj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcyi;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzcyi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zza:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzc:Lcom/google/android/gms/internal/ads/zzcyi;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzd:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zza:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzd:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjy;->zzc(Lcom/google/android/gms/internal/ads/zzfjy;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zza:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zzt;->zza:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 10
    .line 11
    if-ne p1, v3, :cond_0

    .line 12
    .line 13
    move p1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzd:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfjy;->zzc(Lcom/google/android/gms/internal/ads/zzfjy;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzc:Lcom/google/android/gms/internal/ads/zzcyi;

    .line 44
    .line 45
    if-eqz p1, :cond_12

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjx;->zzd:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjy;->zzb(Lcom/google/android/gms/internal/ads/zzfjy;)Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzb()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    const-string v0, "type"

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v4, "precision"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "currency"

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const-string v5, "value"

    .line 91
    .line 92
    const-wide/16 v6, 0x0

    .line 93
    .line 94
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const v7, 0x10576

    .line 103
    .line 104
    .line 105
    const/4 v8, -0x1

    .line 106
    const/4 v10, 0x2

    .line 107
    if-eq v3, v7, :cond_6

    .line 108
    .line 109
    const v7, 0x10580

    .line 110
    .line 111
    .line 112
    if-eq v3, v7, :cond_5

    .line 113
    .line 114
    const v7, 0x506e232d

    .line 115
    .line 116
    .line 117
    if-eq v3, v7, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const-string v3, "ONE_PIXEL"

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    move v0, v10

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const-string v3, "CPM"

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    move v0, v1

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    const-string v3, "CPC"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    move v0, v2

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    :goto_2
    move v0, v8

    .line 151
    :goto_3
    const/4 v3, 0x3

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    if-eq v0, v2, :cond_9

    .line 155
    .line 156
    if-eq v0, v10, :cond_8

    .line 157
    .line 158
    move v7, v1

    .line 159
    :goto_4
    move-wide v11, v5

    .line 160
    goto :goto_5

    .line 161
    :cond_8
    const-wide/16 v11, 0x3e8

    .line 162
    .line 163
    :try_start_1
    div-long/2addr v5, v11

    .line 164
    move v7, v3

    .line 165
    goto :goto_4

    .line 166
    :catch_0
    move-exception p1

    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_9
    move-wide v11, v5

    .line 170
    move v7, v10

    .line 171
    goto :goto_5

    .line 172
    :cond_a
    move v7, v2

    .line 173
    goto :goto_4

    .line 174
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    const v5, -0x7f136fe4

    .line 179
    .line 180
    .line 181
    if-eq v0, v5, :cond_d

    .line 182
    .line 183
    const v5, 0x17cbce3b

    .line 184
    .line 185
    .line 186
    if-eq v0, v5, :cond_c

    .line 187
    .line 188
    const v5, 0x4bc5cce6    # 2.5926092E7f

    .line 189
    .line 190
    .line 191
    if-eq v0, v5, :cond_b

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_b
    const-string v0, "PUBLISHER_PROVIDED"

    .line 195
    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_e

    .line 201
    .line 202
    move v8, v2

    .line 203
    goto :goto_6

    .line 204
    :cond_c
    const-string v0, "PRECISE"

    .line 205
    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_e

    .line 211
    .line 212
    move v8, v10

    .line 213
    goto :goto_6

    .line 214
    :cond_d
    const-string v0, "ESTIMATED"

    .line 215
    .line 216
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_e

    .line 221
    .line 222
    move v8, v1

    .line 223
    :cond_e
    :goto_6
    if-eqz v8, :cond_11

    .line 224
    .line 225
    if-eq v8, v2, :cond_10

    .line 226
    .line 227
    if-eq v8, v10, :cond_f

    .line 228
    .line 229
    move v8, v1

    .line 230
    goto :goto_7

    .line 231
    :cond_f
    move v8, v3

    .line 232
    goto :goto_7

    .line 233
    :cond_10
    move v8, v10

    .line 234
    goto :goto_7

    .line 235
    :cond_11
    move v8, v2

    .line 236
    :goto_7
    :try_start_2
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzt;

    .line 237
    .line 238
    move-object v6, v0

    .line 239
    move-wide v10, v11

    .line 240
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/ads/internal/client/zzt;-><init>(IILjava/lang/String;J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcyi;->zza(Lcom/google/android/gms/ads/internal/client/zzt;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :goto_8
    const-string v0, "UrlPinger.pingUrl"

    .line 248
    .line 249
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_12
    :goto_9
    return-void
.end method
