.class public Lcom/ss/ttvideoengine/model/VideoThumbInfo;
.super Ljava/lang/Object;
.source "VideoThumbInfo.java"


# static fields
.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_FEXT:Ljava/lang/String; = "fext"

.field public static final KEY_IMG_NUM:Ljava/lang/String; = "img_num"

.field public static final KEY_IMG_URI:Ljava/lang/String; = "img_uri"

.field public static final KEY_IMG_URL:Ljava/lang/String; = "img_url"

.field public static final KEY_IMG_URLS:Ljava/lang/String; = "img_urls"

.field public static final KEY_IMG_X_LEN:Ljava/lang/String; = "img_x_len"

.field public static final KEY_IMG_X_SIZE:Ljava/lang/String; = "img_x_size"

.field public static final KEY_IMG_Y_LEN:Ljava/lang/String; = "img_y_len"

.field public static final KEY_IMG_Y_SIZE:Ljava/lang/String; = "img_y_size"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final KEY_VER2_DURATION:Ljava/lang/String; = "Duration"

.field private static final KEY_VER2_FEXT:Ljava/lang/String; = "Fext"

.field private static final KEY_VER2_IMG_NUM:Ljava/lang/String; = "ImgNum"

.field private static final KEY_VER2_IMG_URL:Ljava/lang/String; = "ImgUrl"

.field private static final KEY_VER2_IMG_X_LEN:Ljava/lang/String; = "ImgXLen"

.field private static final KEY_VER2_IMG_X_SIZE:Ljava/lang/String; = "ImgXSize"

.field private static final KEY_VER2_IMG_Y_LEN:Ljava/lang/String; = "ImgYLen"

.field private static final KEY_VER2_IMG_Y_SIZE:Ljava/lang/String; = "ImgYSize"

.field private static final KEY_VER2_INTERVAL:Ljava/lang/String; = "Interval"

.field private static final KEY_VER2_URI:Ljava/lang/String; = "Uri"

.field private static final KEY_VER4_CAPTURE_NUM:Ljava/lang/String; = "CaptureNum"

.field private static final KEY_VER4_CELL_HEIGHT:Ljava/lang/String; = "CellHeight"

.field private static final KEY_VER4_CELL_WIDTH:Ljava/lang/String; = "CellWidth"

.field private static final KEY_VER4_FORMAT:Ljava/lang/String; = "Format"

.field private static final KEY_VER4_IMG_X_LEN:Ljava/lang/String; = "ImgXLen"

.field private static final KEY_VER4_IMG_Y_LEN:Ljava/lang/String; = "ImgYLen"

.field private static final KEY_VER4_INTERVAL:Ljava/lang/String; = "Interval"

.field private static final KEY_VER4_STORE_URLS:Ljava/lang/String; = "StoreUrls"

.field public static final VALUE_VIDEO_THUMB_INFO_CAPTURE_NUM:I = 0x0

.field public static final VALUE_VIDEO_THUMB_INFO_CELL_HEIGHT:I = 0x4

.field public static final VALUE_VIDEO_THUMB_INFO_CELL_WIDTH:I = 0x3

.field public static final VALUE_VIDEO_THUMB_INFO_DURATION:I = 0x7

.field public static final VALUE_VIDEO_THUMB_INFO_FEXT:I = 0x9

.field public static final VALUE_VIDEO_THUMB_INFO_FORMAT:I = 0x9

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_NUM:I = 0x0

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_URL:I = 0x2

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_X_LEN:I = 0x5

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_X_SIZE:I = 0x3

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_Y_LEN:I = 0x6

.field public static final VALUE_VIDEO_THUMB_INFO_IMG_Y_SIZE:I = 0x4

.field public static final VALUE_VIDEO_THUMB_INFO_INTERVAL:I = 0x8

.field public static final VALUE_VIDEO_THUMB_INFO_URI:I = 0x1


# instance fields
.field private mCaptureNumVer4:I

.field private mCellHeightVer4:I

.field private mCellWidthVer4:I

.field public mDuration:D

.field private mDurationVer2:D

.field public mFext:Ljava/lang/String;

.field private mFextVer2:Ljava/lang/String;

.field private mFormatVer4:Ljava/lang/String;

.field public mImgNum:I

.field private mImgNumVer2:I

.field public mImgUrl:Ljava/lang/String;

.field public mImgUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImgUrlVer2:Ljava/lang/String;

.field private mImgXLenVer4:I

.field public mImgXlen:I

