.class public final Lcom/google/android/gms/internal/ads/zzeul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeub;


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:Ljava/lang/String;

.field public final zzd:Z

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public final zzi:Ljava/util/ArrayList;

.field public final zzj:Ljava/lang/String;

.field public final zzk:Ljava/lang/String;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Z

.field public final zzn:Ljava/lang/String;

.field public final zzo:J

.field public final zzp:Z

.field public final zzq:Ljava/lang/String;

.field public final zzr:I


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zza:Z

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzb:Z

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzc:Ljava/lang/String;

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzd:Z

    .line 16
    .line 17
    move v1, p5

    .line 18
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zze:Z

    .line 19
    .line 20
    move v1, p6

    .line 21
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzf:Z

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzg:Ljava/lang/String;

    .line 25
    .line 26
    move-object/from16 v1, p19

    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzh:Ljava/lang/String;

    .line 29
    .line 30
    move-object v1, p8

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzi:Ljava/util/ArrayList;

    .line 32
    .line 33
    move-object v1, p9

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzj:Ljava/lang/String;

    .line 35
    .line 36
    move-object v1, p10

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzk:Ljava/lang/String;

    .line 38
    .line 39
    move-object v1, p11

    .line 40
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzl:Ljava/lang/String;

    .line 41
    .line 42
    move v1, p12

    .line 43
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzm:Z

    .line 44
    .line 45
    move-object/from16 v1, p13

    .line 46
    .line 47
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzn:Ljava/lang/String;

    .line 48
    .line 49
    move-wide/from16 v1, p14

    .line 50
    .line 51
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzo:J

    .line 52
    .line 53
    move/from16 v1, p16

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzp:Z

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzq:Ljava/lang/String;

    .line 60
    .line 61
    move/from16 v1, p18

    .line 62
    .line 63
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzeul;->zzr:I

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcva;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v0, "simulator"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzd:Z

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string v0, "build_api_level"

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzr:I

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzi:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "hl_list"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzn:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "submodel"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcva;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v0, "cog"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zza:Z

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string v0, "coh"

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzb:Z

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v0, "gl"

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzc:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "simulator"

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzd:Z

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "is_latchsky"

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zze:Z

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "build_api_level"

    .line 41
    .line 42
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzr:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzf:Z

    .line 66
    .line 67
    const-string v1, "is_sidewinder"

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzg:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "hl"

    .line 75
    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznI:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzh:Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "dlc"

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzi:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    const-string v1, "hl_list"

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzj:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "mv"

    .line 120
    .line 121
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzn:Ljava/lang/String;

    .line 125
    .line 126
    const-string v1, "submodel"

    .line 127
    .line 128
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "device"

    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzl:Ljava/lang/String;

    .line 141
    .line 142
    const-string v2, "build"

    .line 143
    .line 144
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzo:J

    .line 148
    .line 149
    const-string v0, "remaining_data_partition_space"

    .line 150
    .line 151
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 152
    .line 153
    .line 154
    const-string v0, "browser"

    .line 155
    .line 156
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzm:Z

    .line 164
    .line 165
    const-string v3, "is_browser_custom_tabs_capable"

    .line 166
    .line 167
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzk:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_3

    .line 177
    .line 178
    const-string v2, "play_store"

    .line 179
    .line 180
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "package_version"

    .line 188
    .line 189
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlN:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 193
    .line 194
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzp:Z

    .line 211
    .line 212
    const-string v1, "is_bstar"

    .line 213
    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    .line 216
    .line 217
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeul;->zzq:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_5

    .line 224
    .line 225
    const-string v1, "v_unity"

    .line 226
    .line 227
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlH:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 231
    .line 232
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_6

    .line 247
    .line 248
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlE:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 249
    .line 250
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    const-string v1, "gotmt_l"

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 268
    .line 269
    .line 270
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlD:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 271
    .line 272
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    const-string v1, "gotmt_i"

    .line 287
    .line 288
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 289
    .line 290
    .line 291
    :cond_6
    return-void
.end method
