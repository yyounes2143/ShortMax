.class public Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "AdaptiveSharpenEffect.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_AdaptiveSharpenEffect"


# instance fields
.field private mAmount:F

.field private mCm:[F

.field private mCo:[F

.field private mDiffImgSmoothEnable:I

.field private mEdgeWeightGamma:F

.field private mEnableBMF:Z

.field private mInitSharpenError:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mOverRatio:F

.field private mPowerLevel:I

.field private mProcessSuccess:I

.field private mSTMatrix:[F

.field private mSceneMode:I

.field private mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const/16 p1, 0x780

    .line 6
    .line 7
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 8
    .line 9
    const/16 p1, 0x438

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mPowerLevel:I

    .line 15
    .line 16
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSceneMode:I

    .line 17
    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    iput v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mAmount:F

    .line 21
    .line 22
    iput v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mOverRatio:F

    .line 23
    .line 24
    iput v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEdgeWeightGamma:F

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mDiffImgSmoothEnable:I

    .line 28
    .line 29
    const/high16 v1, -0x80000000

    .line 30
    .line 31
    iput v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mProcessSuccess:I

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEnableBMF:Z

    .line 34
    .line 35
    new-array v1, p1, [F

    .line 36
    .line 37
    iput-object v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mCm:[F

    .line 38
    .line 39
    new-array p1, p1, [F

    .line 40
    .line 41
    iput-object p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mCo:[F

    .line 42
    .line 43
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 44
    .line 45
    const-string v1, "TR_AdaptiveSharpenEffect"

    .line 46
    .line 47
    const-string v2, "new AdaptiveSharpenEffect"

    .line 48
    .line 49
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0xa

    .line 53
    .line 54
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 55
    .line 56
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public getIntOption(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :pswitch_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 10
    .line 11
    return p1

    .line 12
    :pswitch_1
    iget p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mPowerLevel:I

    .line 13
    .line 14
    return p1

    .line 15
    :pswitch_2
    iget p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 16
    .line 17
    return p1

    .line 18
    :pswitch_3
    iget p1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 19
    .line 20
    return p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 6
    .line 7
    .line 8
    const-string v2, "enable_bmf"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    move v2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    :goto_0
    iput-boolean v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEnableBMF:Z

    .line 22
    .line 23
    const-string/jumbo v2, "texture_type"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mPowerLevel:I

    .line 31
    .line 32
    const-string v6, "power_level"

    .line 33
    .line 34
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, "TR_AdaptiveSharpenEffect"

    .line 40
    .line 41
    if-ne v5, v7, :cond_1

    .line 42
    .line 43
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 44
    .line 45
    if-eq v5, v2, :cond_2

    .line 46
    .line 47
    :cond_1
    iget-object v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 52
    .line 53
    const-string v7, "release prev sharpen instance"

    .line 54
    .line 55
    invoke-static {v5, v9, v7}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/ss/texturerender/SharpenBaseWrapper;->ReleaseAdaptiveSharpen()V

    .line 61
    .line 62
    .line 63
    iput-object v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 64
    .line 65
    :cond_2
    iget-object v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 66
    .line 67
    if-nez v5, :cond_9

    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v10

    .line 73
    iget-boolean v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEnableBMF:Z

    .line 74
    .line 75
    const-string v7, "max_height"

    .line 76
    .line 77
    const-string v12, "max_width"

    .line 78
    .line 79
    const/16 v13, 0x10

    .line 80
    .line 81
    const v14, 0x8d65

    .line 82
    .line 83
    .line 84
    if-nez v5, :cond_6

    .line 85
    .line 86
    iput v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 87
    .line 88
    if-ne v2, v14, :cond_3

    .line 89
    .line 90
    iget-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 91
    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    new-array v2, v13, [F

    .line 95
    .line 96
    iput-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 97
    .line 98
    :cond_3
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 103
    .line 104
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iput v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mPowerLevel:I

    .line 115
    .line 116
    new-instance v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;

    .line 117
    .line 118
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 119
    .line 120
    invoke-direct {v1, v2}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 124
    .line 125
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 126
    .line 127
    if-ne v2, v14, :cond_4

    .line 128
    .line 129
    move v2, v4

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    move v2, v3

    .line 132
    :goto_1
    iget v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 133
    .line 134
    iget v6, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 135
    .line 136
    iget v7, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mPowerLevel:I

    .line 137
    .line 138
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/ss/texturerender/SharpenBaseWrapper;->InitAdaptiveSharpen(ZIII)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_5
    const/4 v3, -0x1

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_6
    iput v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 150
    .line 151
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v6, "init sharpen mInTextureTarget: "

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget v6, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v2, v9, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 176
    .line 177
    if-ne v2, v14, :cond_7

    .line 178
    .line 179
    iget-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 180
    .line 181
    if-nez v2, :cond_7

    .line 182
    .line 183
    new-array v2, v13, [F

    .line 184
    .line 185
    iput-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 186
    .line 187
    :cond_7
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 192
    .line 193
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    iput v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 198
    .line 199
    const-string v2, "alg_type"

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const-string v5, "pool_size"

    .line 206
    .line 207
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v16

    .line 211
    const-string/jumbo v5, "weight_threshold"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 215
    .line 216
    .line 217
    move-result v18

    .line 218
    const-string v5, "global_threshold"

    .line 219
    .line 220
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 221
    .line 222
    .line 223
    move-result v19

    .line 224
    const-string v5, "overflow_ratio"

    .line 225
    .line 226
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 227
    .line 228
    .line 229
    move-result v20

    .line 230
    const-string v5, "enable_adaptive"

    .line 231
    .line 232
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-ne v5, v4, :cond_8

    .line 237
    .line 238
    move/from16 v21, v4

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_8
    move/from16 v21, v3

    .line 242
    .line 243
    :goto_2
    const-string v3, "initial_weight"

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 246
    .line 247
    .line 248
    move-result v22

    .line 249
    const-string v3, "low_weight_threshold"

    .line 250
    .line 251
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 252
    .line 253
    .line 254
    move-result v23

    .line 255
    const-string v3, "program_cache_dir"

    .line 256
    .line 257
    const-string v5, ""

    .line 258
    .line 259
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v17

    .line 263
    new-instance v12, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;

    .line 264
    .line 265
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 266
    .line 267
    invoke-direct {v12, v1}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;-><init>(I)V

    .line 268
    .line 269
    .line 270
    iput-object v12, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 271
    .line 272
    iget v14, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 273
    .line 274
    iget v15, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 275
    .line 276
    move v13, v2

    .line 277
    invoke-virtual/range {v12 .. v23}, Lcom/ss/texturerender/SharpenBaseWrapper;->InitAdaptiveSharpen(IIIILjava/lang/String;FFFZFF)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 282
    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v6, "init sharpen, algType: "

    .line 289
    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v3, v9, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    move v3, v1

    .line 304
    :goto_3
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 305
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v5, "init sharpen, ret:"

    .line 312
    .line 313
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v5, ",cost:"

    .line 320
    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 325
    .line 326
    .line 327
    move-result-wide v5

    .line 328
    sub-long/2addr v5, v10

    .line 329
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v1, v9, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_9
    if-eqz v3, :cond_b

    .line 340
    .line 341
    iput-boolean v4, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mInitSharpenError:Z

    .line 342
    .line 343
    iget-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/ss/texturerender/SharpenBaseWrapper;->ReleaseAdaptiveSharpen()V

    .line 346
    .line 347
    .line 348
    iput-object v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 349
    .line 350
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 351
    .line 352
    const-string v2, "init sharpen fail, release"

    .line 353
    .line 354
    if-eqz v1, :cond_a

    .line 355
    .line 356
    const/4 v4, 0x3

    .line 357
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 358
    .line 359
    invoke-virtual {v1, v4, v5, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_a
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 363
    .line 364
    invoke-static {v1, v9, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_b
    return v3
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    const/16 v5, 0xf

    .line 14
    .line 15
    const-string v6, "TR_AdaptiveSharpenEffect"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mInitSharpenError:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-boolean v7, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mInitSharpenError:Z

    .line 32
    .line 33
    :cond_2
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 34
    .line 35
    const-string/jumbo v2, "sharpen empty"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v6, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 42
    .line 43
    invoke-virtual {v1, v5, v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->supportProcessResolution(II)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-nez v8, :cond_4

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_4
    iget-object v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 63
    .line 64
    iget v9, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 65
    .line 66
    invoke-virtual {v8, v9}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 67
    .line 68
    .line 69
    iget-object v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 70
    .line 71
    const/16 v9, 0x10

    .line 72
    .line 73
    const/4 v15, -0x1

    .line 74
    invoke-virtual {v8, v9, v15}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const/4 v14, 0x1

    .line 79
    if-ne v8, v14, :cond_b

    .line 80
    .line 81
    iget-boolean v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEnableBMF:Z

    .line 82
    .line 83
    const v9, 0x8d65

    .line 84
    .line 85
    .line 86
    if-nez v8, :cond_6

    .line 87
    .line 88
    iget v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 89
    .line 90
    if-ne v8, v9, :cond_5

    .line 91
    .line 92
    iget-object v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 93
    .line 94
    iget-object v9, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 97
    .line 98
    .line 99
    iget-object v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    iget-object v12, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 106
    .line 107
    iget v13, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSceneMode:I

    .line 108
    .line 109
    iget v11, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mAmount:F

    .line 110
    .line 111
    iget v10, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mOverRatio:F

    .line 112
    .line 113
    iget v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEdgeWeightGamma:F

    .line 114
    .line 115
    iget v7, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mDiffImgSmoothEnable:I

    .line 116
    .line 117
    const/16 v16, 0x1

    .line 118
    .line 119
    move/from16 v17, v10

    .line 120
    .line 121
    move v10, v1

    .line 122
    move/from16 v18, v11

    .line 123
    .line 124
    move v11, v2

    .line 125
    move/from16 v19, v13

    .line 126
    .line 127
    move/from16 v13, v16

    .line 128
    .line 129
    move/from16 v14, v19

    .line 130
    .line 131
    move v4, v15

    .line 132
    move/from16 v15, v18

    .line 133
    .line 134
    move/from16 v16, v17

    .line 135
    .line 136
    move/from16 v17, v5

    .line 137
    .line 138
    move/from16 v18, v7

    .line 139
    .line 140
    invoke-virtual/range {v8 .. v18}, Lcom/ss/texturerender/SharpenBaseWrapper;->AdaptiveSharpenOesProcess(III[FZIFFFI)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    move v4, v15

    .line 146
    iget-object v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    iget v13, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSceneMode:I

    .line 153
    .line 154
    iget v14, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mAmount:F

    .line 155
    .line 156
    iget v15, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mOverRatio:F

    .line 157
    .line 158
    iget v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEdgeWeightGamma:F

    .line 159
    .line 160
    iget v7, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mDiffImgSmoothEnable:I

    .line 161
    .line 162
    const/4 v12, 0x1

    .line 163
    move v10, v1

    .line 164
    move v11, v2

    .line 165
    move/from16 v16, v5

    .line 166
    .line 167
    move/from16 v17, v7

    .line 168
    .line 169
    invoke-virtual/range {v8 .. v17}, Lcom/ss/texturerender/SharpenBaseWrapper;->AdaptiveSharpenProcess(IIIZIFFFI)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    goto :goto_0

    .line 174
    :cond_6
    move v4, v15

    .line 175
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 176
    .line 177
    if-ne v5, v9, :cond_7

    .line 178
    .line 179
    iget-object v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 180
    .line 181
    iget-object v7, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 182
    .line 183
    invoke-virtual {v5, v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 184
    .line 185
    .line 186
    iget-object v8, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    iget-object v12, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mCm:[F

    .line 193
    .line 194
    iget-object v13, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mCo:[F

    .line 195
    .line 196
    iget-object v14, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSTMatrix:[F

    .line 197
    .line 198
    move v10, v1

    .line 199
    move v11, v2

    .line 200
    invoke-virtual/range {v8 .. v14}, Lcom/ss/texturerender/SharpenBaseWrapper;->AdaptiveSharpenOesProcess(III[F[F[F)I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    goto :goto_0

    .line 205
    :cond_7
    iget-object v5, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-virtual {v5, v7, v1, v2}, Lcom/ss/texturerender/SharpenBaseWrapper;->AdaptiveSharpenProcess(III)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    :goto_0
    const-string v7, ",texTarget:"

    .line 216
    .line 217
    const-string v8, ",height:"

    .line 218
    .line 219
    const-string v9, ",width:"

    .line 220
    .line 221
    if-eqz v5, :cond_9

    .line 222
    .line 223
    iget v10, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mProcessSuccess:I

    .line 224
    .line 225
    if-eq v10, v4, :cond_8

    .line 226
    .line 227
    iget v10, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 228
    .line 229
    new-instance v11, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v12, "process error,ret:"

    .line 235
    .line 236
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 258
    .line 259
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v10, v6, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iput v4, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mProcessSuccess:I

    .line 270
    .line 271
    :cond_8
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 272
    .line 273
    if-eqz v1, :cond_b

    .line 274
    .line 275
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 276
    .line 277
    const/4 v4, 0x4

    .line 278
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_9
    iget-object v3, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/ss/texturerender/SharpenBaseWrapper;->GetAdaptiveSharpenOutput()I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    iget v3, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mProcessSuccess:I

    .line 289
    .line 290
    if-eqz v3, :cond_a

    .line 291
    .line 292
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 293
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v5, "process success,texid:"

    .line 300
    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 323
    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v3, v6, v4}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    iput v3, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mProcessSuccess:I

    .line 336
    .line 337
    :cond_a
    iget-object v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 338
    .line 339
    const/16 v4, 0xf

    .line 340
    .line 341
    const/4 v5, 0x1

    .line 342
    invoke-virtual {v3, v4, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 346
    .line 347
    .line 348
    iget-object v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 349
    .line 350
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 351
    .line 352
    invoke-virtual {v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 353
    .line 354
    .line 355
    new-instance v3, Lcom/ss/texturerender/effect/EffectTexture;

    .line 356
    .line 357
    const/4 v9, 0x0

    .line 358
    const/16 v13, 0xde1

    .line 359
    .line 360
    move-object v8, v3

    .line 361
    move v11, v1

    .line 362
    move v12, v2

    .line 363
    invoke-direct/range {v8 .. v13}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 364
    .line 365
    .line 366
    return-object v3

    .line 367
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 368
    .line 369
    const/16 v2, 0xf

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    invoke-virtual {v1, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 376
    .line 377
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 380
    .line 381
    .line 382
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/SharpenBaseWrapper;->ReleaseAdaptiveSharpen()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mWrapper:Lcom/ss/texturerender/SharpenBaseWrapper;

    .line 10
    .line 11
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 12
    .line 13
    const-string v1, "TR_AdaptiveSharpenEffect"

    .line 14
    .line 15
    const-string/jumbo v2, "sharpen released"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public setOption(IF)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(IF)V

    goto :goto_0

    .line 8
    :pswitch_0
    iput p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mEdgeWeightGamma:F

    goto :goto_0

    .line 9
    :pswitch_1
    iput p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mOverRatio:F

    goto :goto_0

    .line 10
    :pswitch_2
    iput p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mAmount:F

    .line 11
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption float, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TR_AdaptiveSharpenEffect"

    invoke-static {v0, p2, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOption(II)V
    .locals 3

    const/16 v0, 0xe

    .line 1
    const-string v1, "TR_AdaptiveSharpenEffect"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mSceneMode:I

    .line 4
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set SceneMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iput p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mDiffImgSmoothEnable:I

    .line 6
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set DiffImgSmoothEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportProcessResolution(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 18
    .line 19
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxWidth:I

    .line 26
    .line 27
    iget v2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;->mMaxHeight:I

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-gt v0, p2, :cond_0

    .line 34
    .line 35
    if-le p1, v1, :cond_1

    .line 36
    .line 37
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 38
    .line 39
    const-string p2, "TR_AdaptiveSharpenEffect"

    .line 40
    .line 41
    const-string/jumbo v0, "width/height out of range"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    const/4 p1, 0x1

    .line 50
    return p1
.end method