.field private mImgXlenVer2:I

.field public mImgXsize:I

.field private mImgXsizeVer2:I

.field private mImgYLenVer4:I

.field public mImgYlen:I

.field private mImgYlenVer2:I

.field public mImgYsize:I

.field private mImgYsizeVer2:I

.field public mInterval:D

.field private mIntervalVer2:D

.field private mIntervalVer4:D

.field private mStoreUrlsVer4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUri:Ljava/lang/String;

.field private mUriVer2:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "img_num"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "ImgUrl"

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 18
    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    iput v5, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 31
    .line 32
    :cond_2
    :goto_0
    iget v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    if-eq v1, v5, :cond_6

    .line 36
    .line 37
    if-ne v1, v4, :cond_3

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_3
    const-string v0, "Interval"

    .line 42
    .line 43
    const-string v4, "ImgYLen"

    .line 44
    .line 45
    const-string v5, "ImgXLen"

    .line 46
    .line 47
    if-ne v1, v2, :cond_4

    .line 48
    .line 49
    :try_start_0
    const-string v1, "ImgNum"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgNumVer2:I

    .line 56
    .line 57
    const-string v1, "Uri"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mUriVer2:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrlVer2:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, "ImgXSize"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXsizeVer2:I

    .line 78
    .line 79
    const-string v1, "ImgYSize"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYsizeVer2:I

    .line 86
    .line 87
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXlenVer2:I

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYlenVer2:I

    .line 98
    .line 99
    const-string v1, "Duration"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mDurationVer2:D

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mIntervalVer2:D

    .line 112
    .line 113
    const-string v0, "Fext"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFextVer2:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_6

    .line 128
    .line 129
    :cond_4
    const/4 v2, 0x4

    .line 130
    if-ne v1, v2, :cond_8

    .line 131
    .line 132
    const-string v1, "CaptureNum"

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCaptureNumVer4:I

    .line 139
    .line 140
    const-string v1, "StoreUrls"

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-lez v2, :cond_5

    .line 153
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v2, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mStoreUrlsVer4:Ljava/util/ArrayList;

    .line 160
    .line 161
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v6, v2, :cond_5

    .line 166
    .line 167
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mStoreUrlsVer4:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    add-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_5
    const-string v1, "CellWidth"

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCellWidthVer4:I

    .line 186
    .line 187
    const-string v1, "CellHeight"

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCellHeightVer4:I

    .line 194
    .line 195
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXLenVer4:I

    .line 200
    .line 201
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYLenVer4:I

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mIntervalVer4:D

    .line 212
    .line 213
    const-string v0, "Format"

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFormatVer4:Ljava/lang/String;

    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgNum:I

    .line 228
    .line 229
    const-string/jumbo v0, "uri"

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mUri:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_7

    .line 243
    .line 244
    const-string v0, "img_uri"

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mUri:Ljava/lang/String;

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :catch_1
    move-exception p1

    .line 254
    goto :goto_5

    .line 255
    :cond_7
    :goto_3
    const-string v0, "img_url"

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrl:Ljava/lang/String;

    .line 262
    .line 263
    const-string v0, "img_x_size"

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXsize:I

    .line 270
    .line 271
    const-string v0, "img_y_size"

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYsize:I

    .line 278
    .line 279
    const-string v0, "img_x_len"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXlen:I

    .line 286
    .line 287
    const-string v0, "img_y_len"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYlen:I

    .line 294
    .line 295
    const-string v0, "duration"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 298
    .line 299
    .line 300
    move-result-wide v0

    .line 301
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mDuration:D

    .line 302
    .line 303
    const-string v0, "interval"

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mInterval:D

    .line 310
    .line 311
    const-string v0, "fext"

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFext:Ljava/lang/String;

    .line 318
    .line 319
    const-string v0, "img_urls"

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    if-eqz p1, :cond_8

    .line 326
    .line 327
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-lez v0, :cond_8

    .line 332
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    .line 338
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrlList:Ljava/util/ArrayList;

    .line 339
    .line 340
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-ge v6, v0, :cond_8

    .line 345
    .line 346
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrlList:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    .line 354
    .line 355
    add-int/lit8 v6, v6, 0x1

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :goto_5
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :cond_8
    :goto_6
    return-void
.end method

