.class public final Lcom/google/android/gms/internal/ads/zzfju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzehb;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfco;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzavu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzfcp;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzavu;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/internal/ads/zzfco;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzfcp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Lcom/google/android/gms/internal/ads/zzehb;

    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzd:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfju;->zze:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzf:Lcom/google/android/gms/internal/ads/zzfco;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzg:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzi:Lcom/google/android/gms/internal/ads/zzavu;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzfco;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfju;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfco;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfju;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p0, "fakeForAdDebugLog"

    .line 17
    .line 18
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzfca;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v5, ""

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, ""

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v6, p3

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfju;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;
    .locals 15
    .param p2    # Lcom/google/android/gms/internal/ads/zzfca;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzcuu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_a

    .line 18
    .line 19
    const-string v4, "1"

    .line 20
    .line 21
    const-string v5, "0"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    move/from16 v7, p3

    .line 25
    .line 26
    if-eq v6, v7, :cond_0

    .line 27
    .line 28
    move-object v8, v5

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move-object v8, v4

    .line 31
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    check-cast v9, Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v10, p1

    .line 38
    .line 39
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 40
    .line 41
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 42
    .line 43
    const-string v12, "@gw_adlocid@"

    .line 44
    .line 45
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v11, "@gw_adnetrefresh@"

    .line 52
    .line 53
    invoke-static {v9, v11, v8}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Ljava/lang/String;

    .line 58
    .line 59
    const-string v11, "@gw_sdkver@"

    .line 60
    .line 61
    invoke-static {v8, v11, v9}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const-string v9, "@gw_qdata@"

    .line 68
    .line 69
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzy:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v9, "@gw_adnetid@"

    .line 76
    .line 77
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzx:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v9, "@gw_allocid@"

    .line 84
    .line 85
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzw:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfju;->zze:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzaw:Ljava/util/Map;

    .line 94
    .line 95
    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzW:Z

    .line 96
    .line 97
    invoke-static {v8, v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzbyq;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbde;->zznK:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    check-cast v11, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-eqz v11, :cond_2

    .line 118
    .line 119
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzfca;->zze:I

    .line 120
    .line 121
    const/4 v12, 0x4

    .line 122
    if-ne v11, v12, :cond_2

    .line 123
    .line 124
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 125
    .line 126
    .line 127
    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eq v6, v9, :cond_1

    .line 132
    .line 133
    move-object v4, v5

    .line 134
    :cond_1
    const-string v5, "@gw_aps@"

    .line 135
    .line 136
    invoke-static {v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Lcom/google/android/gms/internal/ads/zzehb;

    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzehb;->zzg()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const-string v9, "@gw_adnetstatus@"

    .line 147
    .line 148
    invoke-static {v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzehb;->zza()J

    .line 153
    .line 154
    .line 155
    move-result-wide v8

    .line 156
    const/16 v4, 0xa

    .line 157
    .line 158
    invoke-static {v8, v9, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-string v9, "@gw_ttr@"

    .line 163
    .line 164
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzc:Ljava/lang/String;

    .line 169
    .line 170
    const-string v9, "@gw_seqnum@"

    .line 171
    .line 172
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzd:Ljava/lang/String;

    .line 177
    .line 178
    const-string v9, "@gw_sessid@"

    .line 179
    .line 180
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbde;->zznR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 185
    .line 186
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_4

    .line 201
    .line 202
    const-string v8, "@gw_placement_id@"

    .line 203
    .line 204
    if-eqz p7, :cond_3

    .line 205
    .line 206
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzcuu;->zza()J

    .line 207
    .line 208
    .line 209
    move-result-wide v11

    .line 210
    const-wide/16 v13, 0x0

    .line 211
    .line 212
    cmp-long v9, v11, v13

    .line 213
    .line 214
    if-lez v9, :cond_3

    .line 215
    .line 216
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzcuu;->zza()J

    .line 217
    .line 218
    .line 219
    move-result-wide v11

    .line 220
    invoke-static {v11, v12, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    goto :goto_2

    .line 229
    :cond_3
    const-string v4, ""

    .line 230
    .line 231
    invoke-static {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    :cond_4
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdO:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 236
    .line 237
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    const/4 v8, 0x0

    .line 252
    if-eqz v4, :cond_5

    .line 253
    .line 254
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_5

    .line 259
    .line 260
    move v8, v6

    .line 261
    :cond_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    xor-int/lit8 v9, v4, 0x1

    .line 266
    .line 267
    if-nez v8, :cond_7

    .line 268
    .line 269
    if-nez v4, :cond_6

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_6
    move-object/from16 v8, p4

    .line 273
    .line 274
    move-object/from16 v6, p5

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_7
    move v6, v9

    .line 278
    :goto_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzi:Lcom/google/android/gms/internal/ads/zzavu;

    .line 283
    .line 284
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzavu;->zzf(Landroid/net/Uri;)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_6

    .line 289
    .line 290
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    if-eqz v8, :cond_8

    .line 299
    .line 300
    const-string v5, "ms"

    .line 301
    .line 302
    move-object/from16 v8, p4

    .line 303
    .line 304
    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    goto :goto_4

    .line 309
    :cond_8
    move-object/from16 v8, p4

    .line 310
    .line 311
    :goto_4
    if-eqz v6, :cond_9

    .line 312
    .line 313
    const-string v5, "attok"

    .line 314
    .line 315
    move-object/from16 v6, p5

    .line 316
    .line 317
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    goto :goto_5

    .line 322
    :cond_9
    move-object/from16 v6, p5

    .line 323
    .line 324
    :goto_5
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    :goto_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_a
    return-object v2
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfca;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbwc;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbwc;->zzc()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbwc;->zzb()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzg:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvn;->zzc()Lcom/google/android/gms/internal/ads/zzfvn;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/internal/ads/zzfco;

    .line 52
    .line 53
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvn;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzf:Lcom/google/android/gms/internal/ads/zzfco;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfjs;

    .line 62
    .line 63
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfjs;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfvn;->zza(Lcom/google/android/gms/internal/ads/zzfve;)Lcom/google/android/gms/internal/ads/zzfvn;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, ""

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfjt;

    .line 79
    .line 80
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfjt;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfvn;->zza(Lcom/google/android/gms/internal/ads/zzfve;)Lcom/google/android/gms/internal/ads/zzfvn;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "@gw_rwd_userid@"

    .line 114
    .line 115
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    const-string v8, "@gw_rwd_custom_data@"

    .line 124
    .line 125
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string v8, "@gw_tmstmp@"

    .line 134
    .line 135
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "@gw_rwd_itm@"

    .line 144
    .line 145
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const-string v7, "@gw_rwd_amt@"

    .line 150
    .line 151
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Ljava/lang/String;

    .line 156
    .line 157
    const-string v8, "@gw_sdkver@"

    .line 158
    .line 159
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfju;->zze:Landroid/content/Context;

    .line 164
    .line 165
    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzW:Z

    .line 166
    .line 167
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzaw:Ljava/util/Map;

    .line 168
    .line 169
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbyq;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_2
    return-object v0

    .line 178
    :catch_0
    move-exception p1

    .line 179
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 180
    .line 181
    const-string p2, "Unable to determine award type and amount."

    .line 182
    .line 183
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    return-object v0
.end method
