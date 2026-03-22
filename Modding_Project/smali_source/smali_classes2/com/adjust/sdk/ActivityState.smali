.class public Lcom/adjust/sdk/ActivityState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EVENT_DEDUPLICATION_IDS_MAX_SIZE:I = 0xa

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7d728a246d4bab64L


# instance fields
.field protected adid:Ljava/lang/String;

.field protected askingAttribution:Z

.field protected clickTime:J

.field protected clickTimeHuawei:J

.field protected clickTimeMeta:J

.field protected clickTimeSamsung:J

.field protected clickTimeServer:J

.field protected clickTimeServerXiaomi:J

.field protected clickTimeVivo:J

.field protected clickTimeXiaomi:J

.field protected enabled:Z

.field protected eventCount:I

.field protected eventDeduplicationIdsMaxSize:I

.field protected googlePlayInstant:Ljava/lang/Boolean;

.field protected installBegin:J

.field protected installBeginHuawei:J

.field protected installBeginSamsung:J

.field protected installBeginServer:J

.field protected installBeginServerXiaomi:J

.field protected installBeginVivo:J

.field protected installBeginXiaomi:J

.field protected installReferrer:Ljava/lang/String;

.field protected installReferrerHuawei:Ljava/lang/String;

.field protected installReferrerHuaweiAppGallery:Ljava/lang/String;

.field protected installReferrerMeta:Ljava/lang/String;

.field protected installReferrerSamsung:Ljava/lang/String;

.field protected installReferrerVivo:Ljava/lang/String;

.field protected installReferrerXiaomi:Ljava/lang/String;

.field protected installVersion:Ljava/lang/String;

.field protected installVersionVivo:Ljava/lang/String;

.field protected installVersionXiaomi:Ljava/lang/String;

.field protected isClickMeta:Ljava/lang/Boolean;

.field protected isGdprForgotten:Z

.field protected isThirdPartySharingDisabledForCoppa:Z

.field protected lastActivity:J

.field protected lastInterval:J

.field private transient logger:Lcom/adjust/sdk/ILogger;

.field protected orderIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pushToken:Ljava/lang/String;

.field protected sessionCount:I

.field protected sessionLength:J

.field protected subsessionCount:I

.field protected timeSpent:J

