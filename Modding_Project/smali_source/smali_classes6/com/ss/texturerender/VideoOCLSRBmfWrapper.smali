.class public Lcom/ss/texturerender/VideoOCLSRBmfWrapper;
.super Lcom/ss/texturerender/VideoOCLSRBaseWrapper;
.source "VideoOCLSRBmfWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;
    }
.end annotation


# static fields
.field public static final ASYC_INIT_DOWNLOADING:I = 0x30d4a

.field private static final ASYNC_INIT_STATUS_INITING:I = 0x1

.field private static final ASYNC_INIT_STATUS_INIT_FAIL:I = 0x3

.field private static final ASYNC_INIT_STATUS_INIT_SUCCESS:I = 0x2

.field private static final ASYNC_INIT_STATUS_UNKONW:I = 0x0

.field private static final HEIGHT_DEFAULT:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "VideoOCLSRBmfWrapper"

.field private static final VIDEO_OCLSR_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods.VideoSuperResolution"

.field private static final VIDEO_OCLSR_COMPONENT_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods_lite.VideoSuperResolution"

.field private static final VIDEO_OCLSR_PICO_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods.VideoSRLut"

.field private static final WIDTH_DEFAULT:I = 0x1000


# instance fields
.field private algType:I

.field private bmflogCount:I

.field private curr_height:I

.field private curr_width:I

.field private mAsyncInitMethod:Ljava/lang/reflect/Method;

.field private volatile mAsyncInitStatus:I

.field private mFreeMethod:Ljava/lang/reflect/Method;

.field private mGlInitMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;

.field private mMultiScaleProcessMethod:Ljava/lang/reflect/Method;

.field private mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

.field private mProcessMethod:Ljava/lang/reflect/Method;

.field private mProcessOesMethod:Ljava/lang/reflect/Method;

.field private mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

.field private mSRObject:Ljava/lang/Object;

.field private volatile mSupportSharpness:I

.field private mTexType:I

.field private mUseBmfComponent:Z

.field private oTextureId:I

.field private useGL:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mGlInitMethod:Ljava/lang/reflect/Method;

    .line 6
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitMethod:Ljava/lang/reflect/Method;

    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 8
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleProcessMethod:Ljava/lang/reflect/Method;

    .line 10
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;

    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 14
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    .line 16
    iput v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 17
    iput-boolean v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    .line 18
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 19
    sget v1, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSupportSharpness:I

    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 21
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 22
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    .line 23
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 25
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    const-string p2, "VideoOCLSRBmfWrapper"

    const-string v0, "new VideoOCLSRBmfWrapper"

    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    return-void
.end method

