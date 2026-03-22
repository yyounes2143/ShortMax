.class public final Lcom/inmobi/media/M7;
.super Lcom/inmobi/media/G1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/T7;

.field public final synthetic e:Lcom/inmobi/media/T7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/T7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/M7;->e:Lcom/inmobi/media/T7;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/inmobi/media/G1;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/inmobi/media/T7;->C:Lcom/inmobi/media/T7;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_5

    .line 9
    .line 10
    iget-object v2, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v4, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 15
    .line 16
    const-string v5, "TAG"

    .line 17
    .line 18
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v2, Lcom/inmobi/media/A5;

    .line 22
    .line 23
    const-string v5, "prepareFullscreenContainer"

    .line 24
    .line 25
    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v2, v1, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 29
    .line 30
    iget-object v4, v2, Lcom/inmobi/media/p8;->f:Lorg/json/JSONArray;

    .line 31
    .line 32
    if-eqz v4, :cond_5

    .line 33
    .line 34
    invoke-static {v4}, Lcom/inmobi/media/B2;->a(Lorg/json/JSONArray;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v2}, Lcom/inmobi/media/p8;->e()Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    iget-byte v7, v1, Lcom/inmobi/media/T7;->a:B

    .line 51
    .line 52
    if-nez v7, :cond_3

    .line 53
    .line 54
    move v10, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v4, 0x0

    .line 57
    move v10, v4

    .line 58
    :goto_0
    new-instance v14, Lcom/inmobi/media/p8;

    .line 59
    .line 60
    iget-object v11, v1, Lcom/inmobi/media/T7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 61
    .line 62
    iget-object v12, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 63
    .line 64
    move-object v6, v14

    .line 65
    move-object v9, v2

    .line 66
    invoke-direct/range {v6 .. v12}, Lcom/inmobi/media/p8;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/p8;ZLcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/z5;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v2, v2, Lcom/inmobi/media/p8;->q:Z

    .line 70
    .line 71
    iput-boolean v2, v14, Lcom/inmobi/media/p8;->q:Z

    .line 72
    .line 73
    iget-object v2, v1, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v12, v2

    .line 80
    check-cast v12, Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v14}, Lcom/inmobi/media/p8;->f()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    if-eqz v12, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/inmobi/media/T7;->getImpressionId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    iget-object v2, v1, Lcom/inmobi/media/T7;->d:Ljava/util/Set;

    .line 95
    .line 96
    iget-object v4, v1, Lcom/inmobi/media/T7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 97
    .line 98
    iget-wide v5, v1, Lcom/inmobi/media/T7;->e:J

    .line 99
    .line 100
    iget-boolean v7, v1, Lcom/inmobi/media/T7;->f:Z

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/inmobi/media/T7;->getCreativeId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    iget-object v9, v1, Lcom/inmobi/media/T7;->i:Lcom/inmobi/media/S6;

    .line 107
    .line 108
    iget-object v10, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 109
    .line 110
    const-string v11, "context"

    .line 111
    .line 112
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v11, "dataModel"

    .line 116
    .line 117
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v11, "adImpressionId"

    .line 121
    .line 122
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v11, "adConfig"

    .line 126
    .line 127
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v11, "creativeId"

    .line 131
    .line 132
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14}, Lcom/inmobi/media/p8;->c()Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    const-string v13, "VIDEO"

    .line 140
    .line 141
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    const/4 v13, 0x0

    .line 146
    const/16 v22, 0x0

    .line 147
    .line 148
    if-eqz v11, :cond_4

    .line 149
    .line 150
    new-instance v25, Lcom/inmobi/media/a9;

    .line 151
    .line 152
    move-object/from16 v11, v25

    .line 153
    .line 154
    move-object/from16 v16, v2

    .line 155
    .line 156
    move-object/from16 v17, v4

    .line 157
    .line 158
    move-wide/from16 v18, v5

    .line 159
    .line 160
    move/from16 v20, v7

    .line 161
    .line 162
    move-object/from16 v21, v8

    .line 163
    .line 164
    move-object/from16 v23, v9

    .line 165
    .line 166
    move-object/from16 v24, v10

    .line 167
    .line 168
    invoke-direct/range {v11 .. v24}, Lcom/inmobi/media/a9;-><init>(Landroid/content/Context;BLcom/inmobi/media/p8;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/e3;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    move-object/from16 v2, v25

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    new-instance v25, Lcom/inmobi/media/T7;

    .line 175
    .line 176
    move-object/from16 v11, v25

    .line 177
    .line 178
    move-object/from16 v16, v2

    .line 179
    .line 180
    move-object/from16 v17, v4

    .line 181
    .line 182
    move-wide/from16 v18, v5

    .line 183
    .line 184
    move/from16 v20, v7

    .line 185
    .line 186
    move-object/from16 v21, v8

    .line 187
    .line 188
    move-object/from16 v23, v9

    .line 189
    .line 190
    move-object/from16 v24, v10

    .line 191
    .line 192
    invoke-direct/range {v11 .. v24}, Lcom/inmobi/media/T7;-><init>(Landroid/content/Context;BLcom/inmobi/media/p8;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/e3;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :goto_2
    iput-object v2, v1, Lcom/inmobi/media/T7;->C:Lcom/inmobi/media/T7;

    .line 197
    .line 198
    iput-object v1, v2, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    .line 199
    .line 200
    iget-object v1, v1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    iput-object v1, v2, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 205
    .line 206
    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 207
    .line 208
    iget-object v1, v1, Lcom/inmobi/media/T7;->C:Lcom/inmobi/media/T7;

    .line 209
    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 213
    .line 214
    const-string v2, "container"

    .line 215
    .line 216
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    sget-object v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 224
    .line 225
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Landroid/content/Intent;

    .line 229
    .line 230
    iget-object v4, v0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 231
    .line 232
    iget-object v4, v4, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Landroid/content/Context;

    .line 239
    .line 240
    const-class v5, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 241
    .line 242
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .line 244
    .line 245
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    .line 246
    .line 247
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    .line 251
    .line 252
    const/16 v4, 0x66

    .line 253
    .line 254
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    .line 258
    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    .line 263
    .line 264
    const/16 v3, 0xc9

    .line 265
    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    iget-object v2, v0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 270
    .line 271
    iget-object v2, v2, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Landroid/content/Context;

    .line 278
    .line 279
    iget-object v3, v0, Lcom/inmobi/media/M7;->d:Lcom/inmobi/media/T7;

    .line 280
    .line 281
    iget-boolean v4, v3, Lcom/inmobi/media/T7;->D:Z

    .line 282
    .line 283
    if-eqz v4, :cond_6

    .line 284
    .line 285
    iput-object v1, v3, Lcom/inmobi/media/T7;->G:Landroid/content/Intent;

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_6
    if-eqz v2, :cond_7

    .line 289
    .line 290
    sget-object v3, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 291
    .line 292
    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 293
    .line 294
    .line 295
    :cond_7
    :goto_4
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/G1;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/M7;->e:Lcom/inmobi/media/T7;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
