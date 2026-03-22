.class public abstract Lcom/google/android/gms/internal/ads/zzavq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavp;


# static fields
.field protected static volatile zza:Lcom/google/android/gms/internal/ads/zzawx;


# instance fields
.field protected zzb:Landroid/view/MotionEvent;

.field protected final zzc:Ljava/util/LinkedList;

.field protected zzd:J

.field protected zze:J

.field protected zzf:J

.field protected zzg:J

.field protected zzh:J

.field protected zzi:J

.field protected zzj:J

.field protected zzk:D

.field protected zzl:F

.field protected zzm:F

.field protected zzn:F

.field protected zzo:F

.field protected zzp:Z

.field protected zzq:Landroid/util/DisplayMetrics;

.field protected zzr:Lcom/google/android/gms/internal/ads/zzawp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:D

.field private zzt:D

.field private zzu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzc:Ljava/util/LinkedList;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzg:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzh:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzi:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzj:J

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzu:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzp:Z

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaus;->zze()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzq:Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzdd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawp;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzr:Lcom/google/android/gms/internal/ads/zzawp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    :catchall_0
    :cond_0
    return-void
.end method

.method private final zzm()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzh:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzg:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzi:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzj:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzc:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/view/MotionEvent;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 58
    .line 59
    return-void
.end method