.field protected uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string/jumbo v2, "uuid"

    .line 5
    .line 6
    .line 7
    const-class v15, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2, v15}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/io/ObjectStreamField;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    const-string v3, "enabled"

    .line 18
    .line 19
    invoke-direct {v2, v3, v14}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/io/ObjectStreamField;

    .line 23
    .line 24
    move-object v2, v3

    .line 25
    const-string v4, "isGdprForgotten"

    .line 26
    .line 27
    invoke-direct {v3, v4, v14}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/io/ObjectStreamField;

    .line 31
    .line 32
    move-object v3, v4

    .line 33
    const-string v5, "askingAttribution"

    .line 34
    .line 35
    invoke-direct {v4, v5, v14}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 39
    .line 40
    move-object v4, v5

    .line 41
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-string v6, "eventCount"

    .line 44
    .line 45
    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Ljava/io/ObjectStreamField;

    .line 49
    .line 50
    move-object v5, v6

    .line 51
    const-string v8, "sessionCount"

    .line 52
    .line 53
    invoke-direct {v6, v8, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 57
    .line 58
    move-object v6, v8

    .line 59
    const-string v9, "subsessionCount"

    .line 60
    .line 61
    invoke-direct {v8, v9, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 65
    .line 66
    move-object v7, v8

    .line 67
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    const-string v9, "sessionLength"

    .line 70
    .line 71
    invoke-direct {v8, v9, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    new-instance v9, Ljava/io/ObjectStreamField;

    .line 75
    .line 76
    move-object v8, v9

    .line 77
    const-string/jumbo v10, "timeSpent"

    .line 78
    .line 79
    .line 80
    invoke-direct {v9, v10, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Ljava/io/ObjectStreamField;

    .line 84
    .line 85
    move-object v9, v10

    .line 86
    const-string v11, "lastActivity"

    .line 87
    .line 88
    invoke-direct {v10, v11, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    new-instance v11, Ljava/io/ObjectStreamField;

    .line 92
    .line 93
    move-object v10, v11

    .line 94
    const-string v12, "lastInterval"

    .line 95
    .line 96
    invoke-direct {v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    new-instance v12, Ljava/io/ObjectStreamField;

    .line 100
    .line 101
    move-object v11, v12

    .line 102
    move-object/from16 v16, v13

    .line 103
    .line 104
    const-string v13, "orderIds"

    .line 105
    .line 106
    move-object/from16 v17, v14

    .line 107
    .line 108
    const-class v14, Ljava/util/LinkedList;

    .line 109
    .line 110
    invoke-direct {v12, v13, v14}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    .line 112
    .line 113
    new-instance v13, Ljava/io/ObjectStreamField;

    .line 114
    .line 115
    move-object v12, v13

    .line 116
    const-string v14, "pushToken"

    .line 117
    .line 118
    invoke-direct {v13, v14, v15}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Ljava/io/ObjectStreamField;

    .line 122
    .line 123
    move-object/from16 v42, v0

    .line 124
    .line 125
    move-object/from16 v0, v16

    .line 126
    .line 127
    move-object v13, v14

    .line 128
    move-object/from16 v43, v1

    .line 129
    .line 130
    const-string v1, "adid"

    .line 131
    .line 132
    invoke-direct {v14, v1, v15}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 136
    .line 137
    move-object/from16 v44, v2

    .line 138
    .line 139
    move-object/from16 v2, v17

    .line 140
    .line 141
    move-object v14, v1

    .line 142
    move-object/from16 v16, v15

    .line 143
    .line 144
    const-string v15, "clickTime"

    .line 145
    .line 146
    invoke-direct {v1, v15, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 150
    .line 151
    move-object/from16 v45, v3

    .line 152
    .line 153
    move-object/from16 v3, v16

    .line 154
    .line 155
    move-object v15, v1

    .line 156
    move-object/from16 v46, v4

    .line 157
    .line 158
    const-string v4, "installBegin"

    .line 159
    .line 160
    invoke-direct {v1, v4, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 164
    .line 165
    move-object/from16 v16, v1

    .line 166
    .line 167
    const-string v4, "installReferrer"

    .line 168
    .line 169
    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 170
    .line 171
    .line 172
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 173
    .line 174
    move-object/from16 v17, v1

    .line 175
    .line 176
    const-string v4, "googlePlayInstant"

    .line 177
    .line 178
    move-object/from16 v47, v5

    .line 179
    .line 180
    const-class v5, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-direct {v1, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 186
    .line 187
    move-object/from16 v18, v1

    .line 188
    .line 189
    const-string v4, "clickTimeServer"

    .line 190
    .line 191
    invoke-direct {v1, v4, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 195
    .line 196
    move-object/from16 v19, v1

    .line 197
    .line 198
    const-string v4, "installBeginServer"

    .line 199
    .line 200
    invoke-direct {v1, v4, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 204
    .line 205
    move-object/from16 v20, v1

    .line 206
    .line 207
    const-string v4, "installVersion"

    .line 208
    .line 209
    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 213
    .line 214
    move-object/from16 v21, v1

    .line 215
    .line 216
    const-string v4, "clickTimeHuawei"

    .line 217
    .line 218
    invoke-direct {v1, v4, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 222
    .line 223
    move-object/from16 v22, v1

    .line 224
    .line 225
    const-string v4, "installBeginHuawei"

    .line 226
    .line 227
    invoke-direct {v1, v4, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 231
    .line 232
    move-object/from16 v23, v1

    .line 233
    .line 234
    const-string v4, "installReferrerHuawei"

    .line 235
    .line 236
    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 240
    .line 241
    move-object/from16 v24, v1

    .line 242
    .line 243
    const-string v4, "installReferrerHuaweiAppGallery"

    .line 244
    .line 245
    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 249
    .line 250
    move-object/from16 v25, v1

    .line 251
    .line 252
    const-string v4, "isThirdPartySharingDisabledForCoppa"

    .line 253
    .line 254
    invoke-direct {v1, v4, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 258
    .line 259
    move-object/from16 v26, v1

    .line 260
    .line 261
    const-string v2, "clickTimeXiaomi"

    .line 262
    .line 263
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 267
    .line 268
    move-object/from16 v27, v1

    .line 269
    .line 270
    const-string v2, "installBeginXiaomi"

    .line 271
    .line 272
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 276
    .line 277
    move-object/from16 v28, v1

    .line 278
    .line 279
    const-string v2, "installReferrerXiaomi"

    .line 280
    .line 281
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 285
    .line 286
    move-object/from16 v29, v1

    .line 287
    .line 288
    const-string v2, "clickTimeServerXiaomi"

    .line 289
    .line 290
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 294
    .line 295
    move-object/from16 v30, v1

    .line 296
    .line 297
    const-string v2, "installBeginServerXiaomi"

    .line 298
    .line 299
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    .line 301
    .line 302
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 303
    .line 304
    move-object/from16 v31, v1

    .line 305
    .line 306
    const-string v2, "installVersionXiaomi"

    .line 307
    .line 308
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 312
    .line 313
    move-object/from16 v32, v1

    .line 314
    .line 315
    const-string v2, "clickTimeSamsung"

    .line 316
    .line 317
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 318
    .line 319
    .line 320
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 321
    .line 322
    move-object/from16 v33, v1

    .line 323
    .line 324
    const-string v2, "installBeginSamsung"

    .line 325
    .line 326
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 330
    .line 331
    move-object/from16 v34, v1

    .line 332
    .line 333
    const-string v2, "installReferrerSamsung"

    .line 334
    .line 335
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 339
    .line 340
    move-object/from16 v35, v1

    .line 341
    .line 342
    const-string v2, "clickTimeVivo"

    .line 343
    .line 344
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 345
    .line 346
    .line 347
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 348
    .line 349
    move-object/from16 v36, v1

    .line 350
    .line 351
    const-string v2, "installBeginVivo"

    .line 352
    .line 353
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 354
    .line 355
    .line 356
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 357
    .line 358
    move-object/from16 v37, v1

    .line 359
    .line 360
    const-string v2, "installReferrerVivo"

    .line 361
    .line 362
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 363
    .line 364
    .line 365
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 366
    .line 367
    move-object/from16 v38, v1

    .line 368
    .line 369
    const-string v2, "installVersionVivo"

    .line 370
    .line 371
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 375
    .line 376
    move-object/from16 v39, v1

    .line 377
    .line 378
    const-string v2, "installReferrerMeta"

    .line 379
    .line 380
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 381
    .line 382
    .line 383
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 384
    .line 385
    move-object/from16 v40, v1

    .line 386
    .line 387
    const-string v2, "clickTimeMeta"

    .line 388
    .line 389
    invoke-direct {v1, v2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Ljava/io/ObjectStreamField;

    .line 393
    .line 394
    move-object/from16 v41, v0

    .line 395
    .line 396
    const-string v1, "isClickMeta"

    .line 397
    .line 398
    invoke-direct {v0, v1, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 399
    .line 400
    .line 401
    move-object/from16 v0, v42

    .line 402
    .line 403
    move-object/from16 v1, v43

    .line 404
    .line 405
    move-object/from16 v2, v44

    .line 406
    .line 407
    move-object/from16 v3, v45

    .line 408
    .line 409
    move-object/from16 v4, v46

    .line 410
    .line 411
    move-object/from16 v5, v47

    .line 412
    .line 413
    filled-new-array/range {v0 .. v41}, [Ljava/io/ObjectStreamField;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    sput-object v0, Lcom/adjust/sdk/ActivityState;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 418
    .line 419
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->logger:Lcom/adjust/sdk/ILogger;

    .line 9
    .line 10
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 25
    .line 26
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 27
    .line 28
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 32
    .line 33
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 49
    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 53
    .line 54
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 55
    .line 56
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 59
    .line 60
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 61
    .line 62
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 63
    .line 64
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 65
    .line 66
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 67
    .line 68
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 69
    .line 70
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 73
    .line 74
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 75
    .line 76
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 77
    .line 78
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 79
    .line 80
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 81
    .line 82
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 83
    .line 84
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 85
    .line 86
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 87
    .line 88
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 89
    .line 90
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 91
    .line 92
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 93
    .line 94
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 95
    .line 96
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 101
    .line 102
    iput-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 103
    .line 104
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 105
    .line 106
    const/16 v0, 0xa

    .line 107
    .line 108
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdsMaxSize:I

    .line 109
    .line 110
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "eventCount"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 13
    .line 14
    const-string v0, "sessionCount"

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 21
    .line 22
    const-string v0, "subsessionCount"

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-static {p1, v0, v2}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 30
    .line 31
    const-string v0, "sessionLength"

    .line 32
    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iput-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 40
    .line 41
    const-string/jumbo v0, "timeSpent"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iput-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 49
    .line 50
    const-string v0, "lastActivity"

    .line 51
    .line 52
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iput-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 57
    .line 58
    const-string v0, "lastInterval"

    .line 59
    .line 60
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    iput-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 65
    .line 66
    const-string/jumbo v0, "uuid"

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "enabled"

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-static {p1, v0, v5}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 84
    .line 85
    const-string v0, "isGdprForgotten"

    .line 86
    .line 87
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 92
    .line 93
    const-string v0, "isThirdPartySharingDisabledForCoppa"

    .line 94
    .line 95
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 100
    .line 101
    const-string v0, "askingAttribution"

    .line 102
    .line 103
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 108
    .line 109
    const-string v0, "orderIds"

    .line 110
    .line 111
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/LinkedList;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 118
    .line 119
    const-string v0, "pushToken"

    .line 120
    .line 121
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 126
    .line 127
    const-string v0, "adid"

    .line 128
    .line 129
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 134
    .line 135
    const-string v0, "clickTime"

    .line 136
    .line 137
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 142
    .line 143
    const-string v0, "installBegin"

    .line 144
    .line 145
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 150
    .line 151
    const-string v0, "installReferrer"

    .line 152
    .line 153
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 158
    .line 159
    const-string v0, "googlePlayInstant"

    .line 160
    .line 161
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/Boolean;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 168
    .line 169
    const-string v0, "clickTimeServer"

    .line 170
    .line 171
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 176
    .line 177
    const-string v0, "installBeginServer"

    .line 178
    .line 179
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 184
    .line 185
    const-string v0, "installVersion"

    .line 186
    .line 187
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 192
    .line 193
    const-string v0, "clickTimeHuawei"

    .line 194
    .line 195
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 200
    .line 201
    const-string v0, "installBeginHuawei"

    .line 202
    .line 203
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 208
    .line 209
    const-string v0, "installReferrerHuawei"

    .line 210
    .line 211
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 216
    .line 217
    const-string v0, "installReferrerHuaweiAppGallery"

    .line 218
    .line 219
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 224
    .line 225
    const-string v0, "clickTimeXiaomi"

    .line 226
    .line 227
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v0

    .line 231
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 232
    .line 233
    const-string v0, "installBeginXiaomi"

    .line 234
    .line 235
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 236
    .line 237
    .line 238
    move-result-wide v0

    .line 239
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 240
    .line 241
    const-string v0, "installReferrerXiaomi"

    .line 242
    .line 243
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 248
    .line 249
    const-string v0, "clickTimeServerXiaomi"

    .line 250
    .line 251
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 256
    .line 257
    const-string v0, "installBeginServerXiaomi"

    .line 258
    .line 259
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 260
    .line 261
    .line 262
    move-result-wide v0

    .line 263
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 264
    .line 265
    const-string v0, "installVersionXiaomi"

    .line 266
    .line 267
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 272
    .line 273
    const-string v0, "clickTimeSamsung"

    .line 274
    .line 275
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 276
    .line 277
    .line 278
    move-result-wide v0

    .line 279
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 280
    .line 281
    const-string v0, "installBeginSamsung"

    .line 282
    .line 283
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 284
    .line 285
    .line 286
    move-result-wide v0

    .line 287
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 288
    .line 289
    const-string v0, "installReferrerSamsung"

    .line 290
    .line 291
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 296
    .line 297
    const-string v0, "clickTimeVivo"

    .line 298
    .line 299
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 300
    .line 301
    .line 302
    move-result-wide v0

    .line 303
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 304
    .line 305
    const-string v0, "installBeginVivo"

    .line 306
    .line 307
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 308
    .line 309
    .line 310
    move-result-wide v0

    .line 311
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 312
    .line 313
    const-string v0, "installReferrerVivo"

    .line 314
    .line 315
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 320
    .line 321
    const-string v0, "installVersionVivo"

    .line 322
    .line 323
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 328
    .line 329
    const-string v0, "installReferrerMeta"

    .line 330
    .line 331
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 336
    .line 337
    const-string v0, "clickTimeMeta"

    .line 338
    .line 339
    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    .line 340
    .line 341
    .line 342
    move-result-wide v0

    .line 343
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 344
    .line 345
    const-string v0, "isClickMeta"

    .line 346
    .line 347
    invoke-static {p1, v0, v4}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Ljava/lang/Boolean;

    .line 352
    .line 353
    iput-object p1, p0, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 354
    .line 355
    iget-object p1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 356
    .line 357
    if-nez p1, :cond_0

    .line 358
    .line 359
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iput-object p1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 364
    .line 365
    :cond_0
    const/16 p1, 0xa

    .line 366
    .line 367
    iput p1, p0, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdsMaxSize:I

    .line 368
    .line 369
    return-void
.end method

.method private static stamp(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0xb

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/16 p1, 0xc

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0xd

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%02d:%02d:%02d"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addDeduplicationId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdsMaxSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdsMaxSize:I

    .line 25
    .line 26
    if-lt v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Lcom/adjust/sdk/ActivityState;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    return v1

    .line 71
    :cond_5
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_6

    .line 88
    .line 89
    return v1

    .line 90
    :cond_6
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_7

    .line 107
    .line 108
    return v1

    .line 109
    :cond_7
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget v3, p1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_8

    .line 126
    .line 127
    return v1

    .line 128
    :cond_8
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget v3, p1, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 135
    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_9

    .line 145
    .line 146
    return v1

    .line 147
    :cond_9
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget v3, p1, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 154
    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_a

    .line 164
    .line 165
    return v1

    .line 166
    :cond_a
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 167
    .line 168
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 173
    .line 174
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_b

    .line 183
    .line 184
    return v1

    .line 185
    :cond_b
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 186
    .line 187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 192
    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_c

    .line 202
    .line 203
    return v1

    .line 204
    :cond_c
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 205
    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 211
    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_d

    .line 221
    .line 222
    return v1

    .line 223
    :cond_d
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 224
    .line 225
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 226
    .line 227
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_e

    .line 232
    .line 233
    return v1

    .line 234
    :cond_e
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_f

    .line 243
    .line 244
    return v1

    .line 245
    :cond_f
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_10

    .line 254
    .line 255
    return v1

    .line 256
    :cond_10
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 257
    .line 258
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 263
    .line 264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_11

    .line 273
    .line 274
    return v1

    .line 275
    :cond_11
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 276
    .line 277
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 282
    .line 283
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_12

    .line 292
    .line 293
    return v1

    .line 294
    :cond_12
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_13

    .line 303
    .line 304
    return v1

    .line 305
    :cond_13
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 306
    .line 307
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-nez v2, :cond_14

    .line 314
    .line 315
    return v1

    .line 316
    :cond_14
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 317
    .line 318
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 323
    .line 324
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_15

    .line 333
    .line 334
    return v1

    .line 335
    :cond_15
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 336
    .line 337
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 342
    .line 343
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-nez v2, :cond_16

    .line 352
    .line 353
    return v1

    .line 354
    :cond_16
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-nez v2, :cond_17

    .line 363
    .line 364
    return v1

    .line 365
    :cond_17
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 366
    .line 367
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 372
    .line 373
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-nez v2, :cond_18

    .line 382
    .line 383
    return v1

    .line 384
    :cond_18
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 385
    .line 386
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 391
    .line 392
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-nez v2, :cond_19

    .line 401
    .line 402
    return v1

    .line 403
    :cond_19
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 404
    .line 405
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_1a

    .line 412
    .line 413
    return v1

    .line 414
    :cond_1a
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_1b

    .line 423
    .line 424
    return v1

    .line 425
    :cond_1b
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 426
    .line 427
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 432
    .line 433
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_1c

    .line 442
    .line 443
    return v1

    .line 444
    :cond_1c
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 445
    .line 446
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 451
    .line 452
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-nez v2, :cond_1d

    .line 461
    .line 462
    return v1

    .line 463
    :cond_1d
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 464
    .line 465
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 466
    .line 467
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-nez v2, :cond_1e

    .line 472
    .line 473
    return v1

    .line 474
    :cond_1e
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 475
    .line 476
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 481
    .line 482
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-nez v2, :cond_1f

    .line 491
    .line 492
    return v1

    .line 493
    :cond_1f
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 494
    .line 495
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 500
    .line 501
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-nez v2, :cond_20

    .line 510
    .line 511
    return v1

    .line 512
    :cond_20
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 513
    .line 514
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 515
    .line 516
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-nez v2, :cond_21

    .line 521
    .line 522
    return v1

    .line 523
    :cond_21
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 524
    .line 525
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 530
    .line 531
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-nez v2, :cond_22

    .line 540
    .line 541
    return v1

    .line 542
    :cond_22
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 543
    .line 544
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 549
    .line 550
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-nez v2, :cond_23

    .line 559
    .line 560
    return v1

    .line 561
    :cond_23
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 562
    .line 563
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 564
    .line 565
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-nez v2, :cond_24

    .line 570
    .line 571
    return v1

    .line 572
    :cond_24
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 573
    .line 574
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 579
    .line 580
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    if-nez v2, :cond_25

    .line 589
    .line 590
    return v1

    .line 591
    :cond_25
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 592
    .line 593
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 598
    .line 599
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-nez v2, :cond_26

    .line 608
    .line 609
    return v1

    .line 610
    :cond_26
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 611
    .line 612
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 613
    .line 614
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    if-nez v2, :cond_27

    .line 619
    .line 620
    return v1

    .line 621
    :cond_27
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 622
    .line 623
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-nez v2, :cond_28

    .line 630
    .line 631
    return v1

    .line 632
    :cond_28
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 633
    .line 634
    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 635
    .line 636
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    if-nez v2, :cond_29

    .line 641
    .line 642
    return v1

    .line 643
    :cond_29
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 644
    .line 645
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    iget-wide v3, p1, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 650
    .line 651
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-nez v2, :cond_2a

    .line 660
    .line 661
    return v1

    .line 662
    :cond_2a
    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 663
    .line 664
    iget-object p1, p1, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 665
    .line 666
    invoke-static {v2, p1}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-nez p1, :cond_2b

    .line 671
    .line 672
    return v1

    .line 673
    :cond_2b
    return v0
.end method

.method public eventDeduplicationIdExists(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    mul-int/lit8 v0, v0, 0x25

    .line 50
    .line 51
    iget v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x25

    .line 55
    .line 56
    iget v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 57
    .line 58
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x25

    .line 60
    .line 61
    iget v1, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 62
    .line 63
    add-int/2addr v0, v1

    .line 64
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 75
    .line 76
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 85
    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 123
    .line 124
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 145
    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 155
    .line 156
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 171
    .line 172
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 181
    .line 182
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 203
    .line 204
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 213
    .line 214
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 229
    .line 230
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 239
    .line 240
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 255
    .line 256
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 265
    .line 266
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 281
    .line 282
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 291
    .line 292
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    iget-wide v1, p0, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 319
    .line 320
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;I)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 329
    .line 330
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;I)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    return v0
.end method

.method public resetSessionAttributes(J)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 15
    .line 16
    return-void
.end method

.method public setEventDeduplicationIdsMaxSize(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdsMaxSize:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 20
    .line 21
    long-to-double v4, v4

    .line 22
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double/2addr v4, v6

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-wide v8, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 33
    .line 34
    long-to-double v8, v8

    .line 35
    div-double/2addr v8, v6

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-wide v6, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 41
    .line 42
    invoke-static {v6, v7}, Lcom/adjust/sdk/ActivityState;->stamp(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-object v7, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 47
    .line 48
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