.method public getUrls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mStoreUrlsVer4:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mStoreUrlsVer4:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public getValueDouble(I)D
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x7

    .line 5
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    if-eq p1, v2, :cond_1

    .line 12
    .line 13
    if-eq p1, v5, :cond_0

    .line 14
    .line 15
    return-wide v3

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mIntervalVer2:D

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mDurationVer2:D

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_2
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_4

    .line 24
    .line 25
    if-eq p1, v5, :cond_3

    .line 26
    .line 27
    return-wide v3

    .line 28
    :cond_3
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mIntervalVer4:D

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_4
    if-eq p1, v2, :cond_6

    .line 32
    .line 33
    if-eq p1, v5, :cond_5

    .line 34
    .line 35
    return-wide v3

    .line 36
    :cond_5
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mInterval:D

    .line 37
    .line 38
    return-wide v0

    .line 39
    :cond_6
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mDuration:D

    .line 40
    .line 41
    return-wide v0
.end method

.method public getValueInt(I)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x5

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x4

    .line 9
    if-ne v0, v1, :cond_5

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    if-eq p1, v5, :cond_3

    .line 14
    .line 15
    if-eq p1, v6, :cond_2

    .line 16
    .line 17
    if-eq p1, v4, :cond_1

    .line 18
    .line 19
    if-eq p1, v3, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYlenVer2:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXlenVer2:I

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYsizeVer2:I

    .line 29
    .line 30
    return p1

    .line 31
    :cond_3
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXsizeVer2:I

    .line 32
    .line 33
    return p1

    .line 34
    :cond_4
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgNumVer2:I

    .line 35
    .line 36
    return p1

    .line 37
    :cond_5
    if-ne v0, v6, :cond_b

    .line 38
    .line 39
    if-eqz p1, :cond_a

    .line 40
    .line 41
    if-eq p1, v5, :cond_9

    .line 42
    .line 43
    if-eq p1, v6, :cond_8

    .line 44
    .line 45
    if-eq p1, v4, :cond_7

    .line 46
    .line 47
    if-eq p1, v3, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYLenVer4:I

    .line 51
    .line 52
    return p1

    .line 53
    :cond_7
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXLenVer4:I

    .line 54
    .line 55
    return p1

    .line 56
    :cond_8
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCellHeightVer4:I

    .line 57
    .line 58
    return p1

    .line 59
    :cond_9
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCellWidthVer4:I

    .line 60
    .line 61
    return p1

    .line 62
    :cond_a
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mCaptureNumVer4:I

    .line 63
    .line 64
    return p1

    .line 65
    :cond_b
    if-eqz p1, :cond_10

    .line 66
    .line 67
    if-eq p1, v5, :cond_f

    .line 68
    .line 69
    if-eq p1, v6, :cond_e

    .line 70
    .line 71
    if-eq p1, v4, :cond_d

    .line 72
    .line 73
    if-eq p1, v3, :cond_c

    .line 74
    .line 75
    return v2

    .line 76
    :cond_c
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYlen:I

    .line 77
    .line 78
    return p1

    .line 79
    :cond_d
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXlen:I

    .line 80
    .line 81
    return p1

    .line 82
    :cond_e
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgYsize:I

    .line 83
    .line 84
    return p1

    .line 85
    :cond_f
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgXsize:I

    .line 86
    .line 87
    return p1

    .line 88
    :cond_10
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgNum:I

    .line 89
    .line 90
    return p1
.end method

.method public getValueStr(I)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    if-ne v0, v4, :cond_3

    .line 10
    .line 11
    if-eq p1, v1, :cond_2

    .line 12
    .line 13
    if-eq p1, v4, :cond_1

    .line 14
    .line 15
    if-eq p1, v3, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFextVer2:Ljava/lang/String;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrlVer2:Ljava/lang/String;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mUriVer2:Ljava/lang/String;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_3
    const/4 v5, 0x4

    .line 28
    if-ne v0, v5, :cond_5

    .line 29
    .line 30
    if-eq p1, v3, :cond_4

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFormatVer4:Ljava/lang/String;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_5
    if-eq p1, v1, :cond_8

    .line 37
    .line 38
    if-eq p1, v4, :cond_7

    .line 39
    .line 40
    if-eq p1, v3, :cond_6

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mFext:Ljava/lang/String;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mImgUrl:Ljava/lang/String;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mUri:Ljava/lang/String;

    .line 50
    .line 51
    return-object p1
.end method

.method public parseFromPb(Lcom/ss/ttvideoengine/model/VideoModelPb$BigThumb;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/VideoThumbInfo;->mVersion:I

    .line 2
    .line 3
    return-void
.end method
