.class public abstract Lcom/ss/ttm/player/HLSChooseStreamInterface;
.super Lcom/ss/ttm/player/TraitObject;
.source "HLSChooseStreamInterface.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;,
        Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;,
        Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;
    }
.end annotation


# static fields
.field private static final Version0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x7

    .line 5
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/ss/ttm/player/TraitObject;-><init>(IIJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static covertMediaType(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x4

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_2
    return v0
.end method

.method private parseVariant(Ljava/lang/String;)[Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;
    .locals 17

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 12
    .line 13
    move-object/from16 v3, p1

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    new-array v4, v3, [Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v5

    .line 26
    :goto_0
    if-ge v6, v3, :cond_7

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    new-instance v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;

    .line 33
    .line 34
    invoke-direct {v8}, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v9, "bandwidth"

    .line 38
    .line 39
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    iput v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mBandWidth:I

    .line 44
    .line 45
    const-string v9, "average_bandwidth"

    .line 46
    .line 47
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    iput v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mAverageBandwidth:I

    .line 52
    .line 53
    const-string v9, "codecs"

    .line 54
    .line 55
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mCodecs:Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v9, "width"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    iput v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mWidth:I

    .line 69
    .line 70
    const-string v9, "height"

    .line 71
    .line 72
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    iput v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mHeight:I

    .line 77
    .line 78
    const-string v9, "frame_rate"

    .line 79
    .line 80
    const-wide/16 v10, 0x0

    .line 81
    .line 82
    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    double-to-float v9, v9

    .line 87
    iput v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mFrameRate:F

    .line 88
    .line 89
    const-string v9, "HDCP_level"

    .line 90
    .line 91
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mHDCPLevel:Ljava/lang/String;

    .line 96
    .line 97
    const-string v9, "closed_captions"

    .line 98
    .line 99
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mClosedCaptions:Ljava/lang/String;

    .line 104
    .line 105
    const-string v9, "audio_group"

    .line 106
    .line 107
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mAudioGroup:Ljava/lang/String;

    .line 112
    .line 113
    const-string/jumbo v9, "video_group"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mVideoGroup:Ljava/lang/String;

    .line 121
    .line 122
    const-string/jumbo v9, "subtitles_group"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iput-object v9, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mSubtitlesGroup:Ljava/lang/String;

    .line 130
    .line 131
    const-string v9, "n_playlists"

    .line 132
    .line 133
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    const-string v10, "playlists"

    .line 138
    .line 139
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_1

    .line 144
    .line 145
    if-gtz v9, :cond_2

    .line 146
    .line 147
    :cond_1
    move-object/from16 v16, v1

    .line 148
    .line 149
    move-object v1, v2

    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_2
    new-array v10, v9, [Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 153
    .line 154
    iput-object v10, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 155
    .line 156
    move v10, v5

    .line 157
    :goto_1
    if-ge v10, v9, :cond_6

    .line 158
    .line 159
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    new-instance v12, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 164
    .line 165
    invoke-direct {v12}, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v13, "index"

    .line 169
    .line 170
    invoke-virtual {v11, v13, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    iput v13, v12, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mIndex:I

    .line 175
    .line 176
    const-string v13, "n_renditions"

    .line 177
    .line 178
    invoke-virtual {v11, v13, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    const-string v14, "renditions"

    .line 183
    .line 184
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    if-lez v13, :cond_3

    .line 189
    .line 190
    if-nez v11, :cond_4

    .line 191
    .line 192
    :cond_3
    move-object/from16 v16, v1

    .line 193
    .line 194
    move-object v1, v2

    .line 195
    goto :goto_3

    .line 196
    :cond_4
    new-array v14, v13, [Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 197
    .line 198
    iput-object v14, v12, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 199
    .line 200
    move v14, v5

    .line 201
    :goto_2
    if-ge v14, v13, :cond_5

    .line 202
    .line 203
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    new-instance v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 208
    .line 209
    invoke-direct {v5}, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string/jumbo v2, "type"

    .line 213
    .line 214
    .line 215
    move-object/from16 v16, v1

    .line 216
    .line 217
    const/4 v1, -0x1

    .line 218
    invoke-virtual {v15, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v2}, Lcom/ss/ttm/player/HLSChooseStreamInterface;->covertMediaType(I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iput v2, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mMediaTrackType:I

    .line 227
    .line 228
    const-string v2, "name"

    .line 229
    .line 230
    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mName:Ljava/lang/String;

    .line 235
    .line 236
    const-string v2, "info_id"

    .line 237
    .line 238
    invoke-virtual {v15, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iput v1, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mInfoId:I

    .line 243
    .line 244
    const-string v1, "group_id"

    .line 245
    .line 246
    invoke-virtual {v15, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iput-object v1, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mGroupId:Ljava/lang/String;

    .line 251
    .line 252
    const-string v1, "language"

    .line 253
    .line 254
    invoke-virtual {v15, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iput-object v1, v5, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mLanguage:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v1, v12, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 261
    .line 262
    aput-object v5, v1, v14

    .line 263
    .line 264
    add-int/lit8 v14, v14, 0x1

    .line 265
    .line 266
    move-object/from16 v1, v16

    .line 267
    .line 268
    const/4 v2, 0x0

    .line 269
    const/4 v5, 0x0

    .line 270
    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    move-object v2, v4

    .line 273
    goto :goto_7

    .line 274
    :cond_5
    move-object/from16 v16, v1

    .line 275
    .line 276
    iget-object v1, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 277
    .line 278
    aput-object v12, v1, v10

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :goto_3
    iput-object v1, v12, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 282
    .line 283
    iget-object v1, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 284
    .line 285
    aput-object v12, v1, v10

    .line 286
    .line 287
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 288
    .line 289
    move-object/from16 v1, v16

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    const/4 v5, 0x0

    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_6
    move-object/from16 v16, v1

    .line 296
    .line 297
    aput-object v8, v4, v6

    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    goto :goto_6

    .line 301
    :goto_5
    iput-object v1, v8, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 302
    .line 303
    aput-object v8, v4, v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    .line 305
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 306
    .line 307
    move-object v2, v1

    .line 308
    move-object/from16 v1, v16

    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :catch_1
    move-exception v0

    .line 314
    move-object v1, v2

    .line 315
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    .line 317
    .line 318
    move-object v4, v2

    .line 319
    :cond_7
    return-object v4
.end method


# virtual methods
.method public abstract chooseRenditionInfoId(I)I
.end method

.method public abstract chooseVariantBandWidth()I
.end method

.method protected choose_rendition_infoId(I)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/HLSChooseStreamInterface;->chooseRenditionInfoId(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected choose_variant_bandWidth()I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/HLSChooseStreamInterface;->chooseVariantBandWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public abstract streamInfos([Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;)V
.end method

.method protected stream_info(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/HLSChooseStreamInterface;->parseVariant(Ljava/lang/String;)[Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/HLSChooseStreamInterface;->streamInfos([Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