.method private _initObjAndMethod()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Init"

    .line 4
    .line 5
    const-string v2, ", old bmf version maybe"

    .line 6
    .line 7
    const-string v3, "getmethod error:"

    .line 8
    .line 9
    const-string v4, "VideoOCLSRBmfWrapper"

    .line 10
    .line 11
    :try_start_0
    iget-boolean v6, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    const-string v6, "com.bytedance.bmf_mods_lite.VideoSuperResolution"

    .line 17
    .line 18
    invoke-static {v7, v6}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    iget-boolean v6, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    const-string v6, "com.bytedance.bmf_mods.VideoSRLut"

    .line 31
    .line 32
    invoke-static {v7, v6}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v6, "com.bytedance.bmf_mods.VideoSuperResolution"

    .line 38
    .line 39
    invoke-static {v7, v6}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    :goto_0
    if-eqz v6, :cond_7

    .line 44
    .line 45
    iget-boolean v7, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    const-string v0, "GlSrInit"

    .line 50
    .line 51
    const-class v7, Ljava/lang/String;

    .line 52
    .line 53
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    filled-new-array {v7, v8, v9, v8, v8}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mGlInitMethod:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    const-string v0, "Process"

    .line 68
    .line 69
    filled-new-array {v8, v8, v8, v8, v9}, [Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_2
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    const-class v11, Ljava/lang/String;

    .line 84
    .line 85
    const-class v12, Ljava/lang/String;

    .line 86
    .line 87
    const-class v13, Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v7, v16

    .line 90
    .line 91
    move-object/from16 v8, v16

    .line 92
    .line 93
    move-object/from16 v9, v16

    .line 94
    .line 95
    move-object/from16 v10, v16

    .line 96
    .line 97
    move-object/from16 v14, v16

    .line 98
    .line 99
    move-object/from16 v15, v16

    .line 100
    .line 101
    filled-new-array/range {v7 .. v15}, [Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iput-object v7, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    iget-boolean v7, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    const-string v15, "ProcessTexture"

    .line 114
    .line 115
    if-eqz v7, :cond_3

    .line 116
    .line 117
    :try_start_1
    const-class v10, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    .line 118
    .line 119
    const-class v11, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    .line 120
    .line 121
    const-class v12, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    .line 122
    .line 123
    move-object/from16 v7, v16

    .line 124
    .line 125
    move-object/from16 v8, v16

    .line 126
    .line 127
    move-object/from16 v9, v16

    .line 128
    .line 129
    filled-new-array/range {v7 .. v12}, [Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v6, v15, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    iput-object v7, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 138
    .line 139
    const-class v11, Ljava/lang/String;

    .line 140
    .line 141
    const-class v12, Ljava/lang/String;

    .line 142
    .line 143
    const-class v13, Ljava/lang/String;

    .line 144
    .line 145
    const-class v17, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;

    .line 146
    .line 147
    const-class v18, Lcom/bytedance/bmf_mods_lite_api/callback/SRInitCallback;

    .line 148
    .line 149
    move-object/from16 v7, v16

    .line 150
    .line 151
    move-object/from16 v8, v16

    .line 152
    .line 153
    move-object/from16 v9, v16

    .line 154
    .line 155
    move-object/from16 v10, v16

    .line 156
    .line 157
    move-object/from16 v14, v16

    .line 158
    .line 159
    move-object/from16 v15, v16

    .line 160
    .line 161
    move-object/from16 v16, v17

    .line 162
    .line 163
    move-object/from16 v17, v18

    .line 164
    .line 165
    filled-new-array/range {v7 .. v17}, [Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitMethod:Ljava/lang/reflect/Method;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 177
    .line 178
    move-object/from16 v7, v16

    .line 179
    .line 180
    move-object/from16 v8, v16

    .line 181
    .line 182
    move-object/from16 v9, v16

    .line 183
    .line 184
    move-object/from16 v10, v16

    .line 185
    .line 186
    move-object/from16 v11, v16

    .line 187
    .line 188
    move-object/from16 v12, v16

    .line 189
    .line 190
    move-object/from16 v13, v16

    .line 191
    .line 192
    move-object/from16 v14, v16

    .line 193
    .line 194
    move-object v5, v15

    .line 195
    move-object v15, v0

    .line 196
    filled-new-array/range {v7 .. v15}, [Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 205
    .line 206
    const/4 v5, 0x0

    .line 207
    iput-object v5, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitMethod:Ljava/lang/reflect/Method;

    .line 208
    .line 209
    :goto_1
    iget-boolean v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 210
    .line 211
    if-nez v0, :cond_5

    .line 212
    .line 213
    iget-boolean v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    .line 215
    const-string v5, "ProcessOesTexture"

    .line 216
    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    :try_start_2
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 220
    .line 221
    const-class v10, [F

    .line 222
    .line 223
    const-class v11, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    .line 224
    .line 225
    const-class v12, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    .line 226
    .line 227
    const-class v13, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    .line 228
    .line 229
    const-class v14, Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;

    .line 230
    .line 231
    move-object v7, v9

    .line 232
    move-object v8, v9

    .line 233
    filled-new-array/range {v7 .. v14}, [Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 242
    .line 243
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

    .line 244
    .line 245
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;

    .line 246
    .line 247
    iget-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 248
    .line 249
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleProcessMethod:Ljava/lang/reflect/Method;

    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 254
    .line 255
    const-class v20, [F

    .line 256
    .line 257
    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 258
    .line 259
    move-object/from16 v17, v9

    .line 260
    .line 261
    move-object/from16 v18, v9

    .line 262
    .line 263
    move-object/from16 v19, v9

    .line 264
    .line 265
    move-object/from16 v21, v9

    .line 266
    .line 267
    move-object/from16 v22, v9

    .line 268
    .line 269
    move-object/from16 v23, v9

    .line 270
    .line 271
    move-object/from16 v24, v9

    .line 272
    .line 273
    move-object/from16 v25, v9

    .line 274
    .line 275
    filled-new-array/range {v17 .. v26}, [Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    .line 285
    :try_start_3
    const-class v10, [F

    .line 286
    .line 287
    const-class v11, [F

    .line 288
    .line 289
    const-class v12, [F

    .line 290
    .line 291
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 292
    .line 293
    move-object v7, v9

    .line 294
    move-object v8, v9

    .line 295
    filled-new-array/range {v7 .. v13}, [Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    .line 305
    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    :try_start_4
    iget v5, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 308
    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v5, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 332
    .line 333
    .line 334
    :goto_2
    :try_start_5
    const-string v0, "ProcessMultiScaleTexture"

    .line 335
    .line 336
    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 337
    .line 338
    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 339
    .line 340
    move-object/from16 v17, v27

    .line 341
    .line 342
    move-object/from16 v18, v27

    .line 343
    .line 344
    move-object/from16 v19, v27

    .line 345
    .line 346
    move-object/from16 v20, v27

    .line 347
    .line 348
    move-object/from16 v21, v27

    .line 349
    .line 350
    move-object/from16 v22, v27

    .line 351
    .line 352
    move-object/from16 v23, v27

    .line 353
    .line 354
    move-object/from16 v24, v27

    .line 355
    .line 356
    move-object/from16 v26, v27

    .line 357
    .line 358
    filled-new-array/range {v17 .. v27}, [Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleProcessMethod:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :catch_2
    move-exception v0

    .line 370
    :try_start_6
    iget v5, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 371
    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v5, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 395
    .line 396
    .line 397
    :goto_3
    :try_start_7
    const-string v0, "ProcessMultiScaleOesTexture"

    .line 398
    .line 399
    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 400
    .line 401
    const-class v20, [F

    .line 402
    .line 403
    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 404
    .line 405
    move-object/from16 v17, v28

    .line 406
    .line 407
    move-object/from16 v18, v28

    .line 408
    .line 409
    move-object/from16 v19, v28

    .line 410
    .line 411
    move-object/from16 v21, v28

    .line 412
    .line 413
    move-object/from16 v22, v28

    .line 414
    .line 415
    move-object/from16 v23, v28

    .line 416
    .line 417
    move-object/from16 v24, v28

    .line 418
    .line 419
    move-object/from16 v25, v28

    .line 420
    .line 421
    move-object/from16 v27, v28

    .line 422
    .line 423
    filled-new-array/range {v17 .. v28}, [Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :catch_3
    move-exception v0

    .line 435
    :try_start_8
    iget v5, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 436
    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v5, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :cond_5
    :goto_4
    const-string v0, "Free"

    .line 463
    .line 464
    const/4 v2, 0x0

    .line 465
    new-array v2, v2, [Ljava/lang/Class;

    .line 466
    .line 467
    invoke-virtual {v6, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 472
    .line 473
    iget-boolean v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    .line 474
    .line 475
    if-eqz v0, :cond_6

    .line 476
    .line 477
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_6
    const-class v0, Landroid/content/Context;

    .line 485
    .line 486
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    iput-object v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 511
    .line 512
    goto :goto_6

    .line 513
    :goto_5
    iget v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 514
    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    const-string v5, "VideoOCLSR get fail:"

    .line 521
    .line 522
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v2, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const/4 v2, 0x0

    .line 540
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 541
    .line 542
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 543
    .line 544
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mGlInitMethod:Ljava/lang/reflect/Method;

    .line 545
    .line 546
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 547
    .line 548
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 549
    .line 550
    iput-object v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 551
    .line 552
    :cond_7
    :goto_6
    return-void
.end method

.method private varargs _invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 15
    .line 16
    const-string p3, "VideoOCLSRBmfWrapper"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2, p3, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method


# virtual methods
.method public GetVideoOclSrOutput()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    .line 2
    .line 3
    return v0
.end method

.method public InitVideoAsyncOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p7

    .line 4
    .line 5
    move-object/from16 v1, p13

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    .line 8
    .line 9
    const/4 v12, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v12

    .line 13
    :cond_0
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 14
    .line 15
    const/4 v13, 0x1

    .line 16
    if-eq v2, v13, :cond_1

    .line 17
    .line 18
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 19
    .line 20
    const/4 v14, 0x2

    .line 21
    if-ne v2, v14, :cond_2

    .line 22
    .line 23
    :cond_1
    move v1, v12

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_2
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 31
    .line 32
    .line 33
    :cond_3
    move/from16 v2, p2

    .line 34
    .line 35
    iput v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    .line 36
    .line 37
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_8

    .line 41
    .line 42
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 43
    .line 44
    if-nez v3, :cond_4

    .line 45
    .line 46
    new-instance v3, Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;-><init>(Lcom/ss/texturerender/VideoOCLSRBmfWrapper;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 52
    .line 53
    :cond_4
    if-eqz v1, :cond_5

    .line 54
    .line 55
    const-string v3, "bmf_init_allow_fallback"

    .line 56
    .line 57
    invoke-virtual {v1, v3, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v4, "bmf_sr_init_sharp_levels"

    .line 62
    .line 63
    invoke-virtual {v1, v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    new-instance v5, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 68
    .line 69
    invoke-direct {v5}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v7, "dm_init_host"

    .line 73
    .line 74
    const-string v8, ""

    .line 75
    .line 76
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const-string v9, "dm_init_accesskey"

    .line 81
    .line 82
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v5, v7, v9}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setHostAndAccessKey(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v7, "dm_init_deviceid"

    .line 91
    .line 92
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v5, v7}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setDeviceId(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v7, "dm_init_app_id"

    .line 101
    .line 102
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v5, v7}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-string v7, "dm_init_app_ver"

    .line 111
    .line 112
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v5, v7}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5, v4, v3}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setSharpLevels(IZ)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "bmf_sr_init_model_source"

    .line 125
    .line 126
    invoke-virtual {v1, v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v3, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setModelSource(I)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->build()Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    move-object/from16 v24, v1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    move-object/from16 v24, v4

    .line 142
    .line 143
    :goto_0
    if-eqz v6, :cond_6

    .line 144
    .line 145
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-lez v1, :cond_6

    .line 150
    .line 151
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v4, "mInitWithLicenseMethod "

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const-string v4, "VideoOCLSRBmfWrapper"

    .line 171
    .line 172
    invoke-static {v1, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v15, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitMethod:Ljava/lang/reflect/Method;

    .line 176
    .line 177
    iget-object v11, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    iget-object v10, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 204
    .line 205
    move-object/from16 v5, p11

    .line 206
    .line 207
    move-object/from16 v6, p7

    .line 208
    .line 209
    move-object/from16 v7, p12

    .line 210
    .line 211
    move-object/from16 v16, v10

    .line 212
    .line 213
    move-object/from16 v10, v24

    .line 214
    .line 215
    move-object v12, v11

    .line 216
    move-object/from16 v11, v16

    .line 217
    .line 218
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-direct {v0, v15, v12, v1}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :goto_1
    move-object v4, v1

    .line 227
    goto :goto_2

    .line 228
    :cond_6
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitMethod:Ljava/lang/reflect/Method;

    .line 229
    .line 230
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v17

    .line 244
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v18

    .line 248
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v22

    .line 252
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v23

    .line 256
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;

    .line 257
    .line 258
    const-string v20, ""

    .line 259
    .line 260
    move-object/from16 v19, p11

    .line 261
    .line 262
    move-object/from16 v21, p12

    .line 263
    .line 264
    move-object/from16 v25, v2

    .line 265
    .line 266
    filled-new-array/range {v15 .. v25}, [Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-direct {v0, v1, v3, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    goto :goto_1

    .line 275
    :goto_2
    if-eqz v4, :cond_7

    .line 276
    .line 277
    move-object v1, v4

    .line 278
    check-cast v1, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    const v2, 0x30d4a

    .line 285
    .line 286
    .line 287
    if-ne v1, v2, :cond_7

    .line 288
    .line 289
    iput v13, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    if-eqz v4, :cond_8

    .line 293
    .line 294
    move-object v1, v4

    .line 295
    check-cast v1, Ljava/lang/Integer;

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_8

    .line 302
    .line 303
    sget v1, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 304
    .line 305
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_WEAK:I

    .line 306
    .line 307
    or-int/2addr v1, v2

    .line 308
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_MEDIUM:I

    .line 309
    .line 310
    or-int/2addr v1, v2

    .line 311
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_STRONG:I

    .line 312
    .line 313
    or-int/2addr v1, v2

    .line 314
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSupportSharpness:I

    .line 315
    .line 316
    iput v14, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 317
    .line 318
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 319
    .line 320
    move-object v1, v4

    .line 321
    check-cast v1, Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-gez v1, :cond_a

    .line 328
    .line 329
    :cond_9
    const/4 v1, 0x3

    .line 330
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 331
    .line 332
    :cond_a
    if-eqz v4, :cond_b

    .line 333
    .line 334
    check-cast v4, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_b

    .line 341
    .line 342
    move v12, v13

    .line 343
    goto :goto_4

    .line 344
    :cond_b
    const/4 v12, 0x0

    .line 345
    :goto_4
    return v12

    .line 346
    :goto_5
    return v1
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZII)Z
    .locals 13

    .line 2
    const-string v11, ""

    const-string v12, ""

    const/4 v4, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v12}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/16 v5, 0x1000

    const/16 v6, 0x1000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1
    invoke-virtual/range {v0 .. v12}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object/from16 v6, p7

    .line 3
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    :cond_0
    move v1, p2

    .line 5
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    .line 6
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v2, :cond_2

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInitWithLicenseMethod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoOCLSRBmfWrapper"

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v10, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    iget-object v11, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v5, p11

    move-object/from16 v6, p7

    move-object/from16 v7, p12

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-direct {p0, v10, v11, v1}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 15
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ""

    move-object p1, v1

    move-object p2, v4

    move-object p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, p11

    move-object/from16 p6, v9

    move-object/from16 p7, p12

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-direct {p0, v2, v3, v1}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    .line 17
    iput v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    if-eqz v1, :cond_3

    .line 18
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public ReleaseVideoOclSr()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-array v3, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v3}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 16
    .line 17
    const-string v2, "VideoOCLSRBmfWrapper"

    .line 18
    .line 19
    const-string v3, "FreeVideoOclSr"

    .line 20
    .line 21
    invoke-static {v0, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method public VideoOclSrOesProcess(III[FZIIIIIJIILandroid/os/Bundle;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p14

    move-object/from16 v2, p15

    .line 1
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v3, v4, :cond_0

    return v5

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 3
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 4
    :cond_2
    new-instance v3, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    move-object v6, v3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v6 .. v13}, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;-><init>(IIIIIJ)V

    if-eqz v2, :cond_4

    .line 5
    const-string/jumbo v4, "sharp_level"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 7
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSupportSharpness:I

    and-int/2addr v4, v2

    if-nez v4, :cond_3

    .line 8
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 9
    :cond_3
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    invoke-direct {v4, v2}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-ge v4, v6, :cond_6

    .line 11
    iget-boolean v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    if-eqz v4, :cond_5

    .line 12
    iget-object v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    iget-object v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 13
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move-object/from16 p8, p4

    move-object/from16 p9, v3

    move-object/from16 p10, v11

    move-object/from16 p11, v2

    move-object/from16 p12, v7

    filled-new-array/range {p5 .. p12}, [Ljava/lang/Object;

    move-result-object v2

    .line 14
    invoke-direct {v0, v4, v6, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 15
    :cond_5
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 16
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 17
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v9, p4

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v4

    .line 18
    invoke-direct {v0, v2, v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 19
    :cond_6
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    invoke-direct {v4, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;-><init>(I)V

    .line 20
    iget-boolean v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    if-eqz v6, :cond_7

    .line 21
    iget-object v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;

    iget-object v8, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 22
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, p4

    move-object/from16 p9, v3

    move-object/from16 p10, v4

    move-object/from16 p11, v2

    move-object/from16 p12, v7

    filled-new-array/range {p5 .. p12}, [Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-direct {v0, v6, v8, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 24
    :cond_7
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleOesProcessMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v9, p4

    filled-new-array/range {v6 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    .line 26
    invoke-direct {v0, v2, v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_8

    .line 27
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    if-lez v3, :cond_8

    .line 28
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bmfTextureProcess oes sucess, scale type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VideoOCLSRBmfWrapper"

    invoke-static {v3, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    return v5
.end method

.method public VideoOclSrOesProcess(III[F[F[FZLandroid/os/Bundle;)I
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p8

    .line 30
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_0

    return v4

    .line 31
    :cond_0
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 33
    :cond_2
    new-instance v12, Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v5, p7

    invoke-direct {v12, v2, v3, v5}, Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;-><init>([F[FZ)V

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 34
    const-string/jumbo v7, "sharp_level"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 35
    new-instance v8, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    move-object v11, v8

    goto :goto_0

    :cond_3
    move-object v11, v6

    .line 36
    :goto_0
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    const/16 v7, 0xc

    if-ne v1, v7, :cond_5

    .line 37
    iget-boolean v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    if-eqz v1, :cond_4

    .line 38
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p4

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 39
    :cond_4
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessOesMethodWithYUV:Ljava/lang/reflect/Method;

    iget-object v12, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p4

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v12, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_5
    :goto_1
    if-eqz v6, :cond_7

    .line 40
    move-object v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    .line 41
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_6

    if-lez v1, :cond_6

    .line 42
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    const-string v2, "VideoOCLSRBmfWrapper"

    const-string v3, "bmfTextureProcess oes yuv sucess"

    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 43
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 44
    iput v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    :cond_7
    :goto_2
    if-nez v6, :cond_8

    goto :goto_3

    .line 45
    :cond_8
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    return v4
.end method

.method public VideoOclSrProcess(IIIZ)I
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    .line 24
    const-string v3, "VideoOCLSRBmfWrapper"

    iget-object v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 25
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 26
    :cond_1
    iget v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->curr_width:I

    const/4 v5, 0x1

    if-ne v4, v0, :cond_2

    iget v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->curr_height:I

    if-eq v4, v2, :cond_6

    .line 27
    :cond_2
    iget v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    invoke-static {v4}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 28
    iput v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->curr_width:I

    .line 29
    iput v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->curr_height:I

    .line 30
    iget v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    if-nez v4, :cond_3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_3
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    :goto_0
    int-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-int v13, v8

    int-to-double v8, v2

    mul-double/2addr v6, v8

    double-to-int v14, v6

    .line 31
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    move-result v4

    const/16 v6, 0xde1

    if-eqz v4, :cond_4

    const/16 v4, 0x2600

    .line 32
    invoke-static {v6, v4}, Lcom/ss/texturerender/TexGLUtils;->genTexture(II)I

    move-result v4

    iput v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {v6}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    move-result v4

    iput v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    .line 34
    :goto_1
    iget v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 35
    iget-boolean v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->useGL:Z

    if-eqz v4, :cond_5

    const v4, 0x8058

    .line 36
    invoke-static {v6, v5, v4, v13, v14}, Landroid/opengl/GLES30;->glTexStorage2D(IIIII)V

    goto :goto_2

    :cond_5
    const/16 v17, 0x1401

    const/16 v18, 0x0

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/4 v15, 0x0

    const/16 v16, 0x1908

    .line 37
    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 38
    :cond_6
    :goto_2
    :try_start_0
    iget-object v4, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    iget-object v6, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v7, v8, v0, v2, v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v4, v6, v0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    iget v0, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    const-string v2, "fatal bmf sr"

    invoke-static {v0, v3, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 41
    iget v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_7

    .line 42
    iget v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    const-string v4, "bmfTextureProcess sucess"

    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 43
    iput v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    goto :goto_4

    :cond_7
    add-int/2addr v2, v5

    .line 44
    iput v2, v1, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    const/4 v0, -0x1

    goto :goto_5

    .line 45
    :cond_9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5
    return v0
.end method

.method public VideoOclSrProcess(IIIZIIIIIJIILandroid/os/Bundle;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p13

    move-object/from16 v2, p14

    .line 1
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v3, v4, :cond_0

    return v5

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 3
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 4
    :cond_2
    new-instance v3, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    move-object v6, v3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-direct/range {v6 .. v13}, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;-><init>(IIIIIJ)V

    if-eqz v2, :cond_4

    .line 5
    const-string/jumbo v4, "sharp_level"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 7
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSupportSharpness:I

    and-int/2addr v4, v2

    if-nez v4, :cond_3

    .line 8
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 9
    :cond_3
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    invoke-direct {v4, v2}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    const/4 v6, 0x7

    if-ge v4, v6, :cond_6

    .line 11
    iget-boolean v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    if-eqz v4, :cond_5

    .line 12
    iget-object v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    iget-object v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v3

    move-object/from16 p5, v10

    move-object/from16 p6, v2

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v4, v6, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 13
    :cond_5
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 p1, v4

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move-object/from16 p9, v13

    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 14
    :cond_6
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    invoke-direct {v4, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;-><init>(I)V

    .line 15
    iget-boolean v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mUseBmfComponent:Z

    if-eqz v6, :cond_7

    .line 16
    iget-object v6, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleProcessMethod:Ljava/lang/reflect/Method;

    iget-object v7, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 p1, v8

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v2

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v6, v7, v2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_7
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mMultiScaleProcessMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p1, v4

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move-object/from16 p9, v13

    move-object/from16 p10, v14

    move-object/from16 p11, v15

    filled-new-array/range {p1 .. p11}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_9

    .line 18
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->oTextureId:I

    .line 19
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    const/16 v6, 0x64

    if-lt v4, v6, :cond_8

    if-lez v3, :cond_8

    .line 20
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bmfTextureProcess sucess, scale type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VideoOCLSRBmfWrapper"

    invoke-static {v3, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 21
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 22
    iput v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    :cond_9
    :goto_2
    if-nez v2, :cond_a

    goto :goto_3

    .line 23
    :cond_a
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    return v5
.end method

.method public glSrInit(Ljava/lang/String;IZII)Z
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    .line 3
    .line 4
    iget-object p4, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->algType:I

    .line 12
    .line 13
    iget-object p4, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    iget-object p5, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mGlInitMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    if-eqz p5, :cond_1

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/16 v0, 0x1000

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, ""

    .line 40
    .line 41
    filled-new-array {v2, p2, p3, v1, v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0, p5, p4, p2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p2, 0x0

    .line 51
    :goto_0
    if-eqz p2, :cond_2

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    :cond_2
    return p1
.end method

.method public onSRAsyncInitResult(II)V
    .locals 3

    .line 1
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSupportSharpness:I

    .line 2
    .line 3
    const-string v0, "VideoOCLSRBmfWrapper"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 9
    .line 10
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "bmf asyncinit fail:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "bmf asyncinit success:"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x2

    .line 56
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mAsyncInitStatus:I

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public videoOclSrProcess(IIIZI)I
    .locals 3

    .line 1
    const-string v0, "VideoOCLSRBmfWrapper"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_initObjAndMethod()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mSRObject:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    filled-new-array {p1, p5, p2, p3, p4}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, v1, v2, p1}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 52
    .line 53
    const-string p2, "fatal bmf sr"

    .line 54
    .line 55
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    .line 62
    .line 63
    const/16 p3, 0x64

    .line 64
    .line 65
    if-lt p2, p3, :cond_2

    .line 66
    .line 67
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->mTexType:I

    .line 68
    .line 69
    const-string p3, "bmfTextureProcess sucess"

    .line 70
    .line 71
    invoke-static {p2, v0, p3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 79
    .line 80
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->bmflogCount:I

    .line 81
    .line 82
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 83
    .line 84
    const/4 p1, -0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    check-cast p1, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    :goto_2
    return p1
.end method
