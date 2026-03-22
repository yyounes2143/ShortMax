.class public Lcom/ss/ttvideoengine/DynamicLoadControl;
.super Lcom/ss/ttm/player/LoadControl;
.source "DynamicLoadControl.java"


# static fields
.field private static final CACHE_AUDIO_DURATION_MS:I = 0x28

.field private static final CACHE_VIDEO_DURATION_MS:I = 0x1e


# instance fields
.field private mAudioTrackCacheDurationMs:I

.field private mBeta:F

.field private mCallbackCount:I

.field private mCaseType:I

.field private mCostTimeMaxMs:I

.field private mFirstCallBack:Z

.field private mGamma:F

.field private mIfStartup:Z

.field protected mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

.field private mNeedBuffer:J

.field private mRebufferingCount:I

.field private mRebufferingDurationInitMs:I

.field private mRebufferingDurationMaxMs:I

.field private mRebufferingIncFactor:F

.field private mRebufferingIncType:I

.field private mRebufferingTimeEarlyMs:I

.field private mStartupDurationMaxMs:I

.field private mStartupDurationMinMs:I

.field private mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private mVideoTrackCacheDurationMs:I


# direct methods
.method public constructor <init>(IIIIFFIIFILcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3
    .param p11    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/LoadControl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 6
    .line 7
    const-wide/16 v1, 0x7d0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mNeedBuffer:J

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mFirstCallBack:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mIfStartup:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCaseType:I

    .line 17
    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCallbackCount:I

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 21
    .line 22
    iput p2, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMaxMs:I

    .line 23
    .line 24
    iput p3, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingTimeEarlyMs:I

    .line 25
    .line 26
    iput p4, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCostTimeMaxMs:I

    .line 27
    .line 28
    iput p5, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mBeta:F

    .line 29
    .line 30
    iput p6, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mGamma:F

    .line 31
    .line 32
    iput p7, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 33
    .line 34
    iput p8, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationMaxMs:I

    .line 35
    .line 36
    iput p9, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncFactor:F

    .line 37
    .line 38
    iput p10, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncType:I

    .line 39
    .line 40
    iput-object p11, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 41
    .line 42
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
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mVideoTrackCacheDurationMs:I

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
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mVideoTrackCacheDurationMs:I

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
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mAudioTrackCacheDurationMs:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mVideoTrackCacheDurationMs:I

    .line 13
    .line 14
    return p1
.end method

.method protected shouldStartPlayback(JFZ)Z
    .locals 22

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
    const/4 v5, 0x2

    .line 10
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    const-string v8, "dynamiclc"

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    if-eqz p4, :cond_4

    .line 16
    .line 17
    iget v11, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncType:I

    .line 18
    .line 19
    if-eqz v11, :cond_2

    .line 20
    .line 21
    if-eq v11, v9, :cond_1

    .line 22
    .line 23
    if-eq v11, v5, :cond_0

    .line 24
    .line 25
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 26
    .line 27
    int-to-long v5, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationMaxMs:I

    .line 30
    .line 31
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 32
    .line 33
    add-int v7, v5, v6

    .line 34
    .line 35
    int-to-double v11, v7

    .line 36
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 37
    .line 38
    div-double/2addr v11, v13

    .line 39
    add-int/2addr v5, v6

    .line 40
    int-to-double v9, v5

    .line 41
    div-double/2addr v9, v13

    .line 42
    int-to-double v5, v6

    .line 43
    sub-double/2addr v9, v5

    .line 44
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncFactor:F

    .line 45
    .line 46
    float-to-double v5, v5

    .line 47
    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v5, v13

    .line 53
    iget v7, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 54
    .line 55
    int-to-double v13, v7

    .line 56
    mul-double/2addr v5, v13

    .line 57
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    mul-double/2addr v9, v5

    .line 62
    sub-double/2addr v11, v9

    .line 63
    double-to-long v5, v11

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 66
    .line 67
    int-to-double v9, v5

    .line 68
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncFactor:F

    .line 69
    .line 70
    float-to-double v11, v5

    .line 71
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 72
    .line 73
    int-to-double v13, v5

    .line 74
    invoke-static {v13, v14}, Ljava/lang/Math;->log1p(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    mul-double/2addr v11, v13

    .line 79
    add-double/2addr v11, v6

    .line 80
    mul-double/2addr v9, v11

    .line 81
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationMaxMs:I

    .line 82
    .line 83
    int-to-double v5, v5

    .line 84
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    double-to-long v5, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 91
    .line 92
    int-to-float v6, v5

    .line 93
    iget v7, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 94
    .line 95
    int-to-float v7, v7

    .line 96
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncFactor:F

    .line 97
    .line 98
    mul-float/2addr v7, v9

    .line 99
    int-to-float v5, v5

    .line 100
    mul-float/2addr v7, v5

    .line 101
    add-float/2addr v6, v7

    .line 102
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationMaxMs:I

    .line 103
    .line 104
    int-to-float v5, v5

    .line 105
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    float-to-long v5, v5

    .line 110
    :goto_0
    cmp-long v7, v1, v5

    .line 111
    .line 112
    if-ltz v7, :cond_3

    .line 113
    .line 114
    iget v7, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 115
    .line 116
    const/4 v9, 0x1

    .line 117
    add-int/2addr v7, v9

    .line 118
    iput v7, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 119
    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v9, " parameters:  rdi "

    .line 126
    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationInitMs:I

    .line 131
    .line 132
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v9, ", rdm "

    .line 136
    .line 137
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingDurationMaxMs:I

    .line 141
    .line 142
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v9, ", rif "

    .line 146
    .line 147
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncFactor:F

    .line 151
    .line 152
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v9, ", rit "

    .line 156
    .line 157
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingIncType:I

    .line 161
    .line 162
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v8, v7}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v9, " buffer end:  rebuf count "

    .line 178
    .line 179
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingCount:I

    .line 183
    .line 184
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v8, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :cond_3
    const/4 v9, 0x0

    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :cond_4
    iget-boolean v9, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mFirstCallBack:Z

    .line 213
    .line 214
    if-eqz v9, :cond_c

    .line 215
    .line 216
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastTargetBitrate()D

    .line 221
    .line 222
    .line 223
    move-result-wide v9

    .line 224
    const-wide/16 v11, 0x0

    .line 225
    .line 226
    cmpl-double v9, v9, v11

    .line 227
    .line 228
    if-ltz v9, :cond_5

    .line 229
    .line 230
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastTargetBitrate()D

    .line 235
    .line 236
    .line 237
    move-result-wide v9

    .line 238
    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 239
    .line 240
    mul-double/2addr v9, v11

    .line 241
    mul-double/2addr v9, v11

    .line 242
    goto :goto_1

    .line 243
    :cond_5
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 244
    .line 245
    :goto_1
    double-to-long v9, v9

    .line 246
    iget-object v11, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 247
    .line 248
    invoke-virtual {v11}, Lcom/ss/ttvideoengine/TTVideoEngine;->getMediaPlayer()Lcom/ss/ttm/player/MediaPlayer;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    const-wide/16 v12, -0x1

    .line 253
    .line 254
    if-eqz v11, :cond_6

    .line 255
    .line 256
    const/16 v14, 0xab

    .line 257
    .line 258
    invoke-interface {v11, v14, v12, v13}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 259
    .line 260
    .line 261
    move-result-wide v12

    .line 262
    :cond_6
    iget-boolean v11, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mIfStartup:Z

    .line 263
    .line 264
    if-eqz v11, :cond_7

    .line 265
    .line 266
    long-to-double v11, v12

    .line 267
    iget v13, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mBeta:F

    .line 268
    .line 269
    float-to-double v13, v13

    .line 270
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mGamma:F

    .line 271
    .line 272
    float-to-double v6, v5

    .line 273
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingTimeEarlyMs:I

    .line 274
    .line 275
    move-object/from16 v18, v3

    .line 276
    .line 277
    move-object/from16 v19, v4

    .line 278
    .line 279
    int-to-double v3, v5

    .line 280
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 281
    .line 282
    mul-double v3, v3, v16

    .line 283
    .line 284
    const-wide v20, 0x408f400000000000L    # 1000.0

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    div-double v3, v3, v20

    .line 290
    .line 291
    sub-double v3, v16, v3

    .line 292
    .line 293
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    .line 294
    .line 295
    .line 296
    move-result-wide v3

    .line 297
    mul-double/2addr v6, v3

    .line 298
    add-double/2addr v13, v6

    .line 299
    mul-double/2addr v11, v13

    .line 300
    double-to-long v12, v11

    .line 301
    goto :goto_2

    .line 302
    :cond_7
    move-object/from16 v18, v3

    .line 303
    .line 304
    move-object/from16 v19, v4

    .line 305
    .line 306
    :goto_2
    long-to-float v3, v9

    .line 307
    const/high16 v4, 0x3f800000    # 1.0f

    .line 308
    .line 309
    mul-float/2addr v3, v4

    .line 310
    long-to-float v5, v12

    .line 311
    div-float/2addr v3, v5

    .line 312
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingTimeEarlyMs:I

    .line 313
    .line 314
    int-to-long v6, v5

    .line 315
    sub-long/2addr v6, v1

    .line 316
    long-to-float v6, v6

    .line 317
    mul-float/2addr v6, v4

    .line 318
    iget v7, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCostTimeMaxMs:I

    .line 319
    .line 320
    add-int/2addr v5, v7

    .line 321
    int-to-float v5, v5

    .line 322
    div-float/2addr v6, v5

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v7, " targetBitrate: "

    .line 329
    .line 330
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v7, ", videoBitrate: "

    .line 337
    .line 338
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v7, ", rate: "

    .line 345
    .line 346
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v7, ", threshold: "

    .line 353
    .line 354
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-static {v8, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingTimeEarlyMs:I

    .line 368
    .line 369
    int-to-long v14, v5

    .line 370
    cmp-long v7, v1, v14

    .line 371
    .line 372
    if-ltz v7, :cond_8

    .line 373
    .line 374
    iget v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 375
    .line 376
    int-to-long v3, v3

    .line 377
    const/4 v5, 0x1

    .line 378
    goto :goto_3

    .line 379
    :cond_8
    const-wide/16 v14, 0x0

    .line 380
    .line 381
    cmp-long v7, v9, v14

    .line 382
    .line 383
    if-lez v7, :cond_b

    .line 384
    .line 385
    cmp-long v7, v12, v14

    .line 386
    .line 387
    if-lez v7, :cond_b

    .line 388
    .line 389
    cmpl-float v7, v3, v4

    .line 390
    .line 391
    if-ltz v7, :cond_9

    .line 392
    .line 393
    iget v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 394
    .line 395
    int-to-long v3, v3

    .line 396
    const/4 v5, 0x2

    .line 397
    goto :goto_3

    .line 398
    :cond_9
    cmpg-float v7, v3, v4

    .line 399
    .line 400
    if-gez v7, :cond_a

    .line 401
    .line 402
    cmpl-float v7, v3, v6

    .line 403
    .line 404
    if-ltz v7, :cond_a

    .line 405
    .line 406
    sub-float/2addr v4, v3

    .line 407
    int-to-float v3, v5

    .line 408
    mul-float/2addr v4, v3

    .line 409
    iget v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 410
    .line 411
    int-to-float v3, v3

    .line 412
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    iget v4, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMaxMs:I

    .line 417
    .line 418
    int-to-float v4, v4

    .line 419
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    float-to-long v3, v3

    .line 424
    const/4 v5, 0x3

    .line 425
    goto :goto_3

    .line 426
    :cond_a
    sub-float/2addr v4, v6

    .line 427
    int-to-float v3, v5

    .line 428
    mul-float/2addr v4, v3

    .line 429
    iget v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 430
    .line 431
    int-to-float v3, v3

    .line 432
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    iget v4, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMaxMs:I

    .line 437
    .line 438
    int-to-float v4, v4

    .line 439
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    float-to-long v3, v3

    .line 444
    const/4 v5, 0x4

    .line 445
    goto :goto_3

    .line 446
    :cond_b
    sub-float/2addr v4, v6

    .line 447
    int-to-float v3, v5

    .line 448
    mul-float/2addr v4, v3

    .line 449
    iget v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 450
    .line 451
    int-to-float v3, v3

    .line 452
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    iget v4, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMaxMs:I

    .line 457
    .line 458
    int-to-float v4, v4

    .line 459
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    float-to-long v3, v3

    .line 464
    const/4 v5, 0x5

    .line 465
    :goto_3
    iput-wide v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mNeedBuffer:J

    .line 466
    .line 467
    iput v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCaseType:I

    .line 468
    .line 469
    const/4 v5, 0x0

    .line 470
    iput-boolean v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mFirstCallBack:Z

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_c
    move-object/from16 v18, v3

    .line 474
    .line 475
    move-object/from16 v19, v4

    .line 476
    .line 477
    iget-wide v3, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mNeedBuffer:J

    .line 478
    .line 479
    :goto_4
    cmp-long v5, v1, v3

    .line 480
    .line 481
    if-ltz v5, :cond_d

    .line 482
    .line 483
    const/4 v9, 0x1

    .line 484
    goto :goto_5

    .line 485
    :cond_d
    const/4 v9, 0x0

    .line 486
    :goto_5
    iget v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCallbackCount:I

    .line 487
    .line 488
    const/4 v6, 0x1

    .line 489
    add-int/2addr v5, v6

    .line 490
    iput v5, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCallbackCount:I

    .line 491
    .line 492
    if-eqz v9, :cond_e

    .line 493
    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v6, " parameters:  D_min "

    .line 500
    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMinMs:I

    .line 505
    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v6, ", D_max "

    .line 510
    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mStartupDurationMaxMs:I

    .line 515
    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v6, ", T_min "

    .line 520
    .line 521
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mRebufferingTimeEarlyMs:I

    .line 525
    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v6, ", C_max "

    .line 530
    .line 531
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCostTimeMaxMs:I

    .line 535
    .line 536
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-static {v8, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v6, " start up: ifstartup "

    .line 552
    .line 553
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-boolean v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mIfStartup:Z

    .line 557
    .line 558
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v6, ", case "

    .line 562
    .line 563
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    iget v6, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCaseType:I

    .line 567
    .line 568
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    move-object/from16 v6, v19

    .line 572
    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    move-object/from16 v3, v18

    .line 580
    .line 581
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v1, ", callback count "

    .line 588
    .line 589
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    iget v1, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCallbackCount:I

    .line 593
    .line 594
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-static {v8, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const/4 v1, 0x1

    .line 605
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mFirstCallBack:Z

    .line 606
    .line 607
    const/4 v1, 0x0

    .line 608
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mIfStartup:Z

    .line 609
    .line 610
    iput v1, v0, Lcom/ss/ttvideoengine/DynamicLoadControl;->mCallbackCount:I

    .line 611
    .line 612
    :cond_e
    :goto_6
    return v9
.end method
