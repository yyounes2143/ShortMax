.class public Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;
.super Lcom/ss/texturerender/VideoOCLSRBaseWrapper;
.source "VideoOCLSRBmfWrapperDirectInvoke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;
    }
.end annotation


# static fields
.field public static final ASYC_INIT_DOWNLOADING:I = 0x30d4a

.field private static final ASYNC_INIT_STATUS_INITING:I = 0x1

.field private static final ASYNC_INIT_STATUS_INIT_FAIL:I = 0x3

.field private static final ASYNC_INIT_STATUS_INIT_SUCCESS:I = 0x2

.field private static final ASYNC_INIT_STATUS_UNKONW:I = 0x0

.field private static final HEIGHT_DEFAULT:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "VideoOCLSRBmfWrapperDirectInovke"

.field private static final VIDEO_OCLSR_COMPONENT_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods_lite.VideoSuperResolution"

.field private static final WIDTH_DEFAULT:I = 0x1000


# instance fields
.field private algType:I

.field private bmflogCount:I

.field private volatile mAsyncInitStatus:I

.field private mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

.field private mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

.field private volatile mSupportSharpness:I

.field private mTexType:I

.field private oTextureId:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->oTextureId:I

    .line 12
    .line 13
    iput v2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    .line 14
    .line 15
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 16
    .line 17
    sget v1, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 18
    .line 19
    iput v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSupportSharpness:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

    .line 22
    .line 23
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    .line 24
    .line 25
    const-string v0, "VideoOCLSRBmfWrapperDirectInovke"

    .line 26
    .line 27
    const-string v1, "new VideoOCLSRBmfWrapperDirectInvoke"

    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private _initObjAndMethod()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.bytedance.bmf_mods_lite.VideoSuperResolution"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Landroid/content/Context;

    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget v1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "VideoOCLSR get fail:"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "VideoOCLSRBmfWrapperDirectInovke"

    .line 66
    .line 67
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 72
    .line 73
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public GetVideoOclSrOutput()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->oTextureId:I

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
    move-object/from16 v7, p7

    .line 4
    .line 5
    move-object/from16 v1, p13

    .line 6
    .line 7
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    const/4 v12, 0x1

    .line 11
    if-eq v2, v12, :cond_9

    .line 12
    .line 13
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 14
    .line 15
    const/4 v13, 0x2

    .line 16
    if-ne v2, v13, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    .line 25
    .line 26
    .line 27
    :cond_1
    move/from16 v2, p2

    .line 28
    .line 29
    iput v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->algType:I

    .line 30
    .line 31
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_6

    .line 35
    .line 36
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    new-instance v3, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;-><init>(Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

    .line 46
    .line 47
    :cond_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const-string v3, "bmf_init_allow_fallback"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const-string v4, "bmf_sr_init_sharp_levels"

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    new-instance v5, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 62
    .line 63
    invoke-direct {v5}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v6, "dm_init_host"

    .line 67
    .line 68
    const-string v8, ""

    .line 69
    .line 70
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v9, "dm_init_accesskey"

    .line 75
    .line 76
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v5, v6, v9}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setHostAndAccessKey(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "dm_init_deviceid"

    .line 85
    .line 86
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setDeviceId(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "dm_init_app_id"

    .line 95
    .line 96
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "dm_init_app_ver"

    .line 105
    .line 106
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5, v4, v3}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setSharpLevels(IZ)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "bmf_sr_init_model_source"

    .line 119
    .line 120
    invoke-virtual {v1, v4, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v3, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->setModelSource(I)Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig$Builder;->build()Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object/from16 v24, v1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    move-object/from16 v24, v4

    .line 136
    .line 137
    :goto_0
    if-eqz v7, :cond_4

    .line 138
    .line 139
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-lez v1, :cond_4

    .line 144
    .line 145
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "mInitWithLicenseMethod "

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const-string v4, "VideoOCLSRBmfWrapperDirectInovke"

    .line 165
    .line 166
    invoke-static {v1, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 170
    .line 171
    move/from16 v2, p2

    .line 172
    .line 173
    move/from16 v3, p8

    .line 174
    .line 175
    move/from16 v4, p9

    .line 176
    .line 177
    move/from16 v5, p10

    .line 178
    .line 179
    move-object/from16 v6, p11

    .line 180
    .line 181
    move-object/from16 v7, p7

    .line 182
    .line 183
    move-object/from16 v8, p12

    .line 184
    .line 185
    move/from16 v9, p6

    .line 186
    .line 187
    move/from16 v10, p5

    .line 188
    .line 189
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->Init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_1
    move-object v4, v1

    .line 198
    goto :goto_2

    .line 199
    :cond_4
    iget-object v14, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 200
    .line 201
    const-string v20, ""

    .line 202
    .line 203
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mMySRInitCallback:Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke$MySRInitCallback;

    .line 204
    .line 205
    move/from16 v15, p2

    .line 206
    .line 207
    move/from16 v16, p8

    .line 208
    .line 209
    move/from16 v17, p9

    .line 210
    .line 211
    move/from16 v18, p10

    .line 212
    .line 213
    move-object/from16 v19, p11

    .line 214
    .line 215
    move-object/from16 v21, p12

    .line 216
    .line 217
    move/from16 v22, p6

    .line 218
    .line 219
    move/from16 v23, p5

    .line 220
    .line 221
    move-object/from16 v25, v1

    .line 222
    .line 223
    invoke-interface/range {v14 .. v25}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->Init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/bmf_mods_lite_api/bean/SRConfig;Lcom/bytedance/bmf_mods_lite_api/callback/SRInitCallback;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    goto :goto_1

    .line 232
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const v2, 0x30d4a

    .line 237
    .line 238
    .line 239
    if-ne v1, v2, :cond_5

    .line 240
    .line 241
    iput v12, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_6

    .line 249
    .line 250
    sget v1, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 251
    .line 252
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_WEAK:I

    .line 253
    .line 254
    or-int/2addr v1, v2

    .line 255
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_MEDIUM:I

    .line 256
    .line 257
    or-int/2addr v1, v2

    .line 258
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_STRONG:I

    .line 259
    .line 260
    or-int/2addr v1, v2

    .line 261
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSupportSharpness:I

    .line 262
    .line 263
    iput v13, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 264
    .line 265
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-gez v1, :cond_8

    .line 272
    .line 273
    :cond_7
    const/4 v1, 0x3

    .line 274
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 275
    .line 276
    :cond_8
    if-eqz v4, :cond_9

    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_9

    .line 283
    .line 284
    move v11, v12

    .line 285
    :cond_9
    :goto_4
    return v11
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

    invoke-virtual/range {v0 .. v12}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

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
    invoke-virtual/range {v0 .. v12}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object/from16 v7, p7

    .line 3
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    :cond_0
    move v3, p2

    .line 5
    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->algType:I

    .line 6
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    if-eqz v1, :cond_2

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInitWithLicenseMethod "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VideoOCLSRBmfWrapperDirectInovke"

    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    move v2, p2

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p7

    move-object/from16 v8, p12

    move/from16 v9, p6

    move/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->Init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    const-string v8, ""

    move v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v9, p12

    move/from16 v10, p6

    move/from16 v11, p5

    invoke-interface/range {v2 .. v11}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->Init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    .line 11
    iput v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    if-eqz v1, :cond_3

    .line 12
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->Free()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 13
    .line 14
    return-void
.end method

.method public VideoOclSrOesProcess(III[FZIIIIIJIILandroid/os/Bundle;)I
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    move-object/from16 v2, p15

    .line 1
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v3, v4, :cond_0

    return v5

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    if-nez v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    .line 4
    :cond_1
    new-instance v3, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    move-object v6, v3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v6 .. v13}, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;-><init>(IIIIIJ)V

    if-eqz v2, :cond_3

    .line 5
    const-string/jumbo v4, "sharp_level"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 7
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSupportSharpness:I

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    .line 8
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 9
    :cond_2
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    invoke-direct {v4, v2}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->algType:I

    const/4 v5, 0x7

    const/4 v6, 0x0

    if-ge v4, v5, :cond_4

    .line 11
    iget-object v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    const/4 v5, 0x0

    move-object/from16 p5, v4

    move/from16 p6, p1

    move/from16 p7, p2

    move/from16 p8, p3

    move-object/from16 p9, p4

    move-object/from16 p10, v3

    move-object/from16 p11, v5

    move-object/from16 p12, v2

    move-object/from16 p13, v6

    invoke-interface/range {p5 .. p13}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->ProcessOesTexture(III[FLcom/bytedance/bmf_mods_lite_api/bean/RoiParams;Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_4
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    invoke-direct {v4, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;-><init>(I)V

    .line 13
    iget-object v5, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    move-object/from16 p5, v5

    move/from16 p6, p1

    move/from16 p7, p2

    move/from16 p8, p3

    move-object/from16 p9, p4

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v2

    move-object/from16 p13, v6

    invoke-interface/range {p5 .. p13}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->ProcessOesTexture(III[FLcom/bytedance/bmf_mods_lite_api/bean/RoiParams;Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->oTextureId:I

    .line 15
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_5

    if-lez v3, :cond_5

    .line 16
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bmfTextureProcess oes sucess, scale type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VideoOCLSRBmfWrapperDirectInovke"

    invoke-static {v3, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 18
    iput v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    .line 19
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public VideoOclSrOesProcess(III[F[F[FZLandroid/os/Bundle;)I
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p8

    .line 20
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_0

    return v4

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    if-nez v2, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    .line 23
    :cond_1
    new-instance v13, Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v5, p7

    invoke-direct {v13, v2, v3, v5}, Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;-><init>([F[FZ)V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 24
    const-string/jumbo v3, "sharp_level"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    new-instance v5, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v5, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    move-object v12, v5

    goto :goto_0

    :cond_2
    move-object v12, v2

    .line 26
    :goto_0
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->algType:I

    const/16 v3, 0xc

    if-eq v1, v3, :cond_3

    const/16 v3, 0xe

    if-ne v1, v3, :cond_4

    .line 27
    :cond_3
    iget-object v5, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v13}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->ProcessOesTexture(III[FLcom/bytedance/bmf_mods_lite_api/bean/RoiParams;Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;Lcom/bytedance/bmf_mods_lite_api/bean/OesParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->oTextureId:I

    .line 29
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_5

    if-lez v1, :cond_5

    .line 30
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    const-string v3, "VideoOCLSRBmfWrapperDirectInovke"

    const-string v5, "bmfTextureProcess oes yuv sucess"

    invoke-static {v1, v3, v5}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 31
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 32
    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    return v4
.end method

.method public VideoOclSrProcess(IIIZIIIIIJIILandroid/os/Bundle;)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p13

    .line 3
    .line 4
    move-object/from16 v2, p14

    .line 5
    .line 6
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, -0x1

    .line 10
    if-eq v3, v4, :cond_0

    .line 11
    .line 12
    return v5

    .line 13
    :cond_0
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->_initObjAndMethod()V

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v3, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;

    .line 21
    .line 22
    move-object v6, v3

    .line 23
    move/from16 v7, p5

    .line 24
    .line 25
    move/from16 v8, p6

    .line 26
    .line 27
    move/from16 v9, p7

    .line 28
    .line 29
    move/from16 v10, p8

    .line 30
    .line 31
    move/from16 v11, p9

    .line 32
    .line 33
    move-wide/from16 v12, p10

    .line 34
    .line 35
    invoke-direct/range {v6 .. v13}, Lcom/bytedance/bmf_mods_lite_api/bean/RoiParams;-><init>(IIIIIJ)V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const-string/jumbo v4, "sharp_level"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v2, v5, :cond_2

    .line 54
    .line 55
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSupportSharpness:I

    .line 56
    .line 57
    and-int/2addr v4, v2

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    sget v2, Lcom/bytedance/bmf_mods_lite_api/bean/SRConfig;->SHARP_LEVEL_DEFAULT:I

    .line 61
    .line 62
    :cond_2
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;

    .line 63
    .line 64
    invoke-direct {v4, v2}, Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;-><init>(I)V

    .line 65
    .line 66
    .line 67
    move-object v2, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    :goto_0
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->algType:I

    .line 71
    .line 72
    const/4 v5, 0x7

    .line 73
    if-ge v4, v5, :cond_4

    .line 74
    .line 75
    iget-object v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    move-object/from16 p4, v4

    .line 79
    .line 80
    move/from16 p5, p1

    .line 81
    .line 82
    move/from16 p6, p2

    .line 83
    .line 84
    move/from16 p7, p3

    .line 85
    .line 86
    move-object/from16 p8, v3

    .line 87
    .line 88
    move-object/from16 p9, v5

    .line 89
    .line 90
    move-object/from16 p10, v2

    .line 91
    .line 92
    invoke-interface/range {p4 .. p10}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->ProcessTexture(IIILcom/bytedance/bmf_mods_lite_api/bean/RoiParams;Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    new-instance v4, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;

    .line 102
    .line 103
    invoke-direct {v4, v1}, Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSRObject:Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;

    .line 107
    .line 108
    move-object/from16 p4, v5

    .line 109
    .line 110
    move/from16 p5, p1

    .line 111
    .line 112
    move/from16 p6, p2

    .line 113
    .line 114
    move/from16 p7, p3

    .line 115
    .line 116
    move-object/from16 p8, v3

    .line 117
    .line 118
    move-object/from16 p9, v4

    .line 119
    .line 120
    move-object/from16 p10, v2

    .line 121
    .line 122
    invoke-interface/range {p4 .. p10}, Lcom/bytedance/bmf_mods_lite_api/SuperResolutionLiteApi;->ProcessTexture(IIILcom/bytedance/bmf_mods_lite_api/bean/RoiParams;Lcom/bytedance/bmf_mods_lite_api/bean/MultiScaleParams;Lcom/bytedance/bmf_mods_lite_api/bean/SharpLevelParams;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iput v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->oTextureId:I

    .line 135
    .line 136
    iget v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    .line 137
    .line 138
    const/16 v5, 0x64

    .line 139
    .line 140
    if-lt v4, v5, :cond_5

    .line 141
    .line 142
    if-lez v3, :cond_5

    .line 143
    .line 144
    iget v3, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v5, "bmfTextureProcess sucess, scale type: "

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v4, "VideoOCLSRBmfWrapperDirectInovke"

    .line 164
    .line 165
    invoke-static {v3, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    iput v1, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    iput v4, v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->bmflogCount:I

    .line 175
    .line 176
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    return v1
.end method

.method public onSRAsyncInitResult(II)V
    .locals 3

    .line 1
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mSupportSharpness:I

    .line 2
    .line 3
    const-string v0, "VideoOCLSRBmfWrapperDirectInovke"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    iput p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 9
    .line 10
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

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
    iget p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mTexType:I

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
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapperDirectInvoke;->mAsyncInitStatus:I

    .line 57
    .line 58
    :goto_0
    return-void
.end method
