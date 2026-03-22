.class public Lcom/ss/texturerender/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final PICO_VIDEO_VR_SR_EFFECT:Ljava/lang/String; = "com.ss.texturerenderpicovr.PicoVRVideoOCLSREffect"

.field public static final PICO_VIDEO_VR_VR_EFFECT:Ljava/lang/String; = "com.ss.texturerenderpicovr.PicoVRVideoVREffect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "PicoTextureSREffect"

    .line 2
    .line 3
    const-string v1, "PicoTextureVREffect"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    return-object v3

    .line 11
    :pswitch_1
    new-instance p1, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;-><init>(I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_2
    new-instance p1, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;-><init>(I)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_3
    new-instance p1, Lcom/ss/texturerender/fov/GLTileCompositeFilter;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_4
    new-instance p1, Lcom/ss/texturerender/effect/GLWatermarkFilter;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLWatermarkFilter;-><init>(I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_5
    new-instance p1, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;-><init>(I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_6
    new-instance p1, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter3;-><init>(I)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_7
    new-instance p1, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/AdaptiveGradingEffect;-><init>(I)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_8
    new-instance p1, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;-><init>(I)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_9
    new-instance p1, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;-><init>(I)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_a
    new-instance p1, Lcom/ss/texturerender/effect/GLMattingFilter;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLMattingFilter;-><init>(I)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_b
    and-int/lit8 p1, p0, 0x8

    .line 72
    .line 73
    if-lez p1, :cond_2

    .line 74
    .line 75
    :try_start_0
    const-string p1, "com.ss.texturerenderpicovr.PicoVRVideoVREffect"

    .line 76
    .line 77
    invoke-static {v2, p1}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/ss/texturerender/effect/AbsEffect;

    .line 108
    .line 109
    move-object v3, p1

    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception p1

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const-string p1, "PicoTextureVREffect fail constructor is null"

    .line 114
    .line 115
    invoke-static {p0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    const-string p1, "PicoTextureVREffect fail srClz is null"

    .line 120
    .line 121
    invoke-static {p0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "PicoTextureVREffect fail:"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object v3

    .line 150
    :cond_2
    new-instance p1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;

    .line 151
    .line 152
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;-><init>(I)V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :pswitch_c
    new-instance p1, Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(I)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :pswitch_d
    and-int/lit8 p1, p0, 0x8

    .line 163
    .line 164
    if-lez p1, :cond_5

    .line 165
    .line 166
    :try_start_1
    const-string p1, "com.ss.texturerenderpicovr.PicoVRVideoOCLSREffect"

    .line 167
    .line 168
    invoke-static {v2, p1}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 175
    .line 176
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/ss/texturerender/effect/AbsEffect;

    .line 199
    .line 200
    move-object v3, p1

    .line 201
    goto :goto_3

    .line 202
    :catch_1
    move-exception p1

    .line 203
    goto :goto_2

    .line 204
    :cond_3
    const-string p1, "PicoTextureSREffect fail constructor is null"

    .line 205
    .line 206
    invoke-static {p0, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    const-string p1, "PicoTextureSREffect fail srClz is null"

    .line 211
    .line 212
    invoke-static {p0, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v2, "PicoTextureSREffect fail:"

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p0, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    return-object v3

    .line 241
    :cond_5
    new-instance p1, Lcom/ss/texturerender/effect/VideoOCLSREffect;

    .line 242
    .line 243
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/VideoOCLSREffect;-><init>(I)V

    .line 244
    .line 245
    .line 246
    return-object p1

    .line 247
    :pswitch_e
    new-instance p1, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;

    .line 248
    .line 249
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;-><init>(I)V

    .line 250
    .line 251
    .line 252
    return-object p1

    .line 253
    :pswitch_f
    new-instance p1, Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 254
    .line 255
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLOesTo2DFilter;-><init>(I)V

    .line 256
    .line 257
    .line 258
    return-object p1

    .line 259
    :pswitch_10
    new-instance p1, Lcom/ss/texturerender/effect/GLLutFilter;

    .line 260
    .line 261
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/GLLutFilter;-><init>(I)V

    .line 262
    .line 263
    .line 264
    return-object p1

    .line 265
    :pswitch_11
    new-instance p1, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;

    .line 266
    .line 267
    invoke-direct {p1, p0}, Lcom/ss/texturerender/effect/AdaptiveSharpenEffect;-><init>(I)V

    .line 268
    .line 269
    .line 270
    return-object p1

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
