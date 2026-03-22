.class public final Lcom/google/android/gms/ads/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzb:J

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzfhx;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    const-string p0, "isSuccessful"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p5, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v0, "appSettingsJson"

    .line 11
    .line 12
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzs(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    sub-long/2addr v0, v2

    .line 42
    const-string p1, "cld_s"

    .line 43
    .line 44
    invoke-static {p2, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzf;->zzf(Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const-string p1, "errorReason"

    .line 48
    .line 49
    const-string p2, ""

    .line 50
    .line 51
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 65
    .line 66
    .line 67
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-string p0, "cld_r"

    .line 15
    .line 16
    invoke-static {p1, p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzf;->zzf(Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final zzf(Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/String;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "action"

    .line 26
    .line 27
    const-string v1, "lat_init"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzj()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;Z)V
    .locals 12
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzdsj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v5, p3

    .line 8
    move-object/from16 v7, p4

    .line 9
    .line 10
    move-object/from16 v8, p5

    .line 11
    .line 12
    move-object/from16 v9, p6

    .line 13
    .line 14
    move-object/from16 v10, p7

    .line 15
    .line 16
    move/from16 v11, p8

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/zzf;->zzd(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/ads/zzbzm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method final zzd(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/ads/zzbzm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;Z)V
    .locals 13
    .param p4    # Lcom/google/android/gms/internal/ads/zzbzm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/ads/zzdsj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p7

    .line 5
    .line 6
    move-object/from16 v4, p8

    .line 7
    .line 8
    move-object/from16 v5, p10

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    iget-wide v8, v1, Lcom/google/android/gms/ads/internal/zzf;->zzb:J

    .line 19
    .line 20
    sub-long/2addr v6, v8

    .line 21
    const-wide/16 v8, 0x1388

    .line 22
    .line 23
    cmp-long v6, v6, v8

    .line 24
    .line 25
    if-gez v6, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 28
    .line 29
    const-string v0, "Not retrying to fetch app settings"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    iput-wide v6, v1, Lcom/google/android/gms/ads/internal/zzf;->zzb:J

    .line 44
    .line 45
    if-eqz p4, :cond_2

    .line 46
    .line 47
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzbzm;->zzc()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzbzm;->zza()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    sub-long/2addr v8, v6

    .line 71
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbde;->zzew:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    cmp-long v6, v8, v6

    .line 88
    .line 89
    if-gtz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzbzm;->zzi()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 99
    .line 100
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 101
    .line 102
    const-string v0, "Context not provided to fetch application settings"

    .line 103
    .line 104
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 122
    .line 123
    const-string v0, "App settings could not be fetched. Required parameters missing"

    .line 124
    .line 125
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-nez v6, :cond_6

    .line 134
    .line 135
    move-object v6, v0

    .line 136
    :cond_6
    iput-object v6, v1, Lcom/google/android/gms/ads/internal/zzf;->zza:Landroid/content/Context;

    .line 137
    .line 138
    const/4 v6, 0x4

    .line 139
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbon;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iget-object v8, v1, Lcom/google/android/gms/ads/internal/zzf;->zza:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v7, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzbon;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfhx;)Lcom/google/android/gms/internal/ads/zzbow;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const-string v8, "google.afma.config.fetchAppSettings"

    .line 157
    .line 158
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbot;->zza:Lcom/google/android/gms/internal/ads/zzboq;

    .line 159
    .line 160
    invoke-virtual {v7, v8, v9, v9}, Lcom/google/android/gms/internal/ads/zzbow;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)Lcom/google/android/gms/internal/ads/zzbom;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    const/4 v8, 0x0

    .line 165
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 166
    .line 167
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_7

    .line 175
    .line 176
    const-string v10, "app_id"

    .line 177
    .line 178
    move-object/from16 v11, p5

    .line 179
    .line 180
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :cond_7
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v10, :cond_8

    .line 192
    .line 193
    const-string v10, "ad_unit_id"

    .line 194
    .line 195
    move-object/from16 v11, p6

    .line 196
    .line 197
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_2
    const-string v10, "is_init"

    .line 201
    .line 202
    move/from16 v11, p3

    .line 203
    .line 204
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    const-string v10, "pn"

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    const-string v10, "experiment_ids"

    .line 217
    .line 218
    const-string v11, ","

    .line 219
    .line 220
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbde;->zza:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 221
    .line 222
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Lcom/google/android/gms/internal/ads/zzbcw;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    const-string v10, "js"

    .line 238
    .line 239
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzjV:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 245
    .line 246
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/lang/Boolean;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_9

    .line 261
    .line 262
    const-string v2, "inspector_enabled"

    .line 263
    .line 264
    move/from16 v10, p11

    .line 265
    .line 266
    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .line 268
    .line 269
    :cond_9
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzf;->zza:Landroid/content/Context;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v2, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_a

    .line 288
    .line 289
    const-string v2, "version"

    .line 290
    .line 291
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 292
    .line 293
    invoke-virtual {v9, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :catch_1
    :try_start_2
    const-string v0, "Error fetching PackageInfo."

    .line 298
    .line 299
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_3
    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/ads/zzbom;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    new-instance v2, Lcom/google/android/gms/ads/internal/zzd;

    .line 307
    .line 308
    move-object p1, v2

    .line 309
    move-object p2, p0

    .line 310
    move-object/from16 p3, p10

    .line 311
    .line 312
    move-object/from16 p4, p9

    .line 313
    .line 314
    move-object/from16 p5, v6

    .line 315
    .line 316
    move-object/from16 p6, p8

    .line 317
    .line 318
    invoke-direct/range {p1 .. p6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzfhx;)V

    .line 319
    .line 320
    .line 321
    sget-object v7, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 322
    .line 323
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-eqz v3, :cond_b

    .line 328
    .line 329
    invoke-interface {v0, v3, v7}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 330
    .line 331
    .line 332
    :cond_b
    if-eqz v5, :cond_c

    .line 333
    .line 334
    new-instance v3, Lcom/google/android/gms/ads/internal/zze;

    .line 335
    .line 336
    move-object/from16 v9, p9

    .line 337
    .line 338
    invoke-direct {v3, p0, v9, v5}, Lcom/google/android/gms/ads/internal/zze;-><init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v3, v7}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 342
    .line 343
    .line 344
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzia:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 345
    .line 346
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Ljava/lang/Boolean;

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 357
    .line 358
    .line 359
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    const-string v3, "ConfigLoader.maybeFetchNewAppSettings"

    .line 361
    .line 362
    if-eqz v0, :cond_d

    .line 363
    .line 364
    :try_start_3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzcai;->zzb(Lcom/google/common/util/concurrent/e;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzcai;->zza(Lcom/google/common/util/concurrent/e;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :goto_4
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 373
    .line 374
    const-string v2, "Error requesting application settings"

    .line 375
    .line 376
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 380
    .line 381
    .line 382
    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 383
    .line 384
    .line 385
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public final zze(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzfhx;Z)V
    .locals 13

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzbzm;->zzb()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    move-object v6, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    const/4 v10, 0x0

    .line 12
    const/4 v11, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p2

    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    move-object/from16 v7, p3

    .line 21
    .line 22
    move-object/from16 v9, p5

    .line 23
    .line 24
    move/from16 v12, p6

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/ads/internal/zzf;->zzd(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/ads/zzbzm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfhx;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/Long;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
