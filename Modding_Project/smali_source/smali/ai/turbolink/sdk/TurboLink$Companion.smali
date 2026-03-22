.class public final Lai/turbolink/sdk/TurboLink$Companion;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lai/turbolink/sdk/TurboLink$Companion;-><init>()V

    return-void
.end method

.method public static synthetic autoInstance$default(Lai/turbolink/sdk/TurboLink$Companion;Landroid/content/Context;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;ILjava/lang/Object;)Lai/turbolink/sdk/TurboLink;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lai/turbolink/sdk/TurboLink$Companion;->autoInstance(Landroid/content/Context;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic autoInstance$default(Lai/turbolink/sdk/TurboLink$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;ILjava/lang/Object;)Lai/turbolink/sdk/TurboLink;
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v2 .. v8}, Lai/turbolink/sdk/TurboLink$Companion;->autoInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    move-object v0, p5

    .line 17
    :goto_0
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/UserHelper;->getUserId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    if-eqz p5, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    invoke-virtual {p5}, Lai/turbolink/sdk/helpers/UserHelper;->getUserId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    new-instance p5, Lai/turbolink/sdk/TurboLink;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "context.applicationContext"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p5, v1, v0}, Lai/turbolink/sdk/TurboLink;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p5}, Lai/turbolink/sdk/TurboLink;->access$set_turboLinkReferral$cp(Lai/turbolink/sdk/TurboLink;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    invoke-virtual {p5, v0}, Lai/turbolink/sdk/helpers/UserHelper;->setUserId(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    if-eqz p5, :cond_3

    .line 76
    .line 77
    const-string p2, "Warning: Please enter your projectId in your project`s AndroidManifest file!"

    .line 78
    .line 79
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    sget-object p5, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 95
    .line 96
    invoke-virtual {p5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getNO_STRING_VALUE()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p5

    .line 100
    invoke-virtual {p2, p5}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setProjectID(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 105
    .line 106
    .line 107
    move-result-object p5

    .line 108
    if-eqz p5, :cond_5

    .line 109
    .line 110
    invoke-static {p5}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 111
    .line 112
    .line 113
    move-result-object p5

    .line 114
    if-eqz p5, :cond_5

    .line 115
    .line 116
    if-nez p2, :cond_4

    .line 117
    .line 118
    const-string p2, ""

    .line 119
    .line 120
    :cond_4
    invoke-virtual {p5, p2}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setProjectID(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_6

    .line 128
    .line 129
    const-string p2, "Warning: Please enter your appKey in your project`s AndroidManifest file!"

    .line 130
    .line 131
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-eqz p2, :cond_8

    .line 139
    .line 140
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    sget-object p3, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 147
    .line 148
    invoke-virtual {p3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getNO_STRING_VALUE()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setAppKey(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_8

    .line 161
    .line 162
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eqz p2, :cond_8

    .line 167
    .line 168
    if-nez p3, :cond_7

    .line 169
    .line 170
    const-string p3, ""

    .line 171
    .line 172
    :cond_7
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setAppKey(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_9

    .line 180
    .line 181
    const-string p2, "Warning: Please enter your appSecret in your project`s AndroidManifest file!"

    .line 182
    .line 183
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_b

    .line 191
    .line 192
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-eqz p2, :cond_b

    .line 197
    .line 198
    sget-object p3, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 199
    .line 200
    invoke-virtual {p3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getNO_STRING_VALUE()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setAppSecret(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    if-eqz p2, :cond_b

    .line 213
    .line 214
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    if-eqz p2, :cond_b

    .line 219
    .line 220
    if-nez p4, :cond_a

    .line 221
    .line 222
    const-string p4, ""

    .line 223
    .line 224
    :cond_a
    invoke-virtual {p2, p4}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setAppSecret(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_3
    instance-of p2, p1, Landroid/app/Application;

    .line 228
    .line 229
    if-eqz p2, :cond_c

    .line 230
    .line 231
    const-string p2, "Context is instanceOf Application."

    .line 232
    .line 233
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->i(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    if-eqz p2, :cond_c

    .line 241
    .line 242
    move-object p3, p1

    .line 243
    check-cast p3, Landroid/app/Application;

    .line 244
    .line 245
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->isPlugin()Z

    .line 246
    .line 247
    .line 248
    move-result p4

    .line 249
    invoke-static {p2, p3, p6, p4}, Lai/turbolink/sdk/TurboLink;->access$setActivityLifeCycleObserver(Lai/turbolink/sdk/TurboLink;Landroid/app/Application;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 250
    .line 251
    .line 252
    :cond_c
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserAgentGet_()Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    const/4 p3, 0x1

    .line 257
    if-ne p2, p3, :cond_d

    .line 258
    .line 259
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    if-eqz p2, :cond_d

    .line 264
    .line 265
    invoke-static {p2}, Lai/turbolink/sdk/TurboLink;->access$get_deviceInfo$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/device/DeviceInfo;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    if-eqz p2, :cond_d

    .line 270
    .line 271
    invoke-virtual {p2}, Lai/turbolink/sdk/device/DeviceInfo;->setAndGetUserAgent()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    :cond_d
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getDisableAutoSessionInitialization()Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-nez p2, :cond_11

    .line 279
    .line 280
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    const/4 p4, 0x0

    .line 285
    if-eqz p2, :cond_e

    .line 286
    .line 287
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    goto :goto_4

    .line 292
    :cond_e
    move-object p2, p4

    .line 293
    :goto_4
    sget-object p5, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 294
    .line 295
    if-ne p2, p5, :cond_11

    .line 296
    .line 297
    if-nez p6, :cond_f

    .line 298
    .line 299
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 300
    .line 301
    .line 302
    move-result-object p6

    .line 303
    :cond_f
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    if-eqz p2, :cond_10

    .line 308
    .line 309
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 310
    .line 311
    .line 312
    move-result-object p4

    .line 313
    :cond_10
    invoke-virtual {p0, p4}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/TurboLinkActivitySession;->isAutoInitialization(Z)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p2, p6}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 326
    .line 327
    .line 328
    :cond_11
    sget-object p2, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 329
    .line 330
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 331
    .line 332
    .line 333
    move-result-object p4

    .line 334
    sget-object p5, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 335
    .line 336
    sget-object p6, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->INIT_SESSION:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 337
    .line 338
    invoke-virtual {p6}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p6

    .line 342
    invoke-virtual {p5, p6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 343
    .line 344
    .line 345
    move-result-object p6

    .line 346
    invoke-virtual {p4, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p5, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->isKotlinCode(Landroid/content/Context;)Z

    .line 350
    .line 351
    .line 352
    move-result p4

    .line 353
    if-eqz p4, :cond_12

    .line 354
    .line 355
    const-string p4, "Kotlin"

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_12
    const-string p4, "Java"

    .line 359
    .line 360
    :goto_5
    invoke-virtual {p2, p4}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setAppLanguage(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    sget-object p4, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 364
    .line 365
    invoke-virtual {p4, p1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p2, p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setPackageName(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSetEventCallback()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    const/4 p4, 0x2

    .line 377
    if-ne p1, p4, :cond_13

    .line 378
    .line 379
    move p3, p4

    .line 380
    :cond_13
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setSetCallbackBeforeInit(I)V

    .line 381
    .line 382
    .line 383
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 384
    .line 385
    .line 386
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    .line 388
    return-object p1

    .line 389
    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    throw p1
.end method

.method static synthetic initInstance$default(Lai/turbolink/sdk/TurboLink$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;ILjava/lang/Object;)Lai/turbolink/sdk/TurboLink;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v8, p6

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-direct/range {v2 .. v8}, Lai/turbolink/sdk/TurboLink$Companion;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static synthetic setAppUser$default(Lai/turbolink/sdk/TurboLink$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lai/turbolink/sdk/TurboLinkActivitySession;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final declared-synchronized autoInstance(Landroid/content/Context;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    invoke-virtual {v0, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getProjectId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    .line 4
    invoke-direct/range {v1 .. v7}, Lai/turbolink/sdk/TurboLink$Companion;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized autoInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSecret"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p6}, Lai/turbolink/sdk/TurboLink$Companion;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final createDeepLink()Lai/turbolink/sdk/deeplink/LinkProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lai/turbolink/sdk/deeplink/LinkProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/deeplink/LinkProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final customEvent(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->CUSTOM:Lai/turbolink/sdk/request/TurboLinkEventType;

    invoke-direct {v0, p1, v1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    return-object v0
.end method

.method public final customEvent(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    const/4 v1, 0x0

    sget-object v2, Lai/turbolink/sdk/request/TurboLinkEventType;->CUSTOM:Lai/turbolink/sdk/request/TurboLinkEventType;

    invoke-direct {v0, v1, v2, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    return-object v0
.end method

.method public final disableLogger()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->setLogEnabled(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final enableLogger()V
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getGLOBAL_VERSION_TAG$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->always(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->setLogEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getBlackbox()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getBlackbox$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getCampaignCreateCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appCampaignCreateCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getCampaignDestroyCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appCampaignDestroyCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getCampaignPauseCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appCampaignPauseCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getCampaignResumeCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appCampaignResumeCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getClientRewardsListener()Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_clientRewardsListener$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getClipboardText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getClipboardText$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getDeviceStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getDeviceStatus$cp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getDisableAutoSessionInitialization()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getDisableAutoSessionInitialization$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkEventCallback$cp()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getEventListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appEventListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getIdSimpleMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getIdSimpleMode$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final declared-synchronized getInstance()Lai/turbolink/sdk/TurboLink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "The TurboLink instance is not created yet, First you call autoInstance(Context) in custom application"

    .line 9
    .line 10
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

.method public final getLastNoLoginWebviewUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getLastNoLoginWebviewUrl$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getLastOpenWebViewUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getLastOpenWebViewUrl$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getLoginActivity()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appLoginActivityRef$cp()Lkotlin/reflect/KClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getLoginListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appLoginListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPointListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appPointsListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getProjectStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getProjectStatus$cp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getRedirectListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appRedirectListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getRegActivity()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appRegActivityRef$cp()Lkotlin/reflect/KClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getRegListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appRegListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getRunEnvironment()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getRunEnvironment$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "2.1.2"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getSdkType$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getShareListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$get_appShareListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getSimpleParameterMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getSimpleParameterMode$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getToggleClickAppEventListenerCallback()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getToggleClickAppEventListenerCallback$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getUserAgentGet_()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getUserAgentGet_$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getUserAgentString_()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getUserAgentString_$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getUserCompanionObj$cp()Lai/turbolink/sdk/helpers/UserHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getUserId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method public final getUserLevel()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, ""

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    move-object v2, v0

    .line 42
    check-cast v2, Ljava/lang/Iterable;

    .line 43
    .line 44
    const/16 v9, 0x3e

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const-string v3, ","

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v1, v0

    .line 62
    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getWebviewGoReloadUrl()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getWebviewGoReloadUrl$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getWebviewGoReloadUrlLastCustomEventTime()J
    .locals 2

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$getWebviewGoReloadUrlLastCustomEventTime$cp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final isBelongTurboLink(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "linkOrWord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getIS_TURBOLINK_LINK_IDENTIFY()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget-object v4, v0, v3

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static {p1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return v2
.end method

.method public final isPlugin()Z
    .locals 1

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink;->access$isPlugin$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final isUrlBelongTurboLink(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getIS_TURBOLINK_URL_IDENTIFY()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget-object v4, v0, v3

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static {p1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return v2
.end method

.method public final reSetwebviewGoReloadUrl()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink$Companion;->setWebviewGoReloadUrl(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink$Companion;->setToggleClickAppEventListenerCallback(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setActivityIntent(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "activity.intent"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->haveAndIsTurboLinkIntentUrl(Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, v0}, Lai/turbolink/sdk/TurboLink;->onIntentRead(Landroid/content/Intent;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setAppUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "level"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    filled-new-array {p2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, ""

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setUserId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nickName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "avatar"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "tags"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "inviteCode"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setUserId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p2}, Lai/turbolink/sdk/helpers/UserHelper;->setNickName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/helpers/UserHelper;->setAvatar(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 56
    .line 57
    .line 58
    array-length p2, p4

    .line 59
    const/4 p3, 0x0

    .line 60
    :goto_0
    if-ge p3, p2, :cond_0

    .line 61
    .line 62
    aget-object v0, p4, p3

    .line 63
    .line 64
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 65
    .line 66
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 p3, p3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p5}, Lai/turbolink/sdk/helpers/UserHelper;->setInviteCode(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p2, ""

    .line 88
    .line 89
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 96
    .line 97
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 102
    .line 103
    sget-object p3, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->SET_USER_ID_EMPTY:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 104
    .line 105
    invoke-virtual {p3}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 118
    .line 119
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 124
    .line 125
    sget-object p3, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->SET_USER_ID:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 126
    .line 127
    invoke-virtual {p3}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p2, p3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method

.method public final setAppUserInviteCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setInviteCode(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setAppUserLevel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setAppUserTag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserCompanionObj()Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setBlackbox(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setBlackbox$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setClipboardText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setClipboardText$cp(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setDelayedSessionInitialization(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setDisableAutoSessionInitialization(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 11
    .line 12
    sget-object v2, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->DELAY_INIT:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 13
    .line 14
    invoke-virtual {v2}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setEnableDelayInit(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setDeviceStatus(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setDeviceStatus$cp(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setDisableAutoSessionInitialization(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setDisableAutoSessionInitialization$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setIdSimpleMode()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lai/turbolink/sdk/TurboLink;->access$setIdSimpleMode$cp(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setIsPlugin()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink$Companion;->setPlugin(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setLastNoLoginWebviewUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setLastNoLoginWebviewUrl$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setLastOpenWebViewUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setLastOpenWebViewUrl$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setPlugin(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setPlugin$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setProjectStatus(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setProjectStatus$cp(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setRunEnvironment(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setRunEnvironment$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSDKType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sdkTypeParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setSdkType(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSdkType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setSdkType$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSimpleParameterMode()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lai/turbolink/sdk/TurboLink;->access$setSimpleParameterMode$cp(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setToggleClickAppEventListenerCallback(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setToggleClickAppEventListenerCallback$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setUserAgentGet(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setUserAgentGet_(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setUserAgentGet_(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setUserAgentGet_$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setUserAgentString_(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setUserAgentString_$cp(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setUserCompanionObj(Lai/turbolink/sdk/helpers/UserHelper;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/helpers/UserHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setUserCompanionObj$cp(Lai/turbolink/sdk/helpers/UserHelper;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setWebviewGoReloadUrl(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setWebviewGoReloadUrl$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setWebviewGoReloadUrlLastCustomEventTime(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lai/turbolink/sdk/TurboLink;->access$setWebviewGoReloadUrlLastCustomEventTime$cp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final settingRunEnvironment(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "runEnv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setRunEnvironment(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final startSessionInitialization(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getDisableAutoSessionInitialization()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLinkActivitySession;->isAutoInitialization(Z)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setDisableAutoSessionInitialization(Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final switchEnv()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink$Companion;->setLastNoLoginWebviewUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final withCampaignCreateCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignCreateCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appCampaignCreateCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withCampaignDestroyCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignDestroyCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appCampaignDestroyCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withCampaignPauseCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignPauseCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appCampaignPauseCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withCampaignResumeCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignResumeCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appCampaignResumeCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withClientRewardsListener(Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "clientRewardsListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_clientRewardsListener$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 3
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "turboLinkEventCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_turboLinkEventCallback$cp(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getActivityLifeCycleObserver()Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->setInstanceEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 25
    .line 26
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 31
    .line 32
    sget-object v2, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->SET_LAUNCH_CALLBACK:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 33
    .line 34
    invoke-virtual {v2}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setSetEventCallback(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V
    .locals 2
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignEventCallback(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appEventListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final withLoginActivity(Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appLoginActivityRef$cp(Lkotlin/reflect/KClass;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withLoginListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "loginListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appLoginListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignLoginCallback(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final withPointListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pointListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appPointsListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withRedirectListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;)V
    .locals 2
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "redirectListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignRedirectCallback(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appRedirectListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final withRegActivity(Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appRegActivityRef$cp(Lkotlin/reflect/KClass;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withRegListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "regListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appRegListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withShareListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shareListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$set_appShareListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignSocialClickCallback(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
