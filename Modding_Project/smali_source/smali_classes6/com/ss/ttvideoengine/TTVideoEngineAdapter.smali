.class public Lcom/ss/ttvideoengine/TTVideoEngineAdapter;
.super Ljava/lang/Object;
.source "TTVideoEngineAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngineAdapter"

.field private static hlsChooseUrlCallback:Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback; = null

.field private static mHasRegisterHlsProxyProto:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->hlsChooseUrlCallback:Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static convert(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    array-length v3, v1

    .line 16
    if-lez v3, :cond_1

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    new-array v3, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 20
    .line 21
    iput-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 22
    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 27
    .line 28
    aget-object v4, v4, v3

    .line 29
    .line 30
    new-instance v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 31
    .line 32
    invoke-direct {v5}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mAudioGroupId:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->audioGroupId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mVideoGroupId:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->videoGroupId:Ljava/lang/String;

    .line 42
    .line 43
    iget-wide v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mProgramId:J

    .line 44
    .line 45
    long-to-int v6, v6

    .line 46
    iput v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->programId:I

    .line 47
    .line 48
    iget-wide v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mBandWidth:J

    .line 49
    .line 50
    long-to-int v6, v6

    .line 51
    iput v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->bandwidth:I

    .line 52
    .line 53
    iget-wide v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mAverageBandWidth:J

    .line 54
    .line 55
    long-to-int v6, v6

    .line 56
    iput v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->averageBandwidth:I

    .line 57
    .line 58
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mCodecs:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->codecs:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mClosedCaptionsGroupId:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->closedCaptionsGroupId:Ljava/lang/String;

    .line 65
    .line 66
    iget v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mFrameRate:F

    .line 67
    .line 68
    iput v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->frameRate:F

    .line 69
    .line 70
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mHDCPLevel:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->hdcpLevel:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mResolution:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->resolution:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mSubtitleGroupId:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->subtitleGroupId:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mUri:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v4, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;->uri:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 87
    .line 88
    aput-object v5, v4, v3

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    array-length v3, v1

    .line 98
    if-lez v3, :cond_2

    .line 99
    .line 100
    array-length v1, v1

    .line 101
    new-array v3, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 102
    .line 103
    iput-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->renditions:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 104
    .line 105
    move v3, v2

    .line 106
    :goto_1
    if-ge v3, v1, :cond_2

    .line 107
    .line 108
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 109
    .line 110
    aget-object v4, v4, v3

    .line 111
    .line 112
    new-instance v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 113
    .line 114
    invoke-direct {v5}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mAssocLanguage:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->assocLanguage:Ljava/lang/String;

    .line 120
    .line 121
    iget-boolean v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mAutoSelect:Z

    .line 122
    .line 123
    iput-boolean v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->autoSelect:Z

    .line 124
    .line 125
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mCharacteristics:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->characteristics:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mChannels:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->channels:Ljava/lang/String;

    .line 132
    .line 133
    iget-boolean v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mForced:Z

    .line 134
    .line 135
    iput-boolean v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->forced:Z

    .line 136
    .line 137
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mGroupId:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->groupId:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mInStreamId:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->inStreamId:Ljava/lang/String;

    .line 144
    .line 145
    iget-boolean v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mDefault:Z

    .line 146
    .line 147
    iput-boolean v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->isDefault:Z

    .line 148
    .line 149
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mLanguage:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->language:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mName:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->name:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mType:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->type:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v4, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mUri:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v4, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;->uri:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->renditions:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 166
    .line 167
    aput-object v5, v4, v3

    .line 168
    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 173
    .line 174
    if-eqz v1, :cond_3

    .line 175
    .line 176
    array-length v3, v1

    .line 177
    if-lez v3, :cond_3

    .line 178
    .line 179
    array-length v1, v1

    .line 180
    new-array v3, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

    .line 181
    .line 182
    iput-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionKeys:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

    .line 183
    .line 184
    move v3, v2

    .line 185
    :goto_2
    if-ge v3, v1, :cond_3

    .line 186
    .line 187
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 188
    .line 189
    aget-object v4, v4, v3

    .line 190
    .line 191
    new-instance v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

    .line 192
    .line 193
    invoke-direct {v5}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mMethod:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->method:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mUri:Ljava/lang/String;

    .line 201
    .line 202
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->uri:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mKeyFormat:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->keyFormat:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mKeyFormatVersions:Ljava/lang/String;

    .line 209
    .line 210
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->keyFormatVersions:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v4, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mIV:Ljava/lang/String;

    .line 213
    .line 214
    iput-object v4, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->IV:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionKeys:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

    .line 217
    .line 218
    aput-object v5, v4, v3

    .line 219
    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 224
    .line 225
    if-eqz v1, :cond_4

    .line 226
    .line 227
    array-length v3, v1

    .line 228
    if-lez v3, :cond_4

    .line 229
    .line 230
    array-length v1, v1

    .line 231
    new-array v3, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

    .line 232
    .line 233
    iput-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionDatas:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

    .line 234
    .line 235
    move v3, v2

    .line 236
    :goto_3
    if-ge v3, v1, :cond_4

    .line 237
    .line 238
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 239
    .line 240
    aget-object v4, v4, v3

    .line 241
    .line 242
    new-instance v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

    .line 243
    .line 244
    invoke-direct {v5}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mDataId:Ljava/lang/String;

    .line 248
    .line 249
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->dataId:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mValue:Ljava/lang/String;

    .line 252
    .line 253
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->value:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v6, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mUri:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->uri:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v4, v4, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mLanguage:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v4, v5, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->language:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionDatas:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

    .line 264
    .line 265
    aput-object v5, v4, v3

    .line 266
    .line 267
    add-int/lit8 v3, v3, 0x1

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 271
    .line 272
    if-eqz v1, :cond_5

    .line 273
    .line 274
    array-length v3, v1

    .line 275
    if-lez v3, :cond_5

    .line 276
    .line 277
    array-length v1, v1

    .line 278
    new-array v3, v1, [Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

    .line 279
    .line 280
    iput-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->iFrameStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

    .line 281
    .line 282
    :goto_4
    if-ge v2, v1, :cond_5

    .line 283
    .line 284
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 285
    .line 286
    aget-object v3, v3, v2

    .line 287
    .line 288
    new-instance v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

    .line 289
    .line 290
    invoke-direct {v4}, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mCodecs:Ljava/lang/String;

    .line 294
    .line 295
    iput-object v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->codecs:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mResolution:Ljava/lang/String;

    .line 298
    .line 299
    iput-object v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->resolution:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mHDCPLevel:Ljava/lang/String;

    .line 302
    .line 303
    iput-object v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->HDCPLevel:Ljava/lang/String;

    .line 304
    .line 305
    iget-wide v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mBandWidth:J

    .line 306
    .line 307
    iput-wide v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->bandWidth:J

    .line 308
    .line 309
    iget-wide v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mAverageBandWidth:J

    .line 310
    .line 311
    iput-wide v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->averageBandWidth:J

    .line 312
    .line 313
    iget-wide v5, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mProgramId:J

    .line 314
    .line 315
    iput-wide v5, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->programId:J

    .line 316
    .line 317
    iget-object v3, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mUri:Ljava/lang/String;

    .line 318
    .line 319
    iput-object v3, v4, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->uri:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->iFrameStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

    .line 322
    .line 323
    aput-object v4, v3, v2

    .line 324
    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_5
    return-object v0
.end method

.method public static isHlsProxyEnabled()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2338

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "DATALOADER_KEY_ENABLE_HLS_PROXY not enabled"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->getHlsProxyProtocol()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    const-wide/16 v4, -0x1

    .line 27
    .line 28
    cmp-long v0, v2, v4

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "get HlsProxyHandle: -1 "

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isHlsProxyEnable()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    return v0
.end method

.method public static removePlayTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->removePlayTask(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static removePreConnectTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->erasePreConnectTask(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setPreloadChooseUrlCallback(Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->hlsChooseUrlCallback:Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->setOnMasterPlaylistListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/ss/ttvideoengine/TTVideoEngineAdapter$1;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->setOnMasterPlaylistListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public static tryRegisterHlsProxyHandle(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2338

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    sput-boolean p0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->mHasRegisterHlsProxyProto:Z

    .line 15
    .line 16
    sget-object p0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "tryRegisterHlsProxyHandle, dataloader hlsproxy disabled:"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "tryRegisterHlsProxyHandle, player type:"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-boolean v1, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->mHasRegisterHlsProxyProto:Z

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x1

    .line 61
    if-ne v1, v2, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->getHlsProxyProtocol()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    const-wide/16 v5, -0x1

    .line 68
    .line 69
    cmp-long v1, v3, v5

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    const/16 v1, 0x1f6

    .line 74
    .line 75
    invoke-interface {p0, v1, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->setLongOption(IJ)J

    .line 76
    .line 77
    .line 78
    sput-boolean v2, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->mHasRegisterHlsProxyProto:Z

    .line 79
    .line 80
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "get HlsProxyHandle: "

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method
