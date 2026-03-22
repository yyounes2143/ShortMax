.class public Lsm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final e:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final f:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final g:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final h:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final i:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final j:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final k:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final l:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final m:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final n:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final o:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final p:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final q:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    const-string v0, "#B4FFFFFF"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lsm/a;->a:I

    .line 8
    .line 9
    const-string v0, "#5c000000"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lsm/a;->b:I

    .line 16
    .line 17
    const-string v0, "#52000000"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lsm/a;->c:I

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lsm/a;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x30

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 56
    .line 57
    .line 58
    const-string v4, "cross"

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 v4, 0x8

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 70
    .line 71
    .line 72
    const/high16 v5, 0x41f00000    # 30.0f

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 82
    .line 83
    .line 84
    const/high16 v6, 0x40400000    # 3.0f

    .line 85
    .line 86
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 94
    .line 95
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lsm/a;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 107
    .line 108
    .line 109
    const-string v7, "skip"

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 127
    .line 128
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lsm/a;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "circular"

    .line 143
    .line 144
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 154
    .line 155
    .line 156
    const/4 v8, 0x1

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 168
    .line 169
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 170
    .line 171
    .line 172
    sput-object v0, Lsm/a;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 178
    .line 179
    .line 180
    const/high16 v9, 0x41800000    # 16.0f

    .line 181
    .line 182
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->Q(Ljava/lang/Float;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 190
    .line 191
    .line 192
    const/16 v10, 0xc

    .line 193
    .line 194
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    const/4 v11, 0x2

    .line 199
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-virtual {v0, v10, v11, v10, v11}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 204
    .line 205
    .line 206
    const-string v12, "%1.0f%"

    .line 207
    .line 208
    invoke-virtual {v0, v12}, Lio/bidmachine/iab/utils/IabElementStyle;->O(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v13, "text"

    .line 212
    .line 213
    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 226
    .line 227
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 228
    .line 229
    .line 230
    sput-object v0, Lsm/a;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 231
    .line 232
    const/4 v14, 0x3

    .line 233
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 259
    .line 260
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lsm/a;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 264
    .line 265
    const/16 v15, 0x11

    .line 266
    .line 267
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v16, v2

    .line 290
    .line 291
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->s0(Ljava/lang/Boolean;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 300
    .line 301
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 302
    .line 303
    .line 304
    sput-object v0, Lsm/a;->n:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 305
    .line 306
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 307
    .line 308
    .line 309
    const/16 v2, 0x50

    .line 310
    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 316
    .line 317
    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    move-object/from16 v18, v1

    .line 321
    .line 322
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->P(Ljava/lang/Integer;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 330
    .line 331
    .line 332
    const/16 v17, -0x1

    .line 333
    .line 334
    move-object/from16 v19, v1

    .line 335
    .line 336
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 344
    .line 345
    .line 346
    const-string v1, "linear"

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 355
    .line 356
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 357
    .line 358
    .line 359
    sput-object v0, Lsm/a;->m:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 360
    .line 361
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->Q(Ljava/lang/Float;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v10, v11, v10, v11}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v12}, Lio/bidmachine/iab/utils/IabElementStyle;->O(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 392
    .line 393
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 394
    .line 395
    .line 396
    sput-object v0, Lsm/a;->o:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 397
    .line 398
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 405
    .line 406
    .line 407
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->a0(Ljava/lang/Boolean;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 431
    .line 432
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 433
    .line 434
    .line 435
    sput-object v0, Lsm/a;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 436
    .line 437
    move-object/from16 v1, v18

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->Q(Ljava/lang/Float;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 449
    .line 450
    .line 451
    const/16 v1, 0x10

    .line 452
    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const/4 v3, 0x6

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v0, v1, v5, v1, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 479
    .line 480
    .line 481
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 482
    .line 483
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 484
    .line 485
    .line 486
    sput-object v0, Lsm/a;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 487
    .line 488
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 492
    .line 493
    .line 494
    move-object/from16 v2, v19

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->P(Ljava/lang/Integer;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 500
    .line 501
    .line 502
    new-instance v3, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 503
    .line 504
    invoke-direct {v3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 505
    .line 506
    .line 507
    sput-object v3, Lsm/a;->l:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 508
    .line 509
    invoke-virtual {v3, v2, v2, v2, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 510
    .line 511
    .line 512
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 513
    .line 514
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 515
    .line 516
    .line 517
    sput-object v0, Lsm/a;->p:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 518
    .line 519
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 529
    .line 530
    .line 531
    move-object/from16 v1, v16

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 537
    .line 538
    .line 539
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 540
    .line 541
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 542
    .line 543
    .line 544
    sput-object v0, Lsm/a;->q:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 545
    .line 546
    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 550
    .line 551
    .line 552
    const/high16 v1, -0x1000000

    .line 553
    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->P(Ljava/lang/Integer;)V

    .line 559
    .line 560
    .line 561
    const-string v1, "fullscreen"

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    array-length v1, p0

    .line 7
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "crossfill"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "skipfill"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance p0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 28
    .line 29
    invoke-direct {p0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->a0(Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lsm/a;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->g(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lsm/a;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 45
    .line 46
    return-object p0
.end method
