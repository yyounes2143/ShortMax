.class public final Lcom/inmobi/media/y6;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public final y:Lcom/inmobi/adquality/models/AdQualityResult;

.field public final z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;


# direct methods
.method public constructor <init>(Lcom/inmobi/adquality/models/AdQualityResult;Lcom/inmobi/media/ue;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V
    .locals 9

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uidMap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityResult;->getBeaconUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v7, "application/json"

    .line 21
    .line 22
    const/16 v8, 0x40

    .line 23
    .line 24
    const-string v2, "POST"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v1, p0

    .line 29
    move-object v4, p2

    .line 30
    invoke-direct/range {v1 .. v8}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/inmobi/media/y6;->z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 8

    .line 1
    const-string v0, "JsonBeaconRequest"

    .line 2
    .line 3
    const-string v1, "tag"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "preparing beacon request"

    .line 9
    .line 10
    const-string v3, "message"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, p0, Lcom/inmobi/media/N9;->t:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/inmobi/media/N9;->u:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/inmobi/media/N9;->x:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/inmobi/media/N9;->v:Z

    .line 26
    .line 27
    invoke-super {p0}, Lcom/inmobi/media/N9;->f()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "getScreenshot"

    .line 34
    .line 35
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/inmobi/adquality/models/AdQualityResult;->getImageLocation()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-lez v4, :cond_2

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v4, "screen shot image found in DB"

    .line 57
    .line 58
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/inmobi/adquality/models/AdQualityResult;->getImageLocation()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .line 78
    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 82
    .line 83
    const/16 v7, 0x64

    .line 84
    .line 85
    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v5, "toByteArray(...)"

    .line 96
    .line 97
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    array-length v5, v4

    .line 101
    if-nez v5, :cond_1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/inmobi/media/N9;->l:Lorg/json/JSONObject;

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    const-string v6, "screenshotImageByte"

    .line 109
    .line 110
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v4, "image file not found..."

    .line 122
    .line 123
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v2, "result produced no screenshot"

    .line 133
    .line 134
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "getExtras"

    .line 144
    .line 145
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/inmobi/adquality/models/AdQualityResult;->getExtras()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    iget-object v4, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/inmobi/adquality/models/AdQualityResult;->getExtras()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    iget-object v5, p0, Lcom/inmobi/media/N9;->l:Lorg/json/JSONObject;

    .line 172
    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    const-string v6, "templateInfo"

    .line 176
    .line 177
    new-instance v7, Lorg/json/JSONObject;

    .line 178
    .line 179
    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catch_1
    move-exception v4

    .line 187
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v5, "error while adding extras"

    .line 191
    .line 192
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    :cond_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v4, "result has no extras"

    .line 202
    .line 203
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/inmobi/adquality/models/AdQualityResult;->getSdkModelResult()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    iget-object v0, p0, Lcom/inmobi/media/N9;->l:Lorg/json/JSONObject;

    .line 231
    .line 232
    if-eqz v0, :cond_7

    .line 233
    .line 234
    iget-object v1, p0, Lcom/inmobi/media/y6;->y:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getSdkModelResult()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v2, "sdkModelInfo"

    .line 241
    .line 242
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v1, "result has no model info"

    .line 250
    .line 251
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_7
    :goto_4
    return-void
.end method
