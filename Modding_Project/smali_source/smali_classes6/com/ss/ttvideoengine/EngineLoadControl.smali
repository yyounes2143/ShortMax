.class public Lcom/ss/ttvideoengine/EngineLoadControl;
.super Lcom/ss/ttm/player/LoadControl;
.source "EngineLoadControl.java"


# static fields
.field private static final CACHE_AUDIO_DURATION_MS:I = 0x28

.field private static final CACHE_VIDEO_DURATION_MS:I = 0x1e


# instance fields
.field private mAudioTrackCacheDurationMs:I

.field private mRebufferingCount:I

.field private mRebufferingDurationInitMs:I

.field private mRebufferingDurationMaxMs:I

.field private mRebufferingIncFactor:F

.field private mRebufferingIncType:I

.field private mStartupDurationNonpreloadedMs:I

.field private mStartupDurationPreloadedMs:I

.field private mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private mVideoTrackCacheDurationMs:I


# direct methods
.method public constructor <init>(IIIIFILcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/LoadControl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 6
    .line 7
    iput p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationPreloadedMs:I

    .line 8
    .line 9
    iput p2, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationNonpreloadedMs:I

    .line 10
    .line 11
    iput p3, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 12
    .line 13
    iput p4, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationMaxMs:I

    .line 14
    .line 15
    iput p5, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncFactor:F

    .line 16
    .line 17
    iput p6, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncType:I

    .line 18
    .line 19
    iput-object p7, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method protected onCodecStackSelected(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mVideoTrackCacheDurationMs:I

    .line 13
    .line 14
    return p1
.end method

.method protected onFilterStackSelected(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mVideoTrackCacheDurationMs:I

    .line 13
    .line 14
    return p1
.end method

.method protected onTrackSelected(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/EngineLoadControl;->mVideoTrackCacheDurationMs:I

    .line 13
    .line 14
    return p1
.end method

.method protected shouldStartPlayback(JFZ)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    const-string v3, ", now buf "

    .line 6
    .line 7
    const-string v4, ", need buf "

    .line 8
    .line 9
    const-string v5, " rit "

    .line 10
    .line 11
    const-string v6, " rif "

    .line 12
    .line 13
    const-string v7, " rdm "

    .line 14
    .line 15
    const-string v8, " rdi "

    .line 16
    .line 17
    const-string v9, " sdnp "

    .line 18
    .line 19
    const-string v10, " parameters:  sdp "

    .line 20
    .line 21
    const-string v11, "defaultlc"

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    iget v14, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncType:I

    .line 27
    .line 28
    if-eqz v14, :cond_1

    .line 29
    .line 30
    if-eq v14, v12, :cond_0

    .line 31
    .line 32
    iget v14, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 33
    .line 34
    int-to-long v14, v14

    .line 35
    move-object/from16 v17, v3

    .line 36
    .line 37
    move-object/from16 v18, v4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v14, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 41
    .line 42
    int-to-double v14, v14

    .line 43
    iget v13, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncFactor:F

    .line 44
    .line 45
    float-to-double v12, v13

    .line 46
    move-object/from16 v17, v3

    .line 47
    .line 48
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 49
    .line 50
    move-object/from16 v18, v4

    .line 51
    .line 52
    int-to-double v3, v3

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    mul-double/2addr v12, v3

    .line 58
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 59
    .line 60
    add-double/2addr v12, v3

    .line 61
    mul-double/2addr v14, v12

    .line 62
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationMaxMs:I

    .line 63
    .line 64
    int-to-double v3, v3

    .line 65
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    double-to-long v14, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object/from16 v17, v3

    .line 72
    .line 73
    move-object/from16 v18, v4

    .line 74
    .line 75
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 76
    .line 77
    int-to-float v4, v3

    .line 78
    iget v12, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 79
    .line 80
    int-to-float v12, v12

    .line 81
    iget v13, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncFactor:F

    .line 82
    .line 83
    mul-float/2addr v12, v13

    .line 84
    int-to-float v3, v3

    .line 85
    mul-float/2addr v12, v3

    .line 86
    add-float/2addr v4, v12

    .line 87
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationMaxMs:I

    .line 88
    .line 89
    int-to-float v3, v3

    .line 90
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    float-to-long v14, v3

    .line 95
    :goto_0
    cmp-long v3, v1, v14

    .line 96
    .line 97
    if-ltz v3, :cond_2

    .line 98
    .line 99
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    add-int/2addr v3, v4

    .line 103
    iput v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v10, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationPreloadedMs:I

    .line 114
    .line 115
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v9, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationNonpreloadedMs:I

    .line 122
    .line 123
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v8, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 130
    .line 131
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v7, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationMaxMs:I

    .line 138
    .line 139
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v6, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncFactor:F

    .line 146
    .line 147
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v5, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncType:I

    .line 154
    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v11, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v5, " buffer end:  rebuf count "

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v5, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingCount:I

    .line 176
    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-object/from16 v12, v18

    .line 181
    .line 182
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    move-object/from16 v13, v17

    .line 189
    .line 190
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v11, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_5

    .line 204
    .line 205
    :cond_2
    const/4 v12, 0x0

    .line 206
    goto/16 :goto_6

    .line 207
    .line 208
    :cond_3
    move-object v13, v3

    .line 209
    move/from16 v19, v12

    .line 210
    .line 211
    move-object v12, v4

    .line 212
    move/from16 v4, v19

    .line 213
    .line 214
    iget-object v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 215
    .line 216
    const/16 v14, 0x1cd

    .line 217
    .line 218
    invoke-virtual {v3, v14}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 219
    .line 220
    .line 221
    move-result-wide v14

    .line 222
    const-wide/16 v16, 0x0

    .line 223
    .line 224
    cmp-long v3, v14, v16

    .line 225
    .line 226
    if-lez v3, :cond_4

    .line 227
    .line 228
    move v3, v4

    .line 229
    goto :goto_1

    .line 230
    :cond_4
    const/4 v3, 0x0

    .line 231
    :goto_1
    if-eqz v3, :cond_5

    .line 232
    .line 233
    iget v14, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationPreloadedMs:I

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_5
    iget v14, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationNonpreloadedMs:I

    .line 237
    .line 238
    :goto_2
    int-to-long v14, v14

    .line 239
    cmp-long v14, v1, v14

    .line 240
    .line 241
    if-ltz v14, :cond_6

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    const/4 v4, 0x0

    .line 245
    :goto_3
    if-eqz v4, :cond_8

    .line 246
    .line 247
    new-instance v14, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget v10, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationPreloadedMs:I

    .line 256
    .line 257
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v9, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationNonpreloadedMs:I

    .line 264
    .line 265
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v8, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationInitMs:I

    .line 272
    .line 273
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget v7, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingDurationMaxMs:I

    .line 280
    .line 281
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget v6, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncFactor:F

    .line 288
    .line 289
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget v5, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mRebufferingIncType:I

    .line 296
    .line 297
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v11, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v6, " start up:    preloaded "

    .line 313
    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    if-eqz v3, :cond_7

    .line 324
    .line 325
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationPreloadedMs:I

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_7
    iget v3, v0, Lcom/ss/ttvideoengine/EngineLoadControl;->mStartupDurationNonpreloadedMs:I

    .line 329
    .line 330
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v11, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_8
    :goto_5
    move v12, v4

    .line 347
    :goto_6
    return v12
.end method
