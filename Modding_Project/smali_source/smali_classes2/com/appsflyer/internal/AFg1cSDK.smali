.class public final enum Lcom/appsflyer/internal/AFg1cSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFg1cSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final enum AFAdRevenueData:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFg1cSDK;

.field private static final synthetic AFPurchaseDetails:[Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afDebugLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afLogForce:Lcom/appsflyer/internal/AFg1cSDK;

.field private static enum afRDLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afVerboseLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum afWarnLog:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum component1:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum component2:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum component3:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum component4:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum copy:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum copydefault:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum equals:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum force:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum getMonetizationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum hashCode:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum i:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum toString:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum unregisterClient:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum v:Lcom/appsflyer/internal/AFg1cSDK;

.field public static final enum w:Lcom/appsflyer/internal/AFg1cSDK;


# instance fields
.field final getCurrencyIso4217Code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v1, Lcom/appsflyer/internal/AFg1cSDK;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "SDK Lifecycle"

    .line 6
    .line 7
    const-string v4, "SDK_LIFECYCLE"

    .line 8
    .line 9
    invoke-direct {v1, v4, v2, v3}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    .line 13
    .line 14
    new-instance v2, Lcom/appsflyer/internal/AFg1cSDK;

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const-string v4, "Privacy Sandbox"

    .line 19
    .line 20
    const-string v5, "PRIVACY_SANDBOX"

    .line 21
    .line 22
    invoke-direct {v2, v5, v3, v4}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/appsflyer/internal/AFg1cSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1cSDK;

    .line 26
    .line 27
    new-instance v3, Lcom/appsflyer/internal/AFg1cSDK;

    .line 28
    .line 29
    move-object v2, v3

    .line 30
    const/4 v4, 0x2

    .line 31
    const-string v5, "Play Integrity Api"

    .line 32
    .line 33
    const-string v6, "PLAY_INTEGRITY_API"

    .line 34
    .line 35
    invoke-direct {v3, v6, v4, v5}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v3, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 39
    .line 40
    new-instance v4, Lcom/appsflyer/internal/AFg1cSDK;

    .line 41
    .line 42
    move-object v3, v4

    .line 43
    const/4 v5, 0x3

    .line 44
    const-string v6, "Other"

    .line 45
    .line 46
    const-string v7, "OTHER"

    .line 47
    .line 48
    invoke-direct {v4, v7, v5, v6}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    .line 52
    .line 53
    new-instance v5, Lcom/appsflyer/internal/AFg1cSDK;

    .line 54
    .line 55
    move-object v4, v5

    .line 56
    const/4 v6, 0x4

    .line 57
    const-string v7, "HTTP Client"

    .line 58
    .line 59
    const-string v8, "HTTP_CLIENT"

    .line 60
    .line 61
    invoke-direct {v5, v8, v6, v7}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sput-object v5, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    .line 65
    .line 66
    new-instance v6, Lcom/appsflyer/internal/AFg1cSDK;

    .line 67
    .line 68
    move-object v5, v6

    .line 69
    const/4 v7, 0x5

    .line 70
    const-string v8, "Queue"

    .line 71
    .line 72
    const-string v9, "QUEUE"

    .line 73
    .line 74
    invoke-direct {v6, v9, v7, v8}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v6, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 78
    .line 79
    new-instance v7, Lcom/appsflyer/internal/AFg1cSDK;

    .line 80
    .line 81
    move-object v6, v7

    .line 82
    const/4 v8, 0x6

    .line 83
    const-string v9, "Cache"

    .line 84
    .line 85
    const-string v10, "CACHE"

    .line 86
    .line 87
    invoke-direct {v7, v10, v8, v9}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v7, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 91
    .line 92
    new-instance v8, Lcom/appsflyer/internal/AFg1cSDK;

    .line 93
    .line 94
    move-object v7, v8

    .line 95
    const/4 v9, 0x7

    .line 96
    const-string v10, "Preferences"

    .line 97
    .line 98
    const-string v11, "PREFERENCES"

    .line 99
    .line 100
    invoke-direct {v8, v11, v9, v10}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v8, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    .line 104
    .line 105
    new-instance v9, Lcom/appsflyer/internal/AFg1cSDK;

    .line 106
    .line 107
    move-object v8, v9

    .line 108
    const/16 v10, 0x8

    .line 109
    .line 110
    const-string v11, "CFG"

    .line 111
    .line 112
    const-string v12, "REMOTE_CONTROL"

    .line 113
    .line 114
    invoke-direct {v9, v12, v10, v11}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 118
    .line 119
    new-instance v10, Lcom/appsflyer/internal/AFg1cSDK;

    .line 120
    .line 121
    move-object v9, v10

    .line 122
    const-string v11, "DDL"

    .line 123
    .line 124
    const/16 v12, 0x9

    .line 125
    .line 126
    invoke-direct {v10, v11, v12, v11}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v10, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 130
    .line 131
    new-instance v11, Lcom/appsflyer/internal/AFg1cSDK;

    .line 132
    .line 133
    move-object v10, v11

    .line 134
    const/16 v12, 0xa

    .line 135
    .line 136
    const-string v13, "Referrer"

    .line 137
    .line 138
    const-string v14, "REFERRER"

    .line 139
    .line 140
    invoke-direct {v11, v14, v12, v13}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput-object v11, Lcom/appsflyer/internal/AFg1cSDK;->copydefault:Lcom/appsflyer/internal/AFg1cSDK;

    .line 144
    .line 145
    new-instance v12, Lcom/appsflyer/internal/AFg1cSDK;

    .line 146
    .line 147
    move-object v11, v12

    .line 148
    const/16 v13, 0xb

    .line 149
    .line 150
    const-string v14, "Meta Referrer"

    .line 151
    .line 152
    const-string v15, "META_REFERRER"

    .line 153
    .line 154
    invoke-direct {v12, v15, v13, v14}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sput-object v12, Lcom/appsflyer/internal/AFg1cSDK;->equals:Lcom/appsflyer/internal/AFg1cSDK;

    .line 158
    .line 159
    new-instance v13, Lcom/appsflyer/internal/AFg1cSDK;

    .line 160
    .line 161
    move-object v12, v13

    .line 162
    const/16 v14, 0xc

    .line 163
    .line 164
    const-string v15, "Samsung Preload Referrer"

    .line 165
    .line 166
    move-object/from16 v34, v0

    .line 167
    .line 168
    const-string v0, "SAMSUNG_PRELOAD_REFERRER"

    .line 169
    .line 170
    invoke-direct {v13, v0, v14, v15}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v13, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 174
    .line 175
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 176
    .line 177
    move-object v13, v0

    .line 178
    const/16 v14, 0xd

    .line 179
    .line 180
    const-string v15, "Advertising Id"

    .line 181
    .line 182
    move-object/from16 v35, v1

    .line 183
    .line 184
    const-string v1, "ADVERTISING_ID"

    .line 185
    .line 186
    invoke-direct {v0, v1, v14, v15}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 190
    .line 191
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 192
    .line 193
    move-object v14, v0

    .line 194
    const/16 v1, 0xe

    .line 195
    .line 196
    const-string v15, "Cross Promotion"

    .line 197
    .line 198
    move-object/from16 v36, v2

    .line 199
    .line 200
    const-string v2, "CROSS_PROMOTION"

    .line 201
    .line 202
    invoke-direct {v0, v2, v1, v15}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1cSDK;

    .line 206
    .line 207
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 208
    .line 209
    move-object v15, v0

    .line 210
    const/16 v1, 0xf

    .line 211
    .line 212
    const-string v2, "Exception Manager"

    .line 213
    .line 214
    move-object/from16 v37, v3

    .line 215
    .line 216
    const-string v3, "EXCEPTION_MANAGER"

    .line 217
    .line 218
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 222
    .line 223
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 224
    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    const/16 v1, 0x10

    .line 228
    .line 229
    const-string v2, "Attribution"

    .line 230
    .line 231
    const-string v3, "ATTRIBUTION"

    .line 232
    .line 233
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1cSDK;

    .line 237
    .line 238
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 239
    .line 240
    move-object/from16 v17, v0

    .line 241
    .line 242
    const-string v1, "RD"

    .line 243
    .line 244
    const/16 v2, 0x11

    .line 245
    .line 246
    invoke-direct {v0, v1, v2, v1}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->registerClient:Lcom/appsflyer/internal/AFg1cSDK;

    .line 250
    .line 251
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 252
    .line 253
    move-object/from16 v18, v0

    .line 254
    .line 255
    const/16 v1, 0x12

    .line 256
    .line 257
    const-string v2, "Engagement"

    .line 258
    .line 259
    const-string v3, "ENGAGEMENT"

    .line 260
    .line 261
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFLogger:Lcom/appsflyer/internal/AFg1cSDK;

    .line 265
    .line 266
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 267
    .line 268
    move-object/from16 v19, v0

    .line 269
    .line 270
    const/16 v1, 0x13

    .line 271
    .line 272
    const-string v2, "Anti Fraud"

    .line 273
    .line 274
    const-string v3, "ANTI_FRAUD"

    .line 275
    .line 276
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->i:Lcom/appsflyer/internal/AFg1cSDK;

    .line 280
    .line 281
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 282
    .line 283
    move-object/from16 v20, v0

    .line 284
    .line 285
    const/16 v1, 0x14

    .line 286
    .line 287
    const-string v2, "Public API"

    .line 288
    .line 289
    const-string v3, "PUBLIC_API"

    .line 290
    .line 291
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->e:Lcom/appsflyer/internal/AFg1cSDK;

    .line 295
    .line 296
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 297
    .line 298
    move-object/from16 v21, v0

    .line 299
    .line 300
    const/16 v1, 0x15

    .line 301
    .line 302
    const-string v2, "Ad Revenue"

    .line 303
    .line 304
    const-string v3, "AD_REVENUE"

    .line 305
    .line 306
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->d:Lcom/appsflyer/internal/AFg1cSDK;

    .line 310
    .line 311
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 312
    .line 313
    const/16 v1, 0x16

    .line 314
    .line 315
    const-string v2, "Setter"

    .line 316
    .line 317
    const-string v3, "SDK_SETTERS"

    .line 318
    .line 319
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afRDLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 323
    .line 324
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 325
    .line 326
    move-object/from16 v23, v0

    .line 327
    .line 328
    const/16 v1, 0x17

    .line 329
    .line 330
    const-string v2, "Predict"

    .line 331
    .line 332
    const-string v3, "PREDICT"

    .line 333
    .line 334
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1cSDK;

    .line 338
    .line 339
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 340
    .line 341
    move-object/from16 v24, v0

    .line 342
    .line 343
    const/16 v1, 0x18

    .line 344
    .line 345
    const-string v2, "Device Data"

    .line 346
    .line 347
    const-string v3, "DEVICE_DATA"

    .line 348
    .line 349
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    .line 353
    .line 354
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 355
    .line 356
    move-object/from16 v25, v0

    .line 357
    .line 358
    const/16 v1, 0x19

    .line 359
    .line 360
    const-string v2, "Security"

    .line 361
    .line 362
    const-string v3, "SECURITY"

    .line 363
    .line 364
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 368
    .line 369
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 370
    .line 371
    move-object/from16 v26, v0

    .line 372
    .line 373
    const/16 v1, 0x1a

    .line 374
    .line 375
    const-string v2, "General"

    .line 376
    .line 377
    const-string v3, "GENERAL"

    .line 378
    .line 379
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    .line 383
    .line 384
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 385
    .line 386
    move-object/from16 v27, v0

    .line 387
    .line 388
    const/16 v1, 0x1b

    .line 389
    .line 390
    const-string v2, "Preinstall"

    .line 391
    .line 392
    const-string v3, "PREINSTALL"

    .line 393
    .line 394
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 398
    .line 399
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 400
    .line 401
    move-object/from16 v28, v0

    .line 402
    .line 403
    const/16 v1, 0x1c

    .line 404
    .line 405
    const-string v2, "Uninstall"

    .line 406
    .line 407
    const-string v3, "UNINSTALL"

    .line 408
    .line 409
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 413
    .line 414
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 415
    .line 416
    move-object/from16 v29, v0

    .line 417
    .line 418
    const/16 v1, 0x1d

    .line 419
    .line 420
    const-string v2, "Purchase Validation"

    .line 421
    .line 422
    const-string v3, "PURCHASE_VALIDATION"

    .line 423
    .line 424
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    .line 428
    .line 429
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 430
    .line 431
    move-object/from16 v30, v0

    .line 432
    .line 433
    const-string v1, "DMA"

    .line 434
    .line 435
    const/16 v2, 0x1e

    .line 436
    .line 437
    invoke-direct {v0, v1, v2, v1}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 441
    .line 442
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 443
    .line 444
    move-object/from16 v31, v0

    .line 445
    .line 446
    const-string v1, "PROXY"

    .line 447
    .line 448
    const/16 v2, 0x1f

    .line 449
    .line 450
    invoke-direct {v0, v1, v2, v1}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afLogForce:Lcom/appsflyer/internal/AFg1cSDK;

    .line 454
    .line 455
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 456
    .line 457
    move-object/from16 v32, v0

    .line 458
    .line 459
    const/16 v1, 0x20

    .line 460
    .line 461
    const-string v2, "AF Executor"

    .line 462
    .line 463
    const-string v3, "AF_EXECUTOR"

    .line 464
    .line 465
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 469
    .line 470
    new-instance v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 471
    .line 472
    move-object/from16 v33, v0

    .line 473
    .line 474
    const/16 v1, 0x21

    .line 475
    .line 476
    const-string v2, "App set ID"

    .line 477
    .line 478
    const-string v3, "APP_SET_ID"

    .line 479
    .line 480
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1cSDK;

    .line 484
    .line 485
    sget-object v22, Lcom/appsflyer/internal/AFg1cSDK;->afRDLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 486
    .line 487
    move-object/from16 v0, v34

    .line 488
    .line 489
    move-object/from16 v1, v35

    .line 490
    .line 491
    move-object/from16 v2, v36

    .line 492
    .line 493
    move-object/from16 v3, v37

    .line 494
    .line 495
    filled-new-array/range {v0 .. v33}, [Lcom/appsflyer/internal/AFg1cSDK;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sput-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFPurchaseDetails:[Lcom/appsflyer/internal/AFg1cSDK;

    .line 500
    .line 501
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/appsflyer/internal/AFg1cSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFg1cSDK;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFg1cSDK;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFPurchaseDetails:[Lcom/appsflyer/internal/AFg1cSDK;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    return-object v0
.end method
