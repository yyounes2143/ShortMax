.class public Lcom/ss/texturerender/effect/VideoOCLSREffect;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "VideoOCLSREffect.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_VideoOCLSREffect"


# instance fields
.field private mAsyncInit:Z

.field private mBackend:I

.field private mEnableBmf:Z

.field private mIsMaliSync:Z

.field private mLibPath:Ljava/lang/String;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

.field private mPoolSize:I

.field private mProcessAverageCostTime:F

.field private mProcessSuccess:I

.field private mProcessSuccessFrame:F

.field private mProcessSumCostTime:F

.field private mProcessSumFrame:F

.field private mSTMatrix:[F

.field private mScaleType:I

.field private mSrProParamter:Landroid/os/Bundle;

.field private mSuperAlgType:I

.field private useGLSr:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mIsMaliSync:Z

    .line 10
    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    iput v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccess:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->useGLSr:Z

    .line 19
    .line 20
    iput v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 21
    .line 22
    iput v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 23
    .line 24
    iput v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    iput-object v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessAverageCostTime:F

    .line 32
    .line 33
    iput v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumCostTime:F

    .line 34
    .line 35
    iput v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 36
    .line 37
    iput v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mAsyncInit:Z

    .line 43
    .line 44
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 45
    .line 46
    const-string v2, "TR_VideoOCLSREffect"

    .line 47
    .line 48
    const-string v3, "new VideoOCLSREffect"

    .line 49
    .line 50
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->useGLSr:Z

    .line 60
    .line 61
    :cond_0
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 62
    .line 63
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 64
    .line 65
    return-void
.end method

.method private originTex(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)I
    .locals 29

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
    const-string/jumbo v2, "srAlgType"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string/jumbo v3, "texture_type"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    const-string v3, "moduleName"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string/jumbo v4, "srIsMaliSync"

    .line 29
    .line 30
    .line 31
    const/4 v15, 0x1

    .line 32
    invoke-virtual {v1, v4, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v14

    .line 36
    const-string v4, "enable_bmf"

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    move v4, v15

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move/from16 v4, v24

    .line 49
    .line 50
    :goto_0
    const-string/jumbo v5, "sr_backend"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v6, "scale_type"

    .line 58
    .line 59
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const-string v7, "pool_size"

    .line 64
    .line 65
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const-string v8, "programCacheDir"

    .line 70
    .line 71
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string/jumbo v10, "use_bmf_component"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_1

    .line 83
    .line 84
    move v10, v15

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move/from16 v10, v24

    .line 87
    .line 88
    :goto_1
    const-string v11, "bmf_direct_invoke"

    .line 89
    .line 90
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_2

    .line 95
    .line 96
    move v11, v15

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move/from16 v11, v24

    .line 99
    .line 100
    :goto_2
    const-string v12, "lib_path"

    .line 101
    .line 102
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    const-string v13, "pro_config_bun"

    .line 107
    .line 108
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    const-string v15, "init_config_bundle"

    .line 113
    .line 114
    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v23

    .line 118
    const/16 v15, 0x12

    .line 119
    .line 120
    if-ne v2, v15, :cond_3

    .line 121
    .line 122
    if-eqz v10, :cond_3

    .line 123
    .line 124
    move/from16 v17, v4

    .line 125
    .line 126
    const/4 v15, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    move/from16 v17, v4

    .line 129
    .line 130
    move/from16 v15, v24

    .line 131
    .line 132
    :goto_3
    const/4 v4, 0x0

    .line 133
    iput v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessAverageCostTime:F

    .line 134
    .line 135
    iput v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumCostTime:F

    .line 136
    .line 137
    iput v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 138
    .line 139
    iput v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 140
    .line 141
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_4

    .line 146
    .line 147
    move/from16 v17, v11

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    move/from16 v4, v17

    .line 152
    .line 153
    move/from16 v17, v11

    .line 154
    .line 155
    :goto_4
    iget v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 156
    .line 157
    move/from16 v18, v10

    .line 158
    .line 159
    const-string v10, "kernelBinPath"

    .line 160
    .line 161
    move-object/from16 v22, v8

    .line 162
    .line 163
    const-string/jumbo v8, "srMaxSizeHeight"

    .line 164
    .line 165
    .line 166
    move-object/from16 v19, v3

    .line 167
    .line 168
    const-string/jumbo v3, "srMaxSizeWidth"

    .line 169
    .line 170
    .line 171
    move-object/from16 v20, v10

    .line 172
    .line 173
    const-string/jumbo v10, "sr config is empty"

    .line 174
    .line 175
    .line 176
    move-object/from16 v21, v10

    .line 177
    .line 178
    const/16 v26, -0x1

    .line 179
    .line 180
    const-string v10, "TR_VideoOCLSREffect"

    .line 181
    .line 182
    if-ne v11, v2, :cond_5

    .line 183
    .line 184
    iget v11, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 185
    .line 186
    if-ne v11, v9, :cond_5

    .line 187
    .line 188
    iget-boolean v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mIsMaliSync:Z

    .line 189
    .line 190
    if-ne v11, v14, :cond_5

    .line 191
    .line 192
    iget-boolean v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 193
    .line 194
    if-ne v4, v11, :cond_5

    .line 195
    .line 196
    iget v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 197
    .line 198
    if-ne v11, v5, :cond_5

    .line 199
    .line 200
    iget v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 201
    .line 202
    if-ne v11, v6, :cond_5

    .line 203
    .line 204
    iget v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 205
    .line 206
    if-ne v11, v7, :cond_5

    .line 207
    .line 208
    iget-boolean v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mAsyncInit:Z

    .line 209
    .line 210
    if-eq v11, v15, :cond_6

    .line 211
    .line 212
    :cond_5
    move-object/from16 v11, v20

    .line 213
    .line 214
    move/from16 v20, v14

    .line 215
    .line 216
    move-object/from16 v14, v21

    .line 217
    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :cond_6
    if-eqz v15, :cond_27

    .line 221
    .line 222
    if-eqz v4, :cond_27

    .line 223
    .line 224
    iget-object v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 225
    .line 226
    if-eqz v4, :cond_27

    .line 227
    .line 228
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 233
    .line 234
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 239
    .line 240
    iput-object v12, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 241
    .line 242
    iput-object v13, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 243
    .line 244
    move-object/from16 v11, v20

    .line 245
    .line 246
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    move-object v11, v1

    .line 251
    check-cast v11, Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_8

    .line 258
    .line 259
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 260
    .line 261
    move-object/from16 v2, v21

    .line 262
    .line 263
    invoke-static {v1, v10, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 267
    .line 268
    if-eqz v1, :cond_7

    .line 269
    .line 270
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    return v26

    .line 277
    :cond_8
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 278
    .line 279
    const-string/jumbo v3, "start asyncinit sr"

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v10, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/4 v1, 0x5

    .line 286
    if-ge v2, v1, :cond_9

    .line 287
    .line 288
    return v26

    .line 289
    :cond_9
    add-int/lit8 v12, v2, -0x5

    .line 290
    .line 291
    iget-object v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 292
    .line 293
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 294
    .line 295
    const v2, 0x8d65

    .line 296
    .line 297
    .line 298
    if-ne v1, v2, :cond_a

    .line 299
    .line 300
    const/4 v13, 0x1

    .line 301
    goto :goto_5

    .line 302
    :cond_a
    move/from16 v13, v24

    .line 303
    .line 304
    :goto_5
    iget v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 305
    .line 306
    iget v1, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 307
    .line 308
    iget v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 309
    .line 310
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 311
    .line 312
    iget v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 313
    .line 314
    iget-object v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 315
    .line 316
    move/from16 v16, v1

    .line 317
    .line 318
    move-object/from16 v17, v19

    .line 319
    .line 320
    move/from16 v18, v2

    .line 321
    .line 322
    move/from16 v19, v3

    .line 323
    .line 324
    move/from16 v20, v4

    .line 325
    .line 326
    move-object/from16 v21, v5

    .line 327
    .line 328
    invoke-virtual/range {v10 .. v23}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->InitVideoAsyncOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 329
    .line 330
    .line 331
    goto/16 :goto_11

    .line 332
    .line 333
    :goto_6
    iput-boolean v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 334
    .line 335
    iput v9, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 336
    .line 337
    const v4, 0x8d65

    .line 338
    .line 339
    .line 340
    if-ne v9, v4, :cond_b

    .line 341
    .line 342
    iget-object v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 343
    .line 344
    if-nez v4, :cond_b

    .line 345
    .line 346
    const/16 v4, 0x10

    .line 347
    .line 348
    new-array v4, v4, [F

    .line 349
    .line 350
    iput-object v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 351
    .line 352
    :cond_b
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 357
    .line 358
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 363
    .line 364
    iput v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 365
    .line 366
    iput v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 367
    .line 368
    iput v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 369
    .line 370
    iput-object v12, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 371
    .line 372
    iput-object v13, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 373
    .line 374
    iput-boolean v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mAsyncInit:Z

    .line 375
    .line 376
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    move-object v11, v3

    .line 381
    check-cast v11, Ljava/lang/String;

    .line 382
    .line 383
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-eqz v3, :cond_d

    .line 388
    .line 389
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 390
    .line 391
    invoke-static {v1, v10, v14}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 395
    .line 396
    if-eqz v1, :cond_c

    .line 397
    .line 398
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 399
    .line 400
    const/4 v3, 0x1

    .line 401
    invoke-virtual {v1, v3, v2, v14}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_c
    return v26

    .line 405
    :cond_d
    iget-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 406
    .line 407
    const/4 v15, 0x0

    .line 408
    if-eqz v3, :cond_e

    .line 409
    .line 410
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 411
    .line 412
    const-string v4, "release prev SR instance"

    .line 413
    .line 414
    invoke-static {v3, v10, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 420
    .line 421
    .line 422
    iput-object v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 423
    .line 424
    :cond_e
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 425
    .line 426
    const-string/jumbo v4, "start init sr"

    .line 427
    .line 428
    .line 429
    invoke-static {v3, v10, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-boolean v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 433
    .line 434
    if-eqz v3, :cond_12

    .line 435
    .line 436
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_f

    .line 441
    .line 442
    new-instance v3, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;

    .line 443
    .line 444
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 445
    .line 446
    invoke-direct {v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;-><init>(I)V

    .line 447
    .line 448
    .line 449
    iput-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_f
    if-eqz v18, :cond_11

    .line 453
    .line 454
    if-eqz v17, :cond_11

    .line 455
    .line 456
    new-instance v3, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;

    .line 457
    .line 458
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 459
    .line 460
    invoke-direct {v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;-><init>(I)V

    .line 461
    .line 462
    .line 463
    iput-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 464
    .line 465
    const/4 v3, 0x5

    .line 466
    if-ge v2, v3, :cond_10

    .line 467
    .line 468
    return v26

    .line 469
    :cond_10
    add-int/lit8 v3, v2, -0x5

    .line 470
    .line 471
    move v12, v3

    .line 472
    goto :goto_8

    .line 473
    :cond_11
    const/4 v3, 0x5

    .line 474
    new-instance v4, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;

    .line 475
    .line 476
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 477
    .line 478
    move/from16 v6, v18

    .line 479
    .line 480
    invoke-direct {v4, v5, v6}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;-><init>(IZ)V

    .line 481
    .line 482
    .line 483
    iput-object v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 484
    .line 485
    if-ge v2, v3, :cond_10

    .line 486
    .line 487
    return v26

    .line 488
    :cond_12
    new-instance v3, Lcom/ss/texturerender/VideoOCLSRWrapper;

    .line 489
    .line 490
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 491
    .line 492
    invoke-direct {v3, v4}, Lcom/ss/texturerender/VideoOCLSRWrapper;-><init>(I)V

    .line 493
    .line 494
    .line 495
    iput-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 496
    .line 497
    const/4 v3, 0x4

    .line 498
    if-gt v2, v3, :cond_28

    .line 499
    .line 500
    if-gez v2, :cond_13

    .line 501
    .line 502
    goto/16 :goto_12

    .line 503
    .line 504
    :cond_13
    :goto_7
    move v12, v2

    .line 505
    :goto_8
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 506
    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string/jumbo v5, "start init sr, altype: "

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v5, ", scale type: "

    .line 522
    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 527
    .line 528
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v5, ",MaxWidth:"

    .line 532
    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 537
    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v5, ",MaxHeight:"

    .line 542
    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 547
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-static {v3, v10, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 559
    .line 560
    const-string/jumbo v14, "sr init set max texture size failed"

    .line 561
    .line 562
    .line 563
    if-lez v8, :cond_1d

    .line 564
    .line 565
    iget v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 566
    .line 567
    if-lez v7, :cond_1d

    .line 568
    .line 569
    iget-boolean v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->useGLSr:Z

    .line 570
    .line 571
    if-eqz v3, :cond_17

    .line 572
    .line 573
    iget-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 574
    .line 575
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 576
    .line 577
    const v5, 0x8d65

    .line 578
    .line 579
    .line 580
    if-ne v4, v5, :cond_14

    .line 581
    .line 582
    const/4 v6, 0x1

    .line 583
    goto :goto_9

    .line 584
    :cond_14
    move/from16 v6, v24

    .line 585
    .line 586
    :goto_9
    move-object v4, v11

    .line 587
    move v5, v2

    .line 588
    invoke-virtual/range {v3 .. v8}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->glSrInit(Ljava/lang/String;IZII)Z

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-nez v3, :cond_16

    .line 593
    .line 594
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 595
    .line 596
    invoke-static {v1, v10, v14}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 600
    .line 601
    if-eqz v1, :cond_15

    .line 602
    .line 603
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 604
    .line 605
    const/4 v3, 0x1

    .line 606
    invoke-virtual {v1, v3, v2, v14}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 607
    .line 608
    .line 609
    :cond_15
    iget-object v1, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 610
    .line 611
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 612
    .line 613
    .line 614
    iput-object v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 615
    .line 616
    return v26

    .line 617
    :cond_16
    move/from16 v25, v9

    .line 618
    .line 619
    move-object v1, v10

    .line 620
    move/from16 v7, v20

    .line 621
    .line 622
    goto/16 :goto_10

    .line 623
    .line 624
    :cond_17
    const/4 v3, 0x1

    .line 625
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mAsyncInit:Z

    .line 626
    .line 627
    if-eqz v4, :cond_19

    .line 628
    .line 629
    iget-object v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 630
    .line 631
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 632
    .line 633
    const v6, 0x8d65

    .line 634
    .line 635
    .line 636
    if-ne v5, v6, :cond_18

    .line 637
    .line 638
    move v13, v3

    .line 639
    goto :goto_a

    .line 640
    :cond_18
    move/from16 v13, v24

    .line 641
    .line 642
    :goto_a
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 643
    .line 644
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 645
    .line 646
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 647
    .line 648
    iget-object v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 649
    .line 650
    move-object v14, v10

    .line 651
    move-object v10, v4

    .line 652
    move-object v1, v14

    .line 653
    move/from16 v4, v20

    .line 654
    .line 655
    move v14, v4

    .line 656
    move-object/from16 v21, v15

    .line 657
    .line 658
    move v15, v7

    .line 659
    move/from16 v16, v8

    .line 660
    .line 661
    move-object/from16 v17, v19

    .line 662
    .line 663
    move/from16 v18, v3

    .line 664
    .line 665
    move/from16 v19, v5

    .line 666
    .line 667
    move/from16 v20, v6

    .line 668
    .line 669
    invoke-virtual/range {v10 .. v23}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->InitVideoAsyncOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 670
    .line 671
    .line 672
    move v7, v4

    .line 673
    move/from16 v25, v9

    .line 674
    .line 675
    goto/16 :goto_10

    .line 676
    .line 677
    :cond_19
    move-object v1, v10

    .line 678
    move/from16 v4, v20

    .line 679
    .line 680
    iget-object v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 681
    .line 682
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 683
    .line 684
    const v6, 0x8d65

    .line 685
    .line 686
    .line 687
    if-ne v5, v6, :cond_1a

    .line 688
    .line 689
    move v13, v3

    .line 690
    goto :goto_b

    .line 691
    :cond_1a
    move/from16 v13, v24

    .line 692
    .line 693
    :goto_b
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 694
    .line 695
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 696
    .line 697
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 698
    .line 699
    move/from16 v25, v9

    .line 700
    .line 701
    iget-object v9, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 702
    .line 703
    move/from16 v27, v2

    .line 704
    .line 705
    move-object v2, v14

    .line 706
    move v14, v4

    .line 707
    move/from16 v28, v4

    .line 708
    .line 709
    const/4 v4, 0x1

    .line 710
    move v15, v7

    .line 711
    move/from16 v16, v8

    .line 712
    .line 713
    move-object/from16 v17, v19

    .line 714
    .line 715
    move/from16 v18, v5

    .line 716
    .line 717
    move/from16 v19, v6

    .line 718
    .line 719
    move/from16 v20, v3

    .line 720
    .line 721
    move-object/from16 v21, v9

    .line 722
    .line 723
    invoke-virtual/range {v10 .. v22}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-nez v3, :cond_1c

    .line 728
    .line 729
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 730
    .line 731
    invoke-static {v3, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 735
    .line 736
    if-eqz v1, :cond_1b

    .line 737
    .line 738
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 739
    .line 740
    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :cond_1b
    iget-object v1, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 744
    .line 745
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 746
    .line 747
    .line 748
    const/4 v9, 0x0

    .line 749
    iput-object v9, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 750
    .line 751
    return v26

    .line 752
    :cond_1c
    move/from16 v2, v27

    .line 753
    .line 754
    move/from16 v7, v28

    .line 755
    .line 756
    goto/16 :goto_10

    .line 757
    .line 758
    :cond_1d
    move/from16 v27, v2

    .line 759
    .line 760
    move/from16 v25, v9

    .line 761
    .line 762
    move-object v1, v10

    .line 763
    move-object v2, v14

    .line 764
    move-object v9, v15

    .line 765
    move/from16 v28, v20

    .line 766
    .line 767
    const/4 v4, 0x1

    .line 768
    iget-boolean v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->useGLSr:Z

    .line 769
    .line 770
    if-eqz v3, :cond_22

    .line 771
    .line 772
    iget-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 773
    .line 774
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 775
    .line 776
    const v6, 0x8d65

    .line 777
    .line 778
    .line 779
    if-ne v5, v6, :cond_1e

    .line 780
    .line 781
    move v6, v4

    .line 782
    goto :goto_c

    .line 783
    :cond_1e
    move/from16 v6, v24

    .line 784
    .line 785
    :goto_c
    iget v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 786
    .line 787
    move v15, v4

    .line 788
    move/from16 v13, v28

    .line 789
    .line 790
    move-object v4, v11

    .line 791
    move/from16 v5, v27

    .line 792
    .line 793
    invoke-virtual/range {v3 .. v8}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->glSrInit(Ljava/lang/String;IZII)Z

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    if-nez v3, :cond_20

    .line 798
    .line 799
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 800
    .line 801
    invoke-static {v3, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 805
    .line 806
    if-eqz v1, :cond_1f

    .line 807
    .line 808
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 809
    .line 810
    invoke-virtual {v1, v15, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 811
    .line 812
    .line 813
    :cond_1f
    iget-object v1, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 814
    .line 815
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 816
    .line 817
    .line 818
    iput-object v9, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 819
    .line 820
    return v26

    .line 821
    :cond_20
    move v7, v13

    .line 822
    :cond_21
    :goto_d
    move/from16 v2, v27

    .line 823
    .line 824
    goto/16 :goto_10

    .line 825
    .line 826
    :cond_22
    move v15, v4

    .line 827
    move/from16 v13, v28

    .line 828
    .line 829
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mAsyncInit:Z

    .line 830
    .line 831
    if-eqz v2, :cond_24

    .line 832
    .line 833
    iget-object v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 834
    .line 835
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 836
    .line 837
    const v3, 0x8d65

    .line 838
    .line 839
    .line 840
    if-ne v2, v3, :cond_23

    .line 841
    .line 842
    goto :goto_e

    .line 843
    :cond_23
    move/from16 v15, v24

    .line 844
    .line 845
    :goto_e
    iget v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 846
    .line 847
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 848
    .line 849
    iget v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 850
    .line 851
    iget v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 852
    .line 853
    iget-object v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 854
    .line 855
    move v7, v13

    .line 856
    move v13, v15

    .line 857
    move v14, v7

    .line 858
    move v15, v2

    .line 859
    move/from16 v16, v8

    .line 860
    .line 861
    move-object/from16 v17, v19

    .line 862
    .line 863
    move/from16 v18, v3

    .line 864
    .line 865
    move/from16 v19, v4

    .line 866
    .line 867
    move/from16 v20, v5

    .line 868
    .line 869
    move-object/from16 v21, v6

    .line 870
    .line 871
    invoke-virtual/range {v10 .. v23}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->InitVideoAsyncOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 872
    .line 873
    .line 874
    goto :goto_d

    .line 875
    :cond_24
    move v7, v13

    .line 876
    iget-object v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 877
    .line 878
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 879
    .line 880
    const v3, 0x8d65

    .line 881
    .line 882
    .line 883
    if-ne v2, v3, :cond_25

    .line 884
    .line 885
    move v13, v15

    .line 886
    goto :goto_f

    .line 887
    :cond_25
    move/from16 v13, v24

    .line 888
    .line 889
    :goto_f
    iget v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mBackend:I

    .line 890
    .line 891
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 892
    .line 893
    iget v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mPoolSize:I

    .line 894
    .line 895
    iget-object v5, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mLibPath:Ljava/lang/String;

    .line 896
    .line 897
    move-object/from16 v14, v19

    .line 898
    .line 899
    move v6, v15

    .line 900
    move v15, v2

    .line 901
    move/from16 v16, v3

    .line 902
    .line 903
    move/from16 v17, v4

    .line 904
    .line 905
    move-object/from16 v18, v5

    .line 906
    .line 907
    move-object/from16 v19, v22

    .line 908
    .line 909
    invoke-virtual/range {v10 .. v19}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->InitVideoOclSr(Ljava/lang/String;IZLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-nez v2, :cond_21

    .line 914
    .line 915
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 916
    .line 917
    const-string/jumbo v3, "sr init failed"

    .line 918
    .line 919
    .line 920
    invoke-static {v2, v1, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 924
    .line 925
    if-eqz v1, :cond_26

    .line 926
    .line 927
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 928
    .line 929
    invoke-virtual {v1, v6, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 930
    .line 931
    .line 932
    :cond_26
    iget-object v1, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 933
    .line 934
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 935
    .line 936
    .line 937
    iput-object v9, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 938
    .line 939
    return v26

    .line 940
    :goto_10
    iput v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 941
    .line 942
    iput-boolean v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mIsMaliSync:Z

    .line 943
    .line 944
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 945
    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    .line 947
    .line 948
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .line 950
    .line 951
    const-string v4, "init sr success, texTarget:"

    .line 952
    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    move/from16 v4, v25

    .line 957
    .line 958
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v4, " bundle:"

    .line 962
    .line 963
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v4

    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-static {v2, v1, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    :cond_27
    :goto_11
    return v24

    .line 981
    :cond_28
    :goto_12
    return v26
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const/16 v3, 0x82

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    if-le v2, v4, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 22
    .line 23
    const-string v4, "TR_VideoOCLSREffect"

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 29
    .line 30
    const-string/jumbo v3, "sr process fail 111"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 37
    .line 38
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 39
    .line 40
    invoke-virtual {v2, v5, v4, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/effect/VideoOCLSREffect;->originTex(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    return-object v1

    .line 48
    :cond_2
    iget v2, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 49
    .line 50
    if-ltz v2, :cond_13

    .line 51
    .line 52
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getUseSr()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v6, 0x1

    .line 59
    if-eq v2, v6, :cond_3

    .line 60
    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    invoke-virtual {v0, v2, v15}, Lcom/ss/texturerender/effect/VideoOCLSREffect;->supportProcessResolution(II)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_4

    .line 76
    .line 77
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/effect/VideoOCLSREffect;->originTex(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    return-object v1

    .line 82
    :cond_4
    iget-object v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 83
    .line 84
    iget v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 87
    .line 88
    .line 89
    iget-object v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 90
    .line 91
    invoke-virtual {v7, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOption(I)Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v14, 0x0

    .line 96
    const/high16 v23, 0x3f800000    # 1.0f

    .line 97
    .line 98
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    if-eqz v3, :cond_7

    .line 101
    .line 102
    const-string v9, "roi_mode"

    .line 103
    .line 104
    invoke-virtual {v3, v9, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-ne v9, v6, :cond_6

    .line 109
    .line 110
    const-string/jumbo v10, "x"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    const-string/jumbo v11, "y"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    const-string/jumbo v12, "width"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    const-string v13, "height"

    .line 132
    .line 133
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    cmpl-float v17, v10, v16

    .line 140
    .line 141
    if-ltz v17, :cond_6

    .line 142
    .line 143
    cmpg-float v17, v10, v23

    .line 144
    .line 145
    if-gez v17, :cond_6

    .line 146
    .line 147
    cmpl-float v17, v11, v16

    .line 148
    .line 149
    if-ltz v17, :cond_6

    .line 150
    .line 151
    cmpg-float v17, v11, v23

    .line 152
    .line 153
    if-gez v17, :cond_6

    .line 154
    .line 155
    cmpl-float v17, v12, v16

    .line 156
    .line 157
    if-lez v17, :cond_6

    .line 158
    .line 159
    cmpg-float v17, v12, v23

    .line 160
    .line 161
    if-gtz v17, :cond_6

    .line 162
    .line 163
    cmpl-float v16, v13, v16

    .line 164
    .line 165
    if-lez v16, :cond_6

    .line 166
    .line 167
    cmpg-float v16, v13, v23

    .line 168
    .line 169
    if-gtz v16, :cond_6

    .line 170
    .line 171
    int-to-float v7, v2

    .line 172
    mul-float/2addr v10, v7

    .line 173
    float-to-int v8, v10

    .line 174
    int-to-float v10, v15

    .line 175
    mul-float/2addr v11, v10

    .line 176
    float-to-int v11, v11

    .line 177
    mul-float/2addr v7, v12

    .line 178
    float-to-int v7, v7

    .line 179
    mul-float/2addr v10, v13

    .line 180
    float-to-int v10, v10

    .line 181
    add-int/2addr v10, v6

    .line 182
    if-le v10, v15, :cond_5

    .line 183
    .line 184
    move v10, v15

    .line 185
    :cond_5
    const-string v12, "roi_background"

    .line 186
    .line 187
    invoke-virtual {v3, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v12

    .line 191
    move/from16 v17, v7

    .line 192
    .line 193
    move v3, v8

    .line 194
    move/from16 v19, v9

    .line 195
    .line 196
    move/from16 v18, v10

    .line 197
    .line 198
    move/from16 v16, v11

    .line 199
    .line 200
    move-wide/from16 v20, v12

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    move/from16 v17, v2

    .line 204
    .line 205
    move-wide/from16 v20, v7

    .line 206
    .line 207
    move/from16 v19, v9

    .line 208
    .line 209
    move v3, v14

    .line 210
    move/from16 v16, v3

    .line 211
    .line 212
    :goto_0
    move/from16 v18, v15

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    move/from16 v17, v2

    .line 216
    .line 217
    move-wide/from16 v20, v7

    .line 218
    .line 219
    move v3, v14

    .line 220
    move/from16 v16, v3

    .line 221
    .line 222
    move/from16 v19, v16

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v24

    .line 229
    iget v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mScaleType:I

    .line 230
    .line 231
    iget v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 232
    .line 233
    const/16 v9, 0xc

    .line 234
    .line 235
    if-lt v8, v9, :cond_8

    .line 236
    .line 237
    iget-object v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 238
    .line 239
    const/16 v9, 0x93

    .line 240
    .line 241
    invoke-virtual {v8, v9}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-ltz v8, :cond_8

    .line 246
    .line 247
    if-eq v8, v7, :cond_8

    .line 248
    .line 249
    move/from16 v22, v8

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_8
    move/from16 v22, v7

    .line 253
    .line 254
    :goto_2
    iget-object v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 255
    .line 256
    const/16 v8, 0xaa

    .line 257
    .line 258
    invoke-virtual {v7, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->getBundleOption(I)Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    iget-object v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 263
    .line 264
    if-eq v7, v8, :cond_9

    .line 265
    .line 266
    iput-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 267
    .line 268
    :cond_9
    iget v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 269
    .line 270
    const v8, 0x8d65

    .line 271
    .line 272
    .line 273
    if-ne v7, v8, :cond_d

    .line 274
    .line 275
    iget-object v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 276
    .line 277
    iget-object v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 278
    .line 279
    invoke-virtual {v7, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 280
    .line 281
    .line 282
    iget-boolean v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 283
    .line 284
    if-eqz v7, :cond_c

    .line 285
    .line 286
    iget v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSuperAlgType:I

    .line 287
    .line 288
    const/16 v8, 0x11

    .line 289
    .line 290
    if-eq v7, v8, :cond_a

    .line 291
    .line 292
    const/16 v8, 0x13

    .line 293
    .line 294
    if-ne v7, v8, :cond_c

    .line 295
    .line 296
    :cond_a
    iget-object v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 297
    .line 298
    invoke-virtual {v3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getYUV2RGBMatrix(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/math/ColorConversion;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_b

    .line 303
    .line 304
    iget-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    iget-object v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 311
    .line 312
    iget-object v12, v3, Lcom/ss/texturerender/math/ColorConversion;->matrix:[F

    .line 313
    .line 314
    iget-object v13, v3, Lcom/ss/texturerender/math/ColorConversion;->offset:[F

    .line 315
    .line 316
    const/4 v3, 0x1

    .line 317
    iget-object v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 318
    .line 319
    move v9, v2

    .line 320
    move-object/from16 v16, v10

    .line 321
    .line 322
    move v10, v15

    .line 323
    move v14, v3

    .line 324
    move v3, v15

    .line 325
    move-object/from16 v15, v16

    .line 326
    .line 327
    invoke-virtual/range {v7 .. v15}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->VideoOclSrOesProcess(III[F[F[FZLandroid/os/Bundle;)I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    goto :goto_3

    .line 332
    :cond_b
    move v3, v15

    .line 333
    iget-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    iget-object v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 340
    .line 341
    const/4 v14, 0x0

    .line 342
    iget-object v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 343
    .line 344
    const/4 v12, 0x0

    .line 345
    const/4 v13, 0x0

    .line 346
    move v9, v2

    .line 347
    move v10, v3

    .line 348
    invoke-virtual/range {v7 .. v15}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->VideoOclSrOesProcess(III[F[F[FZLandroid/os/Bundle;)I

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    :goto_3
    move/from16 p2, v3

    .line 353
    .line 354
    goto/16 :goto_4

    .line 355
    .line 356
    :cond_c
    iget-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    iget-object v11, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSTMatrix:[F

    .line 363
    .line 364
    const/16 v26, 0x0

    .line 365
    .line 366
    iget-object v14, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 367
    .line 368
    const/4 v12, 0x1

    .line 369
    move v9, v2

    .line 370
    move v10, v15

    .line 371
    move v13, v3

    .line 372
    move-object v3, v14

    .line 373
    move/from16 v14, v16

    .line 374
    .line 375
    move/from16 p2, v15

    .line 376
    .line 377
    move/from16 v15, v17

    .line 378
    .line 379
    move/from16 v16, v18

    .line 380
    .line 381
    move/from16 v17, v19

    .line 382
    .line 383
    move-wide/from16 v18, v20

    .line 384
    .line 385
    move/from16 v20, v26

    .line 386
    .line 387
    move/from16 v21, v22

    .line 388
    .line 389
    move-object/from16 v22, v3

    .line 390
    .line 391
    invoke-virtual/range {v7 .. v22}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->VideoOclSrOesProcess(III[FZIIIIIJIILandroid/os/Bundle;)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    goto :goto_4

    .line 396
    :cond_d
    move/from16 p2, v15

    .line 397
    .line 398
    iget-boolean v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->useGLSr:Z

    .line 399
    .line 400
    if-eqz v7, :cond_e

    .line 401
    .line 402
    iget-object v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 403
    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    invoke-virtual {v3, v7, v8, v9, v6}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->VideoOclSrProcess(IIIZ)I

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    goto :goto_4

    .line 421
    :cond_e
    iget-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 422
    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    const/16 v26, 0x0

    .line 428
    .line 429
    iget-object v15, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mSrProParamter:Landroid/os/Bundle;

    .line 430
    .line 431
    const/4 v11, 0x1

    .line 432
    move v9, v2

    .line 433
    move/from16 v10, p2

    .line 434
    .line 435
    move v12, v3

    .line 436
    move/from16 v13, v16

    .line 437
    .line 438
    move/from16 v14, v17

    .line 439
    .line 440
    move-object v3, v15

    .line 441
    move/from16 v15, v18

    .line 442
    .line 443
    move/from16 v16, v19

    .line 444
    .line 445
    move-wide/from16 v17, v20

    .line 446
    .line 447
    move/from16 v19, v26

    .line 448
    .line 449
    move/from16 v20, v22

    .line 450
    .line 451
    move-object/from16 v21, v3

    .line 452
    .line 453
    invoke-virtual/range {v7 .. v21}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->VideoOclSrProcess(IIIZIIIIIJIILandroid/os/Bundle;)I

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    :goto_4
    iget v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumCostTime:F

    .line 458
    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 460
    .line 461
    .line 462
    move-result-wide v8

    .line 463
    sub-long v8, v8, v24

    .line 464
    .line 465
    long-to-float v8, v8

    .line 466
    add-float/2addr v3, v8

    .line 467
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumCostTime:F

    .line 468
    .line 469
    iget v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 470
    .line 471
    add-float v8, v8, v23

    .line 472
    .line 473
    iput v8, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 474
    .line 475
    div-float/2addr v3, v8

    .line 476
    iput v3, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessAverageCostTime:F

    .line 477
    .line 478
    const/16 v3, 0x84

    .line 479
    .line 480
    const/16 v8, 0x83

    .line 481
    .line 482
    const-string v9, ",height:"

    .line 483
    .line 484
    if-gez v7, :cond_10

    .line 485
    .line 486
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccess:I

    .line 487
    .line 488
    const-string/jumbo v7, "sr process failed,width:"

    .line 489
    .line 490
    .line 491
    const/4 v10, -0x1

    .line 492
    if-eq v6, v10, :cond_f

    .line 493
    .line 494
    iget v6, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 495
    .line 496
    new-instance v11, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    move/from16 v12, p2

    .line 511
    .line 512
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    invoke-static {v6, v4, v11}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iput v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccess:I

    .line 523
    .line 524
    goto :goto_5

    .line 525
    :cond_f
    move/from16 v12, p2

    .line 526
    .line 527
    :goto_5
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 528
    .line 529
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 530
    .line 531
    iget v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 532
    .line 533
    div-float/2addr v6, v10

    .line 534
    invoke-virtual {v4, v8, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 535
    .line 536
    .line 537
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 538
    .line 539
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessAverageCostTime:F

    .line 540
    .line 541
    invoke-virtual {v4, v3, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 545
    .line 546
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 547
    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {v3, v5, v4, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 573
    .line 574
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 575
    .line 576
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 577
    .line 578
    .line 579
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/effect/VideoOCLSREffect;->originTex(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    return-object v1

    .line 584
    :cond_10
    move/from16 v12, p2

    .line 585
    .line 586
    iget v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 587
    .line 588
    add-float v10, v10, v23

    .line 589
    .line 590
    iput v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 591
    .line 592
    iget-boolean v10, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mEnableBmf:Z

    .line 593
    .line 594
    if-eqz v10, :cond_11

    .line 595
    .line 596
    :goto_6
    move v15, v7

    .line 597
    goto :goto_7

    .line 598
    :cond_11
    iget-object v7, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 599
    .line 600
    invoke-virtual {v7}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->GetVideoOclSrOutput()I

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    goto :goto_6

    .line 605
    :goto_7
    iget-object v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 606
    .line 607
    const/4 v10, 0x6

    .line 608
    invoke-virtual {v7, v10, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 609
    .line 610
    .line 611
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccess:I

    .line 612
    .line 613
    if-eqz v6, :cond_12

    .line 614
    .line 615
    iget v6, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 616
    .line 617
    new-instance v7, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    const-string/jumbo v10, "sr process success,sr tex:"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v10, ",width:"

    .line 632
    .line 633
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    mul-int/lit8 v10, v2, 0x2

    .line 637
    .line 638
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    mul-int/lit8 v9, v12, 0x2

    .line 645
    .line 646
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    invoke-static {v6, v4, v7}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const/4 v4, 0x0

    .line 657
    iput v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccess:I

    .line 658
    .line 659
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 660
    .line 661
    .line 662
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 663
    .line 664
    iget v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSuccessFrame:F

    .line 665
    .line 666
    iget v6, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessSumFrame:F

    .line 667
    .line 668
    div-float/2addr v4, v6

    .line 669
    invoke-virtual {v1, v8, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 670
    .line 671
    .line 672
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 673
    .line 674
    iget v4, v0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mProcessAverageCostTime:F

    .line 675
    .line 676
    invoke-virtual {v1, v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 677
    .line 678
    .line 679
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 680
    .line 681
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 682
    .line 683
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 684
    .line 685
    .line 686
    new-instance v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 687
    .line 688
    mul-int/lit8 v16, v2, 0x2

    .line 689
    .line 690
    mul-int/lit8 v17, v12, 0x2

    .line 691
    .line 692
    const/16 v18, 0xde1

    .line 693
    .line 694
    const/4 v14, 0x0

    .line 695
    move-object v13, v1

    .line 696
    invoke-direct/range {v13 .. v18}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 697
    .line 698
    .line 699
    return-object v1

    .line 700
    :cond_13
    :goto_8
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 701
    .line 702
    const-string/jumbo v3, "sr process fail 222"

    .line 703
    .line 704
    .line 705
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/effect/VideoOCLSREffect;->originTex(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    return-object v1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 6
    .line 7
    const-string v1, "TR_VideoOCLSREffect"

    .line 8
    .line 9
    const-string v2, "release video sr"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;->ReleaseVideoOclSr()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mOclSr:Lcom/ss/texturerender/VideoOCLSRBaseWrapper;

    .line 21
    .line 22
    :cond_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public supportProcessResolution(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 12
    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 24
    .line 25
    iget v4, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget v4, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxWidth:I

    .line 32
    .line 33
    iget v5, p0, Lcom/ss/texturerender/effect/VideoOCLSREffect;->mMaxHeight:I

    .line 34
    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-gt v0, v3, :cond_1

    .line 40
    .line 41
    if-le v2, v4, :cond_2

    .line 42
    .line 43
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 44
    .line 45
    const-string p2, "TR_VideoOCLSREffect"

    .line 46
    .line 47
    const-string/jumbo v0, "width/height out of range"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->supportProcessResolution(II)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method
