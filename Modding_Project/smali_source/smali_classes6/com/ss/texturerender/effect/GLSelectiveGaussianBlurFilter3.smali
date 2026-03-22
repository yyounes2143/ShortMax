.class public Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "GLSelectiveGaussianBlurFilter3.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLSelectiveGaussianBlurFilter3"


# instance fields
.field private m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

.field private m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

.field private mCount:I

.field private mDisableOpt:Z

.field private mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

.field private mGauBlurControlNum:I

.field private mGauBlurHaveSucessful:Z

.field private mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

.field protected mProcessStage:I

.field private mRenderPasses:I

.field private mRepeatType:I

.field protected mSigma:F

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRenderPasses:I

    .line 20
    .line 21
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRepeatType:I

    .line 22
    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    .line 25
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSigma:F

    .line 26
    .line 27
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceHeight:I

    .line 31
    .line 32
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceWidth:I

    .line 33
    .line 34
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 35
    .line 36
    const/4 p1, 0x4

    .line 37
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 38
    .line 39
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "new,this:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/AbsEffect;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "TR_GLSelectiveGaussianBlurFilter3"

    .line 63
    .line 64
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private getFrameBuffer(ILcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/FrameBuffer;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRenderPasses:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_1
    return-object p2
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)I
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "strength"

    .line 5
    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSigma:F

    .line 14
    .line 15
    const-string v0, "repeat_type"

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRepeatType:I

    .line 23
    .line 24
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSigma:F

    .line 25
    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    cmpl-float v2, v2, v3

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq v0, v2, :cond_0

    .line 35
    .line 36
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v3

    .line 39
    :goto_0
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRenderPasses:I

    .line 40
    .line 41
    const-string v0, "s_d_gau_opt"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    const/16 v5, 0xde1

    .line 52
    .line 53
    const/16 v6, 0x4e26

    .line 54
    .line 55
    const-string/jumbo v7, "texture_type"

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iput v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 61
    .line 62
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 74
    .line 75
    :cond_1
    const v1, 0x8d65

    .line 76
    .line 77
    .line 78
    if-ne v0, v1, :cond_2

    .line 79
    .line 80
    new-instance v3, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 81
    .line 82
    iget v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 83
    .line 84
    invoke-direct {v3, v4}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 88
    .line 89
    invoke-virtual {p1, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->init(Landroid/os/Bundle;)I

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 105
    .line 106
    iput-boolean v2, v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEnableSecondPass:Z

    .line 107
    .line 108
    invoke-virtual {v1, v6, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 116
    .line 117
    .line 118
    :cond_3
    new-instance v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 119
    .line 120
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 121
    .line 122
    invoke-direct {v1, v3}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;-><init>(I)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 126
    .line 127
    invoke-virtual {p1, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->init(Landroid/os/Bundle;)I

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 136
    .line 137
    iput-boolean v2, p1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEnableSecondPass:Z

    .line 138
    .line 139
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 145
    .line 146
    invoke-virtual {p1, v6, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 147
    .line 148
    .line 149
    move v5, v0

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 156
    .line 157
    .line 158
    :cond_5
    new-instance v0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 159
    .line 160
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 161
    .line 162
    invoke-direct {v0, v3}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;-><init>(I)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 166
    .line 167
    invoke-virtual {p1, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->init(Landroid/os/Bundle;)I

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 176
    .line 177
    iput-boolean v2, v0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mEnableSecondPass:Z

    .line 178
    .line 179
    iget-object v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 180
    .line 181
    invoke-virtual {v0, v3}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 185
    .line 186
    invoke-virtual {v0, v6, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 190
    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 194
    .line 195
    .line 196
    iput-object v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 197
    .line 198
    :cond_6
    new-instance v0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 199
    .line 200
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 201
    .line 202
    invoke-direct {v0, v3}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;-><init>(I)V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 206
    .line 207
    iget-object v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 208
    .line 209
    invoke-virtual {v0, v3}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->init(Landroid/os/Bundle;)I

    .line 215
    .line 216
    .line 217
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurHaveSucessful:Z

    .line 218
    .line 219
    const-string v0, "s_gau_blur_conr_num"

    .line 220
    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurControlNum:I

    .line 226
    .line 227
    iput v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mCount:I

    .line 228
    .line 229
    :goto_1
    iput v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 230
    .line 231
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v1, "init,texFormat:"

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v1, "TR_GLSelectiveGaussianBlurFilter3"

    .line 253
    .line 254
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return v2
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    iget-object v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-float v4, v3

    .line 24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 25
    .line 26
    mul-float/2addr v4, v5

    .line 27
    int-to-float v6, v2

    .line 28
    div-float/2addr v4, v6

    .line 29
    mul-float/2addr v1, v5

    .line 30
    div-float/2addr v1, v0

    .line 31
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    cmpg-float v0, v4, v1

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    :cond_0
    sub-float/2addr v4, v1

    .line 40
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-double v0, v0

    .line 45
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmpg-double v0, v0, v4

    .line 51
    .line 52
    if-gez v0, :cond_2

    .line 53
    .line 54
    :cond_1
    return-object p1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceHeight:I

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-ne v3, v0, :cond_4

    .line 68
    .line 69
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceWidth:I

    .line 70
    .line 71
    if-eq v2, v0, :cond_5

    .line 72
    .line 73
    :cond_4
    iput v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceHeight:I

    .line 74
    .line 75
    iput v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mSurfaceWidth:I

    .line 76
    .line 77
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mCount:I

    .line 78
    .line 79
    :cond_5
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x1

    .line 83
    if-eqz v0, :cond_a

    .line 84
    .line 85
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 86
    .line 87
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 97
    .line 98
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 99
    .line 100
    iput v4, v0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 101
    .line 102
    invoke-direct {p0, v4, p2}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->getFrameBuffer(ILcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/FrameBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v0, p1, v4}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 111
    .line 112
    add-int/2addr v4, v3

    .line 113
    iput v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 114
    .line 115
    iget-object v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 116
    .line 117
    iget-object v4, v4, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    move-object v0, v2

    .line 121
    move-object v4, v0

    .line 122
    :goto_0
    if-nez v0, :cond_7

    .line 123
    .line 124
    move-object v0, p1

    .line 125
    :cond_7
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 126
    .line 127
    if-eqz v5, :cond_12

    .line 128
    .line 129
    :cond_8
    :goto_1
    iget v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 130
    .line 131
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRenderPasses:I

    .line 132
    .line 133
    if-ge v5, v6, :cond_12

    .line 134
    .line 135
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 136
    .line 137
    iget-object v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 140
    .line 141
    .line 142
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 143
    .line 144
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 145
    .line 146
    iput v6, v5, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 147
    .line 148
    if-eqz v4, :cond_9

    .line 149
    .line 150
    iput-object v4, v5, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 151
    .line 152
    :cond_9
    invoke-direct {p0, v6, p2}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->getFrameBuffer(ILcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/FrameBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v0, v4}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 161
    .line 162
    add-int/2addr v4, v3

    .line 163
    iput v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 164
    .line 165
    iget-object v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 166
    .line 167
    iget-object v4, v4, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 168
    .line 169
    if-nez v0, :cond_8

    .line 170
    .line 171
    move-object v0, p1

    .line 172
    goto :goto_1

    .line 173
    :cond_a
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mCount:I

    .line 174
    .line 175
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurControlNum:I

    .line 176
    .line 177
    rem-int/2addr v0, v4

    .line 178
    if-nez v0, :cond_f

    .line 179
    .line 180
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 181
    .line 182
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 183
    .line 184
    if-eqz v0, :cond_f

    .line 185
    .line 186
    move-object v4, p1

    .line 187
    move-object v0, v2

    .line 188
    :goto_2
    iget v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 189
    .line 190
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mRenderPasses:I

    .line 191
    .line 192
    if-ge v5, v6, :cond_e

    .line 193
    .line 194
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 195
    .line 196
    iget-object v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 199
    .line 200
    .line 201
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 202
    .line 203
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 204
    .line 205
    iput v6, v5, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 206
    .line 207
    if-eqz v0, :cond_b

    .line 208
    .line 209
    iput-object v0, v5, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 210
    .line 211
    :cond_b
    invoke-direct {p0, v6, p2}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->getFrameBuffer(ILcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/FrameBuffer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v5, v4, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 220
    .line 221
    add-int/2addr v4, v3

    .line 222
    iput v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mProcessStage:I

    .line 223
    .line 224
    iget-object v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 225
    .line 226
    iget-object v4, v4, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 227
    .line 228
    if-nez v0, :cond_c

    .line 229
    .line 230
    move-object v0, p1

    .line 231
    :cond_c
    if-ne v0, p1, :cond_d

    .line 232
    .line 233
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurHaveSucessful:Z

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_d
    move-object v7, v4

    .line 237
    move-object v4, v0

    .line 238
    move-object v0, v7

    .line 239
    goto :goto_2

    .line 240
    :cond_e
    iput-boolean v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurHaveSucessful:Z

    .line 241
    .line 242
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 243
    .line 244
    if-eqz v0, :cond_11

    .line 245
    .line 246
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 247
    .line 248
    if-eqz v0, :cond_11

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->getSecondGauBlurTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v0, :cond_11

    .line 255
    .line 256
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGauBlurHaveSucessful:Z

    .line 257
    .line 258
    if-eqz v0, :cond_11

    .line 259
    .line 260
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 261
    .line 262
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 268
    .line 269
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->getSecondGauBlurTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->setGaussianBlurTexture(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 279
    .line 280
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 281
    .line 282
    iget-object v1, v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->setLayoutCoord([F)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 288
    .line 289
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 290
    .line 291
    iget v4, v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFit:I

    .line 292
    .line 293
    iput v4, v0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFit:I

    .line 294
    .line 295
    iget v4, v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 296
    .line 297
    iget v1, v1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 298
    .line 299
    invoke-virtual {v0, v4, v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->updateSurfaceViewPortSize(II)V

    .line 300
    .line 301
    .line 302
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 303
    .line 304
    if-eqz v0, :cond_10

    .line 305
    .line 306
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 307
    .line 308
    invoke-virtual {p2, p1, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    :goto_4
    move-object v0, p2

    .line 313
    goto :goto_5

    .line 314
    :cond_10
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 315
    .line 316
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    goto :goto_4

    .line 321
    :goto_5
    move v1, v3

    .line 322
    goto :goto_6

    .line 323
    :cond_11
    move-object v0, p1

    .line 324
    :cond_12
    :goto_6
    iget p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mCount:I

    .line 325
    .line 326
    add-int/2addr p2, v3

    .line 327
    iput p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mCount:I

    .line 328
    .line 329
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 330
    .line 331
    .line 332
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 333
    .line 334
    if-eqz p2, :cond_13

    .line 335
    .line 336
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 337
    .line 338
    invoke-virtual {p2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 339
    .line 340
    .line 341
    :cond_13
    if-nez v0, :cond_14

    .line 342
    .line 343
    iget-boolean p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 344
    .line 345
    if-nez p2, :cond_15

    .line 346
    .line 347
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 348
    .line 349
    const-string v0, "TR_GLSelectiveGaussianBlurFilter3"

    .line 350
    .line 351
    const-string v3, "gauopt ret effectTexture is null"

    .line 352
    .line 353
    invoke-static {p2, v0, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_14
    move-object p1, v0

    .line 358
    :cond_15
    :goto_7
    iget-boolean p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mDisableOpt:Z

    .line 359
    .line 360
    if-nez p2, :cond_17

    .line 361
    .line 362
    if-eqz v1, :cond_16

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_16
    return-object p1

    .line 366
    :cond_17
    :goto_8
    iget-boolean p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 367
    .line 368
    if-eqz p2, :cond_18

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_18
    move-object v2, p1

    .line 372
    :goto_9
    return-object v2
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mOesFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilter:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->m2DFilterOpt:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;->mGLSelectiveGaussianBlurFilterOptMerge:Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;

    .line 37
    .line 38
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "release,this:"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "TR_GLSelectiveGaussianBlurFilter3"

    .line 58
    .line 59
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