.method private final zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzcP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x0

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    sget-object v9, Lcom/google/android/gms/internal/ads/zzavq;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 35
    .line 36
    if-eqz v9, :cond_0

    .line 37
    .line 38
    sget-object v9, Lcom/google/android/gms/internal/ads/zzavq;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 39
    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawx;->zzd()Lcom/google/android/gms/internal/ads/zzavo;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v9, v8

    .line 46
    :goto_0
    const-string v10, "be"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v9, v8

    .line 50
    move-object v10, v9

    .line 51
    :goto_1
    const/4 v14, 0x1

    .line 52
    const/4 v15, 0x2

    .line 53
    const/4 v13, 0x3

    .line 54
    if-ne v2, v13, :cond_2

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzavq;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzast;

    .line 57
    .line 58
    .line 59
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :try_start_1
    iput-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzu:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    const/16 v0, 0x3ea

    .line 63
    .line 64
    move v12, v0

    .line 65
    goto :goto_3

    .line 66
    :catch_0
    move-exception v0

    .line 67
    move-object/from16 v17, v0

    .line 68
    .line 69
    move v1, v13

    .line 70
    move/from16 v18, v14

    .line 71
    .line 72
    goto :goto_6

    .line 73
    :cond_2
    if-ne v2, v15, :cond_3

    .line 74
    .line 75
    :try_start_2
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzavq;->zzi(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzast;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v3, 0x3f0

    .line 80
    .line 81
    :goto_2
    move-object v8, v0

    .line 82
    move v12, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzavq;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;)Lcom/google/android/gms/internal/ads/zzast;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/16 v3, 0x3e8

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_3
    if-eqz v7, :cond_4

    .line 92
    .line 93
    if-eqz v9, :cond_4

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    sub-long/2addr v3, v5

    .line 100
    const/4 v0, -0x1

    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    move-object v11, v9

    .line 104
    move v1, v13

    .line 105
    move v13, v0

    .line 106
    move/from16 v18, v14

    .line 107
    .line 108
    move-wide v14, v3

    .line 109
    move-object/from16 v16, v10

    .line 110
    .line 111
    :try_start_3
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzavo;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto :goto_4

    .line 117
    :catch_2
    move-exception v0

    .line 118
    move v1, v13

    .line 119
    move/from16 v18, v14

    .line 120
    .line 121
    :goto_4
    move-object/from16 v17, v0

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_4
    move v1, v13

    .line 125
    :cond_5
    :goto_5
    const/4 v3, 0x2

    .line 126
    goto :goto_8

    .line 127
    :goto_6
    if-eqz v7, :cond_5

    .line 128
    .line 129
    if-eqz v9, :cond_5

    .line 130
    .line 131
    if-ne v2, v1, :cond_6

    .line 132
    .line 133
    const/16 v0, 0x3eb

    .line 134
    .line 135
    move v12, v0

    .line 136
    const/4 v3, 0x2

    .line 137
    goto :goto_7

    .line 138
    :cond_6
    const/4 v3, 0x2

    .line 139
    if-ne v2, v3, :cond_7

    .line 140
    .line 141
    const/16 v0, 0x3f1

    .line 142
    .line 143
    move v12, v0

    .line 144
    goto :goto_7

    .line 145
    :cond_7
    const/16 v0, 0x3e9

    .line 146
    .line 147
    move v12, v0

    .line 148
    move/from16 v2, v18

    .line 149
    .line 150
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v13

    .line 154
    sub-long v14, v13, v5

    .line 155
    .line 156
    const/4 v13, -0x1

    .line 157
    move-object v11, v9

    .line 158
    move-object/from16 v16, v10

    .line 159
    .line 160
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzavo;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 161
    .line 162
    .line 163
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    if-eqz v8, :cond_b

    .line 168
    .line 169
    :try_start_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatq;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaY()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_8

    .line 180
    .line 181
    goto :goto_b

    .line 182
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatq;

    .line 187
    .line 188
    sget v6, Lcom/google/android/gms/internal/ads/zzaus;->zzc:I

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaV()[B

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object/from16 v6, p2

    .line 195
    .line 196
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaus;->zzb([BLjava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v7, :cond_e

    .line 201
    .line 202
    if-eqz v9, :cond_e

    .line 203
    .line 204
    if-ne v2, v1, :cond_9

    .line 205
    .line 206
    const/16 v6, 0x3ee

    .line 207
    .line 208
    :goto_9
    move v12, v6

    .line 209
    goto :goto_a

    .line 210
    :cond_9
    if-ne v2, v3, :cond_a

    .line 211
    .line 212
    const/16 v6, 0x3f2

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_a
    const/16 v6, 0x3ec

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    sub-long v14, v13, v4

    .line 223
    .line 224
    const/4 v13, -0x1

    .line 225
    const/16 v17, 0x0

    .line 226
    .line 227
    move-object v11, v9

    .line 228
    move-object/from16 v16, v10

    .line 229
    .line 230
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzavo;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 231
    .line 232
    .line 233
    goto :goto_f

    .line 234
    :catch_3
    move-exception v0

    .line 235
    move-object/from16 v17, v0

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_b
    :goto_b
    const/4 v0, 0x5

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 243
    goto :goto_f

    .line 244
    :goto_c
    const/4 v0, 0x7

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v7, :cond_e

    .line 250
    .line 251
    if-eqz v9, :cond_e

    .line 252
    .line 253
    if-ne v2, v1, :cond_c

    .line 254
    .line 255
    const/16 v1, 0x3ef

    .line 256
    .line 257
    :goto_d
    move v12, v1

    .line 258
    goto :goto_e

    .line 259
    :cond_c
    if-ne v2, v3, :cond_d

    .line 260
    .line 261
    const/16 v1, 0x3f3

    .line 262
    .line 263
    goto :goto_d

    .line 264
    :cond_d
    const/16 v1, 0x3ed

    .line 265
    .line 266
    goto :goto_d

    .line 267
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    sub-long v14, v1, v4

    .line 272
    .line 273
    const/4 v13, -0x1

    .line 274
    move-object v11, v9

    .line 275
    move-object/from16 v16, v10

    .line 276
    .line 277
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzavo;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 278
    .line 279
    .line 280
    :cond_e
    :goto_f
    return-object v0
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzawn;
        }
    .end annotation
.end method

.method protected abstract zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzast;
.end method

.method protected abstract zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;)Lcom/google/android/gms/internal/ads/zzast;
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x3

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzavq;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x3

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzavq;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxa;->zzc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzavq;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "The caller must not be called from the UI thread."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "19"

    .line 2
    .line 3
    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x2

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzavq;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method protected abstract zzi(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzast;
.end method

.method protected abstract zzj(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzawz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzawn;
        }
    .end annotation
.end method

.method public final declared-synchronized zzk(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzu:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavq;->zzm()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzu:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    float-to-double v3, v0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    float-to-double v5, v0

    .line 39
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzs:D

    .line 40
    .line 41
    sub-double v7, v3, v7

    .line 42
    .line 43
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzt:D

    .line 44
    .line 45
    sub-double v9, v5, v9

    .line 46
    .line 47
    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzk:D

    .line 48
    .line 49
    mul-double/2addr v7, v7

    .line 50
    mul-double/2addr v9, v9

    .line 51
    add-double/2addr v7, v9

    .line 52
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    add-double/2addr v11, v7

    .line 57
    iput-wide v11, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzk:D

    .line 58
    .line 59
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzs:D

    .line 60
    .line 61
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzt:D

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzk:D

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    float-to-double v3, v0

    .line 73
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzs:D

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    float-to-double v3, v0

    .line 80
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzt:D

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const-wide/16 v3, 0x1

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    if-eq v0, v2, :cond_6

    .line 91
    .line 92
    if-eq v0, v1, :cond_4

    .line 93
    .line 94
    const/4 p1, 0x3

    .line 95
    if-eq v0, p1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzg:J

    .line 100
    .line 101
    add-long/2addr v0, v3

    .line 102
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzg:J

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:J

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    add-int/2addr v3, v2

    .line 113
    int-to-long v3, v3

    .line 114
    add-long/2addr v0, v3

    .line 115
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzavq;->zzj(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzawz;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawz;->zzd:Ljava/lang/Long;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzawz;->zzg:Ljava/lang/Long;

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzi:J

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzawz;->zzg:Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    add-long/2addr v0, v5

    .line 142
    add-long/2addr v3, v0

    .line 143
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzi:J

    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzq:Landroid/util/DisplayMetrics;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawz;->zze:Ljava/lang/Long;

    .line 150
    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzawz;->zzh:Ljava/lang/Long;

    .line 154
    .line 155
    if-eqz v1, :cond_9

    .line 156
    .line 157
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzj:J

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawz;->zzh:Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    add-long/2addr v0, v5

    .line 170
    add-long/2addr v3, v0

    .line 171
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzj:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzawn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzc:Ljava/util/LinkedList;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    const/4 v1, 0x6

    .line 190
    if-le p1, v1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/view/MotionEvent;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:J

    .line 202
    .line 203
    add-long/2addr v0, v3

    .line 204
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .line 206
    :try_start_3
    new-instance p1, Ljava/lang/Throwable;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzavq;->zza([Ljava/lang/StackTraceElement;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzh:J
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzawn; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzl:F

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzm:F

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzn:F

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzo:F

    .line 245
    .line 246
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:J

    .line 247
    .line 248
    add-long/2addr v0, v3

    .line 249
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:J

    .line 250
    .line 251
    :catch_0
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzp:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 255
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    throw p1
.end method

.method public final declared-synchronized zzl(III)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcN:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavq;->zzm()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzq:Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    move/from16 v2, p3

    .line 42
    .line 43
    int-to-long v4, v2

    .line 44
    move/from16 v2, p1

    .line 45
    .line 46
    int-to-float v2, v2

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 48
    .line 49
    mul-float v7, v2, v0

    .line 50
    .line 51
    move/from16 v2, p2

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    mul-float v8, v2, v0

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Landroid/view/MotionEvent;

    .line 75
    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzavq;->zzp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdd:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzr:Lcom/google/android/gms/internal/ads/zzawp;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawp;->zzb(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public zzo(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
