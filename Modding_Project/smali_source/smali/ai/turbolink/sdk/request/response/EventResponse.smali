.class public final Lai/turbolink/sdk/request/response/EventResponse;
.super Ljava/lang/Object;
.source "EventResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _data:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bizMs:I

.field private blackbox:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignData:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private code:I

.field private deviceStatus:I

.field private fromUserData:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private linkClickTime:I

.field private linkData:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private linkHashId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private projectStatus:I

.field private useVerify:I

.field private verifyAppLinks:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verifyScheme:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 14
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "project_status"

    .line 2
    .line 3
    const-string v1, "device_status"

    .line 4
    .line 5
    const-string v2, "verify_applinks"

    .line 6
    .line 7
    const-string v3, "verify_scheme"

    .line 8
    .line 9
    const-string v4, "use_verify"

    .line 10
    .line 11
    const-string v5, "biz_ms"

    .line 12
    .line 13
    const-string v6, "blackbox"

    .line 14
    .line 15
    const-string v7, "link_hash_id"

    .line 16
    .line 17
    const-string v8, "data"

    .line 18
    .line 19
    const-string v9, "from_user"

    .line 20
    .line 21
    const-string v10, "campaign_data"

    .line 22
    .line 23
    const-string v11, "link_data"

    .line 24
    .line 25
    const-string v12, "responseBody"

    .line 26
    .line 27
    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v12, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 39
    .line 40
    new-instance v12, Lorg/json/JSONArray;

    .line 41
    .line 42
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 46
    .line 47
    const-string v12, ""

    .line 48
    .line 49
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->blackbox:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v13, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v13, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 57
    .line 58
    new-instance v13, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v13, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;

    .line 64
    .line 65
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->verifyScheme:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->verifyAppLinks:Ljava/lang/String;

    .line 68
    .line 69
    :try_start_0
    const-string v12, "code"

    .line 70
    .line 71
    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    iput v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->code:I

    .line 76
    .line 77
    const-string v12, "msg"

    .line 78
    .line 79
    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    iput-object v12, p0, Lai/turbolink/sdk/request/response/EventResponse;->msg:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-nez v12, :cond_9

    .line 90
    .line 91
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v8, "responseBody.getJSONObject(\"data\")"

    .line 96
    .line 97
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 101
    .line 102
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkHashId:Ljava/lang/String;

    .line 115
    .line 116
    sget-object p1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 117
    .line 118
    iget-object v7, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 119
    .line 120
    const-string v8, "link_click_time"

    .line 121
    .line 122
    invoke-virtual {p1, v7, v8}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkClickTime:I

    .line 127
    .line 128
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_0

    .line 135
    .line 136
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 137
    .line 138
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_0

    .line 143
    .line 144
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v7, "_data.getJSONArray(\"link_data\")"

    .line 151
    .line 152
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception p1

    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :catch_1
    move-exception p1

    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_0
    :goto_0
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 165
    .line 166
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_1

    .line 171
    .line 172
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 173
    .line 174
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string v6, "_data.getString(\"blackbox\")"

    .line 179
    .line 180
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->blackbox:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_1

    .line 190
    .line 191
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 192
    .line 193
    iget-object v6, p0, Lai/turbolink/sdk/request/response/EventResponse;->blackbox:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1, v6}, Lai/turbolink/sdk/TurboLink$Companion;->setBlackbox(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_1
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 199
    .line 200
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_2

    .line 205
    .line 206
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 207
    .line 208
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iput p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->bizMs:I

    .line 213
    .line 214
    sget-object v5, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 215
    .line 216
    int-to-long v6, p1

    .line 217
    invoke-virtual {v5, v6, v7}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestResponseTime(J)V

    .line 218
    .line 219
    .line 220
    :cond_2
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 221
    .line 222
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_3

    .line 227
    .line 228
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    iput p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->useVerify:I

    .line 235
    .line 236
    sget-object v4, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 237
    .line 238
    invoke-virtual {v4, p1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setSessionUseVerify(I)V

    .line 239
    .line 240
    .line 241
    :cond_3
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 242
    .line 243
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_4

    .line 248
    .line 249
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 250
    .line 251
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string v3, "_data.getString(\"verify_scheme\")"

    .line 256
    .line 257
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->verifyScheme:Ljava/lang/String;

    .line 261
    .line 262
    sget-object v3, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 263
    .line 264
    invoke-virtual {v3, p1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setVerifyScheme(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_4
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 268
    .line 269
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_5

    .line 274
    .line 275
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 276
    .line 277
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    const-string v2, "_data.getString(\"verify_applinks\")"

    .line 282
    .line 283
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->verifyAppLinks:Ljava/lang/String;

    .line 287
    .line 288
    sget-object v2, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 289
    .line 290
    invoke-virtual {v2, p1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setVerifyAppLinks(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_5
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_6

    .line 300
    .line 301
    sget-object p1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 302
    .line 303
    iget-object v2, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 304
    .line 305
    invoke-virtual {p1, v2, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    iput p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->deviceStatus:I

    .line 310
    .line 311
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 312
    .line 313
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setDeviceStatus(I)V

    .line 314
    .line 315
    .line 316
    :cond_6
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_7

    .line 323
    .line 324
    sget-object p1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 325
    .line 326
    iget-object v1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 327
    .line 328
    invoke-virtual {p1, v1, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    iput p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->projectStatus:I

    .line 333
    .line 334
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 335
    .line 336
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setProjectStatus(I)V

    .line 337
    .line 338
    .line 339
    :cond_7
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 340
    .line 341
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_8

    .line 346
    .line 347
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 348
    .line 349
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_8

    .line 354
    .line 355
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 356
    .line 357
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    const-string v0, "_data.getJSONObject(\"campaign_data\")"

    .line 362
    .line 363
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 367
    .line 368
    :cond_8
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 369
    .line 370
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_9

    .line 375
    .line 376
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 377
    .line 378
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-nez p1, :cond_9

    .line 383
    .line 384
    iget-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 385
    .line 386
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    const-string v0, "_data.getJSONObject(\"from_user\")"

    .line 391
    .line 392
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iput-object p1, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .line 397
    goto :goto_3

    .line 398
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v1, "parser request returns occurred exception."

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v1, "The parser request returns occurred exception."

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    :cond_9
    :goto_3
    return-void
.end method

.method private final getLinkDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "key"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const-string v1, "value"

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "keyJsonObject.getString(\"value\")"

    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final getBizMs()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->bizMs:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBlackbox()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->blackbox:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignData()Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    const-string v1, "campaign_id"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    new-instance v0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 12
    .line 13
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "campaignData.getString(\"campaign_id\")"

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object v1, v2

    .line 38
    move v3, v4

    .line 39
    move v5, v3

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object v1, v2

    .line 44
    move v3, v4

    .line 45
    move v5, v3

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    move-object v1, v2

    .line 49
    :goto_0
    :try_start_1
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "campaignData.getString(\"title\")"

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v2, v0

    .line 69
    goto :goto_3

    .line 70
    :catch_2
    move-exception v0

    .line 71
    move v3, v4

    .line 72
    move v5, v3

    .line 73
    :goto_1
    move-object v8, v2

    .line 74
    move-object v2, v1

    .line 75
    move-object v1, v8

    .line 76
    goto :goto_4

    .line 77
    :catch_3
    move-exception v0

    .line 78
    move v3, v4

    .line 79
    move v5, v3

    .line 80
    :goto_2
    move-object v8, v2

    .line 81
    move-object v2, v1

    .line 82
    move-object v1, v8

    .line 83
    goto :goto_6

    .line 84
    :cond_2
    :goto_3
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 85
    .line 86
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 87
    .line 88
    const-string v5, "start"

    .line 89
    .line 90
    invoke-virtual {v0, v3, v5}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :try_start_2
    iget-object v5, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 95
    .line 96
    const-string v6, "end"

    .line 97
    .line 98
    invoke-virtual {v0, v5, v6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 102
    :try_start_3
    iget-object v6, p0, Lai/turbolink/sdk/request/response/EventResponse;->campaignData:Lorg/json/JSONObject;

    .line 103
    .line 104
    const-string v7, "status"

    .line 105
    .line 106
    invoke-virtual {v0, v6, v7}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonValueInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 110
    goto :goto_7

    .line 111
    :catch_4
    move-exception v0

    .line 112
    goto :goto_1

    .line 113
    :catch_5
    move-exception v0

    .line 114
    goto :goto_2

    .line 115
    :catch_6
    move-exception v0

    .line 116
    move v5, v4

    .line 117
    goto :goto_1

    .line 118
    :catch_7
    move-exception v0

    .line 119
    move v5, v4

    .line 120
    goto :goto_2

    .line 121
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v7, "parser request returns occurred exception."

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_5
    move-object v8, v2

    .line 146
    move-object v2, v1

    .line 147
    move-object v1, v8

    .line 148
    goto :goto_7

    .line 149
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v7, "The parser request returns occurred exception."

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :goto_7
    new-instance v0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 175
    .line 176
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->setTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v3}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->setStart(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0, v5}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->setEnd(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, v4}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->setStatus(I)Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCustomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lai/turbolink/sdk/request/response/EventResponse;->getLinkDataKey(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final getData()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->_data:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "this._data.toString()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDeviceStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->deviceStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFromUser()Lai/turbolink/sdk/campaign/properties/UserProperties;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "invite_code"

    .line 2
    .line 3
    const-string v1, "user_id"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    new-instance v0, Lai/turbolink/sdk/campaign/properties/UserProperties;

    .line 12
    .line 13
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/UserProperties;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "fromUserData.getString(\"user_id\")"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object v1, v2

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    move-object v1, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move-object v1, v2

    .line 42
    :goto_0
    :try_start_1
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->fromUserData:Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "fromUserData.getString(\"invite_code\")"

    .line 57
    .line 58
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 59
    .line 60
    .line 61
    move-object v2, v0

    .line 62
    goto :goto_3

    .line 63
    :catch_2
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :catch_3
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "parser request returns occurred exception."

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "The parser request returns occurred exception."

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_3
    new-instance v0, Lai/turbolink/sdk/campaign/properties/UserProperties;

    .line 117
    .line 118
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/UserProperties;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/properties/UserProperties;->setUserId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/UserProperties;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/campaign/properties/UserProperties;->setInviteCode(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/UserProperties;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

.method public final getLinkData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkData:Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 22
    .line 23
    invoke-direct {v4}, Lai/turbolink/sdk/deeplink/LinkDataProperties;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v5, "key"

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "keyJsonObject.getString(\"key\")"

    .line 33
    .line 34
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setKey(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "value"

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v5, "keyJsonObject.getString(\"value\")"

    .line 48
    .line 49
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setValue(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-object v0
.end method

.method public final getLinkHashId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->linkHashId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->msg:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getUseVerify()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/response/EventResponse;->useVerify:I

    .line 2
    .line 3
    return v0
.end method
