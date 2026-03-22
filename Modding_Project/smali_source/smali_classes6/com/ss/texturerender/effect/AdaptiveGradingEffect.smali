.class public Lcom/ss/texturerender/effect/AdaptiveGradingEffect;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "AdaptiveGradingEffect.java"


# static fields
.field private static final PROCESS_NEED_BMF_COMPUTE:I = -0x2

.field private static final PROCESS_NO_NEED_PROCESS:I = -0x1


# instance fields
.field private mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

.field private mDstBrightness:F

.field private mDstContrast:F

.field private mDstSaturation:F

.field private mGopTimeMs:J

.field private mIsNewFrame:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mSrcBrightness:F

.field private mSrcContrast:F

.field private mSrcSaturation:F

.field private mStMatrix:[F

.field private mStartPlayTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x7d0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mGopTimeMs:J

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStartPlayTime:J

    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 16
    .line 17
    new-instance v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/ss/texturerender/AdaptiveGradingWrapper;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 23
    .line 24
    return-void
.end method

.method private getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    cmpl-float p2, p1, p2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    return p1
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)I
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    new-array v2, v0, [F

    .line 12
    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string v0, "max_width"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxWidth:I

    .line 24
    .line 25
    const-string v0, "max_height"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxHeight:I

    .line 32
    .line 33
    const-string v0, "cache_file"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "gop_time_ms"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iput-wide v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mGopTimeMs:J

    .line 46
    .line 47
    const-string v1, "brightness_threshold"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "contrast_threshold"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "saturation_threshold"

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    move-object v9, p1

    .line 66
    move-object v6, v0

    .line 67
    :goto_0
    move-object v7, v1

    .line 68
    move-object v8, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string p1, ""

    .line 71
    .line 72
    move-object v6, p1

    .line 73
    move-object v9, v0

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "AdaptiveGrading width="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxWidth:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "::height="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxHeight:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "AdaptiveGrading"

    .line 107
    .line 108
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 112
    .line 113
    iget v4, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxWidth:I

    .line 114
    .line 115
    iget v5, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mMaxHeight:I

    .line 116
    .line 117
    invoke-virtual/range {v3 .. v9}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->init(IILjava/lang/String;[F[F[F)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const/4 p1, -0x1

    .line 126
    :goto_2
    return p1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 4
    .line 5
    const-string v2, "AdaptiveGrading"

    .line 6
    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    iget-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 18
    .line 19
    const/high16 v3, -0x40800000    # -1.0f

    .line 20
    .line 21
    cmpl-float v4, v1, v3

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    iget v4, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 26
    .line 27
    cmpl-float v4, v4, v3

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    iget v4, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 32
    .line 33
    cmpl-float v3, v4, v3

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 38
    .line 39
    const-string v3, "process no need"

    .line 40
    .line 41
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    cmpl-float v1, v1, v2

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    iget v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 51
    .line 52
    cmpl-float v1, v1, v2

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 57
    .line 58
    cmpl-float v1, v1, v2

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iget-wide v3, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStartPlayTime:J

    .line 67
    .line 68
    sub-long/2addr v1, v3

    .line 69
    iget-wide v3, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mGopTimeMs:J

    .line 70
    .line 71
    cmp-long v1, v1, v3

    .line 72
    .line 73
    if-lez v1, :cond_2

    .line 74
    .line 75
    const/high16 v1, -0x40000000    # -2.0f

    .line 76
    .line 77
    iput v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 78
    .line 79
    iput v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 80
    .line 81
    iput v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object p1

    .line 85
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const v2, 0x8d65

    .line 90
    .line 91
    .line 92
    if-ne v1, v2, :cond_6

    .line 93
    .line 94
    iget-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStMatrix:[F

    .line 95
    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    const/16 v1, 0x10

    .line 99
    .line 100
    new-array v1, v1, [F

    .line 101
    .line 102
    iput-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStMatrix:[F

    .line 103
    .line 104
    :cond_4
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 105
    .line 106
    iget-object v2, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStMatrix:[F

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    iget-object v7, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStMatrix:[F

    .line 126
    .line 127
    iget v8, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 128
    .line 129
    iget v9, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstBrightness:F

    .line 130
    .line 131
    iget v10, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 132
    .line 133
    iget v11, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstContrast:F

    .line 134
    .line 135
    iget v12, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 136
    .line 137
    iget v13, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstSaturation:F

    .line 138
    .line 139
    iget-boolean v14, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mIsNewFrame:Z

    .line 140
    .line 141
    invoke-virtual/range {v3 .. v14}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->processOES(III[FFFFFFFZ)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ne v1, v2, :cond_5

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    :goto_1
    move/from16 v20, v2

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    const/16 v2, 0xde1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :goto_2
    new-instance v2, Lcom/ss/texturerender/effect/EffectTexture;

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v18

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v19

    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    move-object v15, v2

    .line 174
    move/from16 v17, v1

    .line 175
    .line 176
    invoke-direct/range {v15 .. v20}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    iget-object v3, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    iget v7, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 195
    .line 196
    iget v8, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstBrightness:F

    .line 197
    .line 198
    iget v9, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 199
    .line 200
    iget v10, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstContrast:F

    .line 201
    .line 202
    iget v11, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 203
    .line 204
    iget v12, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstSaturation:F

    .line 205
    .line 206
    iget-boolean v13, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mIsNewFrame:Z

    .line 207
    .line 208
    invoke-virtual/range {v3 .. v13}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->process(IIIFFFFFFZ)I

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    new-instance v2, Lcom/ss/texturerender/effect/EffectTexture;

    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 215
    .line 216
    .line 217
    move-result v17

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    const/16 v19, 0xde1

    .line 223
    .line 224
    const/4 v15, 0x0

    .line 225
    move-object v14, v2

    .line 226
    invoke-direct/range {v14 .. v19}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 230
    .line 231
    .line 232
    :goto_3
    iget-boolean v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mIsNewFrame:Z

    .line 233
    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v3

    .line 240
    iput-wide v3, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStartPlayTime:J

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    iput-boolean v1, v0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mIsNewFrame:Z

    .line 244
    .line 245
    :cond_7
    return-object v2

    .line 246
    :cond_8
    :goto_4
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 247
    .line 248
    const-string v3, "process mAdaptiveGradingWrappers null"

    .line 249
    .line 250
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->free()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mAdaptiveGradingWrappers:Lcom/ss/texturerender/AdaptiveGradingWrapper;

    .line 8
    .line 9
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 10
    .line 11
    const-string v1, "AdaptiveGrading"

    .line 12
    .line 13
    const-string v2, "release"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    :try_start_0
    const-string v0, "dst_brightness"

    .line 8
    .line 9
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstBrightness:F

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstBrightness:F

    .line 16
    .line 17
    const-string v0, "dst_contrast"

    .line 18
    .line 19
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstContrast:F

    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstContrast:F

    .line 26
    .line 27
    const-string v0, "dst_saturation"

    .line 28
    .line 29
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstSaturation:F

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mDstSaturation:F

    .line 36
    .line 37
    const-string/jumbo v0, "src_saturation"

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 41
    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F

    .line 47
    .line 48
    const-string/jumbo v0, "src_contrast"

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 58
    .line 59
    const-string/jumbo v0, "src_brightness"

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 63
    .line 64
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;F)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 69
    .line 70
    const-string v0, "is_new_frame"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mIsNewFrame:Z

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mStartPlayTime:J

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcBrightness:F

    .line 86
    .line 87
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcContrast:F

    .line 88
    .line 89
    iput p1, p0, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;->mSrcSaturation:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "AdaptiveGrading ex="

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v1, "AdaptiveGrading"

    .line 117
    .line 118
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method
