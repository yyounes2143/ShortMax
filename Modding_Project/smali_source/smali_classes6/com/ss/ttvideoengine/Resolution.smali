.class public final enum Lcom/ss/ttvideoengine/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/ttvideoengine/Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ttvideoengine/Resolution;

.field public static final enum Auto:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum EightK:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum FourK:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum FourK_120F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum FourK_50F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum FourK_60F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum H_High:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum High:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum High_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum L_Standard:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final RESOLUTION_AUDIO:I = 0x1

.field public static final RESOLUTION_VIDEO:I

.field public static final enum Standard:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum SuperHigh:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum TwoK:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

.field public static final enum Undefine:Lcom/ss/ttvideoengine/Resolution;


# instance fields
.field private final audioquality:Ljava/lang/String;

.field private final resolution:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v1, Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "Undefine"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v15, ""

    .line 8
    .line 9
    invoke-direct {v1, v2, v3, v15, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 13
    .line 14
    new-instance v2, Lcom/ss/ttvideoengine/Resolution;

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    const-string v3, "360p"

    .line 18
    .line 19
    const-string v4, "medium"

    .line 20
    .line 21
    const-string v5, "Standard"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 28
    .line 29
    new-instance v3, Lcom/ss/ttvideoengine/Resolution;

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    const-string v4, "480p"

    .line 33
    .line 34
    const-string v5, "higher"

    .line 35
    .line 36
    const-string v6, "High"

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v3, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 43
    .line 44
    new-instance v4, Lcom/ss/ttvideoengine/Resolution;

    .line 45
    .line 46
    move-object v3, v4

    .line 47
    const-string v5, "720p"

    .line 48
    .line 49
    const-string v6, "highest"

    .line 50
    .line 51
    const-string v7, "SuperHigh"

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 58
    .line 59
    new-instance v5, Lcom/ss/ttvideoengine/Resolution;

    .line 60
    .line 61
    move-object v4, v5

    .line 62
    const-string v6, "1080p"

    .line 63
    .line 64
    const-string v7, "original"

    .line 65
    .line 66
    const-string v8, "ExtremelyHigh"

    .line 67
    .line 68
    const/4 v9, 0x4

    .line 69
    invoke-direct {v5, v8, v9, v6, v7}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v5, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 73
    .line 74
    new-instance v6, Lcom/ss/ttvideoengine/Resolution;

    .line 75
    .line 76
    move-object v5, v6

    .line 77
    const-string v7, "4k"

    .line 78
    .line 79
    const-string v8, "lossless"

    .line 80
    .line 81
    const-string v9, "FourK"

    .line 82
    .line 83
    const/4 v10, 0x5

    .line 84
    invoke-direct {v6, v9, v10, v7, v8}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    .line 88
    .line 89
    new-instance v7, Lcom/ss/ttvideoengine/Resolution;

    .line 90
    .line 91
    move-object v6, v7

    .line 92
    const/4 v8, 0x6

    .line 93
    const-string v9, "hdr"

    .line 94
    .line 95
    const-string v10, "HDR"

    .line 96
    .line 97
    invoke-direct {v7, v10, v8, v9, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sput-object v7, Lcom/ss/ttvideoengine/Resolution;->HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 101
    .line 102
    new-instance v8, Lcom/ss/ttvideoengine/Resolution;

    .line 103
    .line 104
    move-object v7, v8

    .line 105
    const/4 v9, 0x7

    .line 106
    const-string v10, "auto"

    .line 107
    .line 108
    const-string v11, "Auto"

    .line 109
    .line 110
    invoke-direct {v8, v11, v9, v10, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v8, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    .line 114
    .line 115
    new-instance v9, Lcom/ss/ttvideoengine/Resolution;

    .line 116
    .line 117
    move-object v8, v9

    .line 118
    const/16 v10, 0x8

    .line 119
    .line 120
    const-string v11, "240p"

    .line 121
    .line 122
    const-string v12, "L_Standard"

    .line 123
    .line 124
    invoke-direct {v9, v12, v10, v11, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sput-object v9, Lcom/ss/ttvideoengine/Resolution;->L_Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 128
    .line 129
    new-instance v10, Lcom/ss/ttvideoengine/Resolution;

    .line 130
    .line 131
    move-object v9, v10

    .line 132
    const/16 v11, 0x9

    .line 133
    .line 134
    const-string v12, "540p"

    .line 135
    .line 136
    const-string v13, "H_High"

    .line 137
    .line 138
    invoke-direct {v10, v13, v11, v12, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v10, Lcom/ss/ttvideoengine/Resolution;->H_High:Lcom/ss/ttvideoengine/Resolution;

    .line 142
    .line 143
    new-instance v11, Lcom/ss/ttvideoengine/Resolution;

    .line 144
    .line 145
    move-object v10, v11

    .line 146
    const/16 v12, 0xa

    .line 147
    .line 148
    const-string v13, "2k"

    .line 149
    .line 150
    const-string v14, "TwoK"

    .line 151
    .line 152
    invoke-direct {v11, v14, v12, v13, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sput-object v11, Lcom/ss/ttvideoengine/Resolution;->TwoK:Lcom/ss/ttvideoengine/Resolution;

    .line 156
    .line 157
    new-instance v12, Lcom/ss/ttvideoengine/Resolution;

    .line 158
    .line 159
    move-object v11, v12

    .line 160
    const/16 v13, 0xb

    .line 161
    .line 162
    const-string v14, "1080p 50fps"

    .line 163
    .line 164
    move-object/from16 v30, v0

    .line 165
    .line 166
    const-string v0, "ExtremelyHigh_50F"

    .line 167
    .line 168
    invoke-direct {v12, v0, v13, v14, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v12, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 172
    .line 173
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 174
    .line 175
    move-object v12, v0

    .line 176
    const/16 v13, 0xc

    .line 177
    .line 178
    const-string v14, "2k 50fps"

    .line 179
    .line 180
    move-object/from16 v31, v1

    .line 181
    .line 182
    const-string v1, "TwoK_50F"

    .line 183
    .line 184
    invoke-direct {v0, v1, v13, v14, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 188
    .line 189
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 190
    .line 191
    move-object v13, v0

    .line 192
    const/16 v1, 0xd

    .line 193
    .line 194
    const-string v14, "4k 50fps"

    .line 195
    .line 196
    move-object/from16 v32, v2

    .line 197
    .line 198
    const-string v2, "FourK_50F"

    .line 199
    .line 200
    invoke-direct {v0, v2, v1, v14, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->FourK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 204
    .line 205
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 206
    .line 207
    move-object v14, v0

    .line 208
    const/16 v1, 0xe

    .line 209
    .line 210
    const-string v2, "1080p 60fps"

    .line 211
    .line 212
    move-object/from16 v33, v3

    .line 213
    .line 214
    const-string v3, "ExtremelyHigh_60F"

    .line 215
    .line 216
    invoke-direct {v0, v3, v1, v2, v15}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 220
    .line 221
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 222
    .line 223
    move-object v1, v15

    .line 224
    move-object v15, v0

    .line 225
    const/16 v2, 0xf

    .line 226
    .line 227
    const-string v3, "2k 60fps"

    .line 228
    .line 229
    move-object/from16 v34, v4

    .line 230
    .line 231
    const-string v4, "TwoK_60F"

    .line 232
    .line 233
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 237
    .line 238
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 239
    .line 240
    move-object/from16 v16, v0

    .line 241
    .line 242
    const/16 v2, 0x10

    .line 243
    .line 244
    const-string v3, "4k 60fps"

    .line 245
    .line 246
    const-string v4, "FourK_60F"

    .line 247
    .line 248
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->FourK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 252
    .line 253
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 254
    .line 255
    move-object/from16 v17, v0

    .line 256
    .line 257
    const/16 v2, 0x11

    .line 258
    .line 259
    const-string v3, "1080p 120fps"

    .line 260
    .line 261
    const-string v4, "ExtremelyHigh_120F"

    .line 262
    .line 263
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 267
    .line 268
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 269
    .line 270
    move-object/from16 v18, v0

    .line 271
    .line 272
    const/16 v2, 0x12

    .line 273
    .line 274
    const-string v3, "2k 120fps"

    .line 275
    .line 276
    const-string v4, "TwoK_120F"

    .line 277
    .line 278
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 282
    .line 283
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 284
    .line 285
    move-object/from16 v19, v0

    .line 286
    .line 287
    const/16 v2, 0x13

    .line 288
    .line 289
    const-string v3, "4k 120fps"

    .line 290
    .line 291
    const-string v4, "FourK_120F"

    .line 292
    .line 293
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->FourK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 297
    .line 298
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 299
    .line 300
    move-object/from16 v20, v0

    .line 301
    .line 302
    const/16 v2, 0x14

    .line 303
    .line 304
    const-string v3, "240p HDR"

    .line 305
    .line 306
    const-string v4, "L_Standard_HDR"

    .line 307
    .line 308
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 312
    .line 313
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 314
    .line 315
    move-object/from16 v21, v0

    .line 316
    .line 317
    const/16 v2, 0x15

    .line 318
    .line 319
    const-string v3, "360p HDR"

    .line 320
    .line 321
    const-string v4, "Standard_HDR"

    .line 322
    .line 323
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 327
    .line 328
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 329
    .line 330
    move-object/from16 v22, v0

    .line 331
    .line 332
    const/16 v2, 0x16

    .line 333
    .line 334
    const-string v3, "480p HDR"

    .line 335
    .line 336
    const-string v4, "High_HDR"

    .line 337
    .line 338
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 342
    .line 343
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 344
    .line 345
    move-object/from16 v23, v0

    .line 346
    .line 347
    const/16 v2, 0x17

    .line 348
    .line 349
    const-string v3, "540p HDR"

    .line 350
    .line 351
    const-string v4, "H_High_HDR"

    .line 352
    .line 353
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 357
    .line 358
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 359
    .line 360
    move-object/from16 v24, v0

    .line 361
    .line 362
    const/16 v2, 0x18

    .line 363
    .line 364
    const-string v3, "720p HDR"

    .line 365
    .line 366
    const-string v4, "SuperHigh_HDR"

    .line 367
    .line 368
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 372
    .line 373
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 374
    .line 375
    move-object/from16 v25, v0

    .line 376
    .line 377
    const/16 v2, 0x19

    .line 378
    .line 379
    const-string v3, "1080p HDR"

    .line 380
    .line 381
    const-string v4, "ExtremelyHigh_HDR"

    .line 382
    .line 383
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 387
    .line 388
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 389
    .line 390
    move-object/from16 v26, v0

    .line 391
    .line 392
    const/16 v2, 0x1a

    .line 393
    .line 394
    const-string v3, "2k HDR"

    .line 395
    .line 396
    const-string v4, "TwoK_HDR"

    .line 397
    .line 398
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 402
    .line 403
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 404
    .line 405
    move-object/from16 v27, v0

    .line 406
    .line 407
    const/16 v2, 0x1b

    .line 408
    .line 409
    const-string v3, "4k HDR"

    .line 410
    .line 411
    const-string v4, "FourK_HDR"

    .line 412
    .line 413
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 417
    .line 418
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 419
    .line 420
    move-object/from16 v28, v0

    .line 421
    .line 422
    const/16 v2, 0x1c

    .line 423
    .line 424
    const-string v3, "8k"

    .line 425
    .line 426
    const-string v4, "EightK"

    .line 427
    .line 428
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->EightK:Lcom/ss/ttvideoengine/Resolution;

    .line 432
    .line 433
    new-instance v0, Lcom/ss/ttvideoengine/Resolution;

    .line 434
    .line 435
    move-object/from16 v29, v0

    .line 436
    .line 437
    const/16 v2, 0x1d

    .line 438
    .line 439
    const-string v3, "1080p+"

    .line 440
    .line 441
    const-string v4, "ExtremelyHighPlus"

    .line 442
    .line 443
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ss/ttvideoengine/Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

    .line 447
    .line 448
    move-object/from16 v0, v30

    .line 449
    .line 450
    move-object/from16 v1, v31

    .line 451
    .line 452
    move-object/from16 v2, v32

    .line 453
    .line 454
    move-object/from16 v3, v33

    .line 455
    .line 456
    move-object/from16 v4, v34

    .line 457
    .line 458
    filled-new-array/range {v0 .. v29}, [Lcom/ss/ttvideoengine/Resolution;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    sput-object v0, Lcom/ss/ttvideoengine/Resolution;->$VALUES:[Lcom/ss/ttvideoengine/Resolution;

    .line 463
    .line 464
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/ss/ttvideoengine/Resolution;->resolution:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/ss/ttvideoengine/Resolution;->audioquality:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static forString(Ljava/lang/String;)Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, "Undefine"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string v0, "Standard"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    const-string v0, "High"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_3
    const-string v0, "SuperHigh"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    const-string v0, "FourK"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_5
    const-string v0, "HDR"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_6
    const-string v0, "Auto"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_7
    const-string v0, "L_Standard"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->L_Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_8
    const-string v0, "H_High"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->H_High:Lcom/ss/ttvideoengine/Resolution;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_9
    const-string v0, "TwoK"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_a

    .line 116
    .line 117
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->TwoK:Lcom/ss/ttvideoengine/Resolution;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_a
    const-string v0, "ExtremelyHigh_50F"

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_b

    .line 127
    .line 128
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_b
    const-string v0, "TwoK_50F"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_c

    .line 138
    .line 139
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_c
    const-string v0, "FourK_50F"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_d

    .line 149
    .line 150
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->FourK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_d
    const-string v0, "ExtremelyHigh_60F"

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_e

    .line 160
    .line 161
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_e
    const-string v0, "TwoK_60F"

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_f

    .line 171
    .line 172
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 173
    .line 174
    return-object p0

    .line 175
    :cond_f
    const-string v0, "FourK_60F"

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_10

    .line 182
    .line 183
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->FourK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_10
    const-string v0, "ExtremelyHigh_120F"

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_11

    .line 193
    .line 194
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_11
    const-string v0, "TwoK_120F"

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_12

    .line 204
    .line 205
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_12
    const-string v0, "FourK_120F"

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_13

    .line 215
    .line 216
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->FourK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_13
    const-string v0, "L_Standard_HDR"

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_14

    .line 226
    .line 227
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 228
    .line 229
    return-object p0

    .line 230
    :cond_14
    const-string v0, "Standard_HDR"

    .line 231
    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_15

    .line 237
    .line 238
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 239
    .line 240
    return-object p0

    .line 241
    :cond_15
    const-string v0, "High_HDR"

    .line 242
    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_16

    .line 248
    .line 249
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 250
    .line 251
    return-object p0

    .line 252
    :cond_16
    const-string v0, "H_High_HDR"

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_17

    .line 259
    .line 260
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 261
    .line 262
    return-object p0

    .line 263
    :cond_17
    const-string v0, "SuperHigh_HDR"

    .line 264
    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_18

    .line 270
    .line 271
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 272
    .line 273
    return-object p0

    .line 274
    :cond_18
    const-string v0, "ExtremelyHigh_HDR"

    .line 275
    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_19

    .line 281
    .line 282
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 283
    .line 284
    return-object p0

    .line 285
    :cond_19
    const-string v0, "TwoK_HDR"

    .line 286
    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_1a

    .line 292
    .line 293
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 294
    .line 295
    return-object p0

    .line 296
    :cond_1a
    const-string v0, "FourK_HDR"

    .line 297
    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_1b

    .line 303
    .line 304
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 305
    .line 306
    return-object p0

    .line 307
    :cond_1b
    const-string v0, "EightK"

    .line 308
    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_1c

    .line 314
    .line 315
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->EightK:Lcom/ss/ttvideoengine/Resolution;

    .line 316
    .line 317
    return-object p0

    .line 318
    :cond_1c
    const-string v0, "1080p+"

    .line 319
    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result p0

    .line 324
    if-eqz p0, :cond_1d

    .line 325
    .line 326
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

    .line 327
    .line 328
    return-object p0

    .line 329
    :cond_1d
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 330
    .line 331
    return-object p0
.end method

.method public static getAllResolutions()[Lcom/ss/ttvideoengine/Resolution;
    .locals 4

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-array v0, v0, [Lcom/ss/ttvideoengine/Resolution;

    .line 5
    .line 6
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->L_Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aput-object v2, v0, v3

    .line 14
    .line 15
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v2, v0, v3

    .line 19
    .line 20
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->H_High:Lcom/ss/ttvideoengine/Resolution;

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    aput-object v2, v0, v3

    .line 29
    .line 30
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    aput-object v2, v0, v3

    .line 34
    .line 35
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    aput-object v2, v0, v3

    .line 39
    .line 40
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    aput-object v2, v0, v3

    .line 50
    .line 51
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 52
    .line 53
    const/16 v3, 0x9

    .line 54
    .line 55
    aput-object v2, v0, v3

    .line 56
    .line 57
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 58
    .line 59
    const/16 v3, 0xa

    .line 60
    .line 61
    aput-object v2, v0, v3

    .line 62
    .line 63
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 64
    .line 65
    const/16 v3, 0xb

    .line 66
    .line 67
    aput-object v2, v0, v3

    .line 68
    .line 69
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->TwoK:Lcom/ss/ttvideoengine/Resolution;

    .line 70
    .line 71
    const/16 v3, 0xc

    .line 72
    .line 73
    aput-object v2, v0, v3

    .line 74
    .line 75
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 76
    .line 77
    const/16 v3, 0xd

    .line 78
    .line 79
    aput-object v2, v0, v3

    .line 80
    .line 81
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 82
    .line 83
    const/16 v3, 0xe

    .line 84
    .line 85
    aput-object v2, v0, v3

    .line 86
    .line 87
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 88
    .line 89
    const/16 v3, 0xf

    .line 90
    .line 91
    aput-object v2, v0, v3

    .line 92
    .line 93
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    .line 94
    .line 95
    const/16 v3, 0x10

    .line 96
    .line 97
    aput-object v2, v0, v3

    .line 98
    .line 99
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->FourK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 100
    .line 101
    const/16 v3, 0x11

    .line 102
    .line 103
    aput-object v2, v0, v3

    .line 104
    .line 105
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->FourK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 106
    .line 107
    const/16 v3, 0x12

    .line 108
    .line 109
    aput-object v2, v0, v3

    .line 110
    .line 111
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->FourK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 112
    .line 113
    const/16 v3, 0x13

    .line 114
    .line 115
    aput-object v2, v0, v3

    .line 116
    .line 117
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 118
    .line 119
    const/16 v3, 0x14

    .line 120
    .line 121
    aput-object v2, v0, v3

    .line 122
    .line 123
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 124
    .line 125
    const/16 v3, 0x15

    .line 126
    .line 127
    aput-object v2, v0, v3

    .line 128
    .line 129
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 130
    .line 131
    const/16 v3, 0x16

    .line 132
    .line 133
    aput-object v2, v0, v3

    .line 134
    .line 135
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 136
    .line 137
    const/16 v3, 0x17

    .line 138
    .line 139
    aput-object v2, v0, v3

    .line 140
    .line 141
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 142
    .line 143
    const/16 v3, 0x18

    .line 144
    .line 145
    aput-object v2, v0, v3

    .line 146
    .line 147
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 148
    .line 149
    const/16 v3, 0x19

    .line 150
    .line 151
    aput-object v2, v0, v3

    .line 152
    .line 153
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 154
    .line 155
    const/16 v3, 0x1a

    .line 156
    .line 157
    aput-object v2, v0, v3

    .line 158
    .line 159
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 160
    .line 161
    const/16 v3, 0x1b

    .line 162
    .line 163
    aput-object v2, v0, v3

    .line 164
    .line 165
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->EightK:Lcom/ss/ttvideoengine/Resolution;

    .line 166
    .line 167
    const/16 v3, 0x1c

    .line 168
    .line 169
    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :catch_0
    new-array v0, v1, [Lcom/ss/ttvideoengine/Resolution;

    .line 173
    .line 174
    :goto_0
    return-object v0
.end method

.method public static toString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 2

    .line 7
    const-string v0, "Undefine"

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_1

    return-object v0

    .line 9
    :cond_1
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_2

    .line 10
    const-string p0, "Standard"

    return-object p0

    .line 11
    :cond_2
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_3

    .line 12
    const-string p0, "High"

    return-object p0

    .line 13
    :cond_3
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_4

    .line 14
    const-string p0, "SuperHigh"

    return-object p0

    .line 15
    :cond_4
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_5

    .line 16
    const-string p0, "FourK"

    return-object p0

    .line 17
    :cond_5
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_6

    .line 18
    const-string p0, "HDR"

    return-object p0

    .line 19
    :cond_6
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_7

    .line 20
    const-string p0, "Auto"

    return-object p0

    .line 21
    :cond_7
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->L_Standard:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_8

    .line 22
    const-string p0, "L_Standard"

    return-object p0

    .line 23
    :cond_8
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->H_High:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_9

    .line 24
    const-string p0, "H_High"

    return-object p0

    .line 25
    :cond_9
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_a

    .line 26
    const-string p0, "TwoK"

    return-object p0

    .line 27
    :cond_a
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_b

    .line 28
    const-string p0, "ExtremelyHigh_50F"

    return-object p0

    .line 29
    :cond_b
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_c

    .line 30
    const-string p0, "TwoK_50F"

    return-object p0

    .line 31
    :cond_c
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_50F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_d

    .line 32
    const-string p0, "FourK_50F"

    return-object p0

    .line 33
    :cond_d
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_e

    .line 34
    const-string p0, "ExtremelyHigh_60F"

    return-object p0

    .line 35
    :cond_e
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_f

    .line 36
    const-string p0, "TwoK_60F"

    return-object p0

    .line 37
    :cond_f
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_60F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_10

    .line 38
    const-string p0, "FourK_60F"

    return-object p0

    .line 39
    :cond_10
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_11

    .line 40
    const-string p0, "ExtremelyHigh_120F"

    return-object p0

    .line 41
    :cond_11
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_12

    .line 42
    const-string p0, "TwoK_120F"

    return-object p0

    .line 43
    :cond_12
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_120F:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_13

    .line 44
    const-string p0, "FourK_120F"

    return-object p0

    .line 45
    :cond_13
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_14

    .line 46
    const-string p0, "L_Standard_HDR"

    return-object p0

    .line 47
    :cond_14
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_15

    .line 48
    const-string p0, "Standard_HDR"

    return-object p0

    .line 49
    :cond_15
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->High_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_16

    .line 50
    const-string p0, "High_HDR"

    return-object p0

    .line 51
    :cond_16
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_17

    .line 52
    const-string p0, "H_High_HDR"

    return-object p0

    .line 53
    :cond_17
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_18

    .line 54
    const-string p0, "SuperHigh_HDR"

    return-object p0

    .line 55
    :cond_18
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_19

    .line 56
    const-string p0, "ExtremelyHigh_HDR"

    return-object p0

    .line 57
    :cond_19
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_1a

    .line 58
    const-string p0, "TwoK_HDR"

    return-object p0

    .line 59
    :cond_1a
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_1b

    .line 60
    const-string p0, "FourK_HDR"

    return-object p0

    .line 61
    :cond_1b
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->EightK:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_1c

    .line 62
    const-string p0, "EightK"

    return-object p0

    .line 63
    :cond_1c
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

    if-ne p0, v1, :cond_1d

    .line 64
    const-string p0, "1080p+"

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public static valueOf(I)Lcom/ss/ttvideoengine/Resolution;
    .locals 2

    .line 2
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt p0, v1, :cond_0

    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt p0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/Resolution;->values()[Lcom/ss/ttvideoengine/Resolution;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/ttvideoengine/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->$VALUES:[Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/ss/ttvideoengine/Resolution;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/ss/ttvideoengine/Resolution;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/Resolution;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 2
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/Resolution;->audioquality:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/Resolution;->resolution:Ljava/lang/String;

    return-object p1

    .line 6
    :cond_1
    const-string p1, ""

    return-object p1
.end method
