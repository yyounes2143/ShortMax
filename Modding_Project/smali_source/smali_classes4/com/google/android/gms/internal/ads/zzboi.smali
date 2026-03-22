.class public final Lcom/google/android/gms/internal/ads/zzboi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzbd;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/zzbd;

.field private zzh:Lcom/google/android/gms/internal/ads/zzboh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/internal/ads/zzfhx;)V
    .locals 1
    .param p6    # Lcom/google/android/gms/internal/ads/zzfhx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzc:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzb:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzboi;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzf:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzg:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 29
    .line 30
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzboi;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzboh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfhx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzboi;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzbnd;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnd;->zzi()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v7

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string v0, "loadJavascriptEngine > Before createJavascriptEngine"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzb:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 22
    .line 23
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbnl;

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    invoke-direct {v9, v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/zzbnl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/ads/internal/zza;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "loadJavascriptEngine > After createJavascriptEngine"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    const-string v0, "loadJavascriptEngine > Before setting new engine loaded listener"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbno;

    .line 40
    .line 41
    move-object v0, v11

    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p1

    .line 44
    move-wide v3, v7

    .line 45
    move-object v5, p2

    .line 46
    move-object v6, v9

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbno;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Ljava/util/ArrayList;JLcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v9, v11}, Lcom/google/android/gms/internal/ads/zzbnd;->zzk(Lcom/google/android/gms/internal/ads/zzbno;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded"

    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbnt;

    .line 59
    .line 60
    move-object v0, v6

    .line 61
    move-wide v2, v7

    .line 62
    move-object v4, p2

    .line 63
    move-object v5, v9

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lcom/google/android/gms/internal/ads/zzboi;JLcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "/jsLoaded"

    .line 68
    .line 69
    invoke-interface {v9, v0, v6}, Lcom/google/android/gms/internal/ads/zzboj;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzby;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzby;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnu;

    .line 78
    .line 79
    invoke-direct {v1, p0, v10, v9, v0}, Lcom/google/android/gms/internal/ads/zzbnu;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/ads/internal/util/zzby;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzby;->zzb(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "loadJavascriptEngine > Before registering GmsgHandler for /requestReload"

    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "/requestReload"

    .line 91
    .line 92
    invoke-interface {v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzboj;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzc:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "loadJavascriptEngine > javascriptPath: "

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v1, ".js"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    const-string v1, "loadJavascriptEngine > Before newEngine.loadJavascript"

    .line 119
    .line 120
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzbnd;->zzh(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "loadJavascriptEngine > After newEngine.loadJavascript"

    .line 127
    .line 128
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const-string v1, "<html>"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    .line 140
    const-string v1, "loadJavascriptEngine > Before newEngine.loadHtml"

    .line 141
    .line 142
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzbnd;->zzf(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "loadJavascriptEngine > After newEngine.loadHtml"

    .line 149
    .line 150
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "loadJavascriptEngine > Before newEngine.loadHtmlWrapper"

    .line 155
    .line 156
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzbnd;->zzg(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "loadJavascriptEngine > After newEngine.loadHtmlWrapper"

    .line 163
    .line 164
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    const-string v0, "loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed"

    .line 168
    .line 169
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object v10, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 173
    .line 174
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbnw;

    .line 175
    .line 176
    move-object v0, v11

    .line 177
    move-object v1, p0

    .line 178
    move-object v2, p2

    .line 179
    move-object v3, v9

    .line 180
    move-object v4, p1

    .line 181
    move-wide v5, v7

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbnw;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;Ljava/util/ArrayList;J)V

    .line 183
    .line 184
    .line 185
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbde;->zzd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 186
    .line 187
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    int-to-long p0, p0

    .line 202
    invoke-virtual {v10, v11, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 208
    .line 209
    const-string p1, "Error creating webview."

    .line 210
    .line 211
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzhZ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 215
    .line 216
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_2

    .line 231
    .line 232
    const-string p1, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine"

    .line 233
    .line 234
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcar;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzib:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 239
    .line 240
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    const-string v0, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 255
    .line 256
    if-eqz p1, :cond_3

    .line 257
    .line 258
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcar;->zzg()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcar;->zzg()V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;Ljava/util/ArrayList;J)V
    .locals 3

    .line 1
    const-string v0, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zze()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zze()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhZ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    .line 49
    .line 50
    const-string v2, "Unable to receive /jsLoaded GMSG."

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener"

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcar;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zzg()V

    .line 65
    .line 66
    .line 67
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 68
    .line 69
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnn;

    .line 73
    .line 74
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbnn;-><init>(Lcom/google/android/gms/internal/ads/zzbnd;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzc:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 81
    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zze()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    sub-long/2addr v1, p4

    .line 118
    new-instance p4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string p5, "Could not receive /jsLoaded in "

    .line 124
    .line 125
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p2, " ms. JS engine session reference status(onEngLoadedTimeout) is "

    .line 132
    .line 133
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, ". Update status(onEngLoadedTimeout) is "

    .line 140
    .line 141
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p0, ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is "

    .line 148
    .line 149
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p0, " ms. Total latency(onEngLoadedTimeout) is "

    .line 156
    .line 157
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p0, " ms. Rejecting."

    .line 164
    .line 165
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const-string p0, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released"

    .line 177
    .line 178
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    :goto_1
    :try_start_1
    const-string p0, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled"

    .line 183
    .line 184
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 189
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    throw p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzboi;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzavu;)Lcom/google/android/gms/internal/ads/zzboc;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzavu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p1, "getEngine: Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    const-string v0, "getEngine: Lock acquired"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "refreshIfDestroyed: Trying to acquire lock"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    const-string v0, "refreshIfDestroyed: Lock acquired"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnq;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbnq;-><init>(Lcom/google/android/gms/internal/ads/zzboi;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnr;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbnr;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcar;->zzj(Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcam;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    const-string v0, "refreshIfDestroyed: Lock released"

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x2

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcar;->zze()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v3, -0x1

    .line 66
    if-ne v0, v3, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    const-string v0, "getEngine (NO_UPDATE): Lock released"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboh;->zza()Lcom/google/android/gms/internal/ads/zzboc;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    monitor-exit p1

    .line 85
    return-object v0

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    const/4 v3, 0x1

    .line 89
    if-ne v0, v3, :cond_3

    .line 90
    .line 91
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzboi;->zzd(Lcom/google/android/gms/internal/ads/zzavu;)Lcom/google/android/gms/internal/ads/zzboh;

    .line 94
    .line 95
    .line 96
    const-string v0, "getEngine (PENDING_UPDATE): Lock released"

    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboh;->zza()Lcom/google/android/gms/internal/ads/zzboc;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    monitor-exit p1

    .line 108
    return-object v0

    .line 109
    :cond_3
    const-string v0, "getEngine (UPDATING): Lock released"

    .line 110
    .line 111
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboh;->zza()Lcom/google/android/gms/internal/ads/zzboc;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    monitor-exit p1

    .line 121
    return-object v0

    .line 122
    :cond_4
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzi:I

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzboi;->zzd(Lcom/google/android/gms/internal/ads/zzavu;)Lcom/google/android/gms/internal/ads/zzboh;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 129
    .line 130
    const-string v0, "getEngine (NULL or REJECTED): Lock released"

    .line 131
    .line 132
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboh;->zza()Lcom/google/android/gms/internal/ads/zzboc;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    return-object v0

    .line 143
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :try_start_4
    throw v0

    .line 145
    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    throw v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzavu;)Lcom/google/android/gms/internal/ads/zzboh;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzavu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzboh;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzg:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzboh;-><init>(Lcom/google/android/gms/ads/internal/util/zzbd;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "loadJavascriptEngine > Before UI_THREAD_EXECUTOR"

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbns;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzbns;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "loadNewJavascriptEngine: Promise created"

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnx;

    .line 40
    .line 41
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbnx;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzfhj;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbny;

    .line 45
    .line 46
    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbny;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzfhj;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcar;->zzj(Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcam;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method
