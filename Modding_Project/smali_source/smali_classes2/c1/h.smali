.class Lc1/h;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ty"

    .line 2
    .line 3
    .line 4
    const-string v1, "d"

    .line 5
    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lc1/h;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 15
    .line 16
    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/c;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    sget-object v3, Lc1/h;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->x(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eq v3, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->F()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->P()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v3, v4

    .line 42
    :goto_1
    if-nez v3, :cond_3

    .line 43
    .line 44
    return-object v4

    .line 45
    :cond_3
    const/4 v5, -0x1

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sparse-switch v6, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    :goto_2
    move v0, v5

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :sswitch_0
    const-string/jumbo v0, "tr"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/16 v0, 0xd

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :sswitch_1
    const-string/jumbo v0, "tm"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/16 v0, 0xc

    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :sswitch_2
    const-string v0, "st"

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const/16 v0, 0xb

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :sswitch_3
    const-string v0, "sr"

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    const/16 v0, 0xa

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :sswitch_4
    const-string v0, "sh"

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    const/16 v0, 0x9

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :sswitch_5
    const-string v0, "rp"

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_9

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    const/16 v0, 0x8

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :sswitch_6
    const-string v0, "rd"

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_a

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_a
    const/4 v0, 0x7

    .line 145
    goto :goto_3

    .line 146
    :sswitch_7
    const-string v0, "rc"

    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_b

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    const/4 v0, 0x6

    .line 156
    goto :goto_3

    .line 157
    :sswitch_8
    const-string v0, "mm"

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_c

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_c
    const/4 v0, 0x5

    .line 167
    goto :goto_3

    .line 168
    :sswitch_9
    const-string v0, "gs"

    .line 169
    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_d

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_d
    const/4 v0, 0x4

    .line 178
    goto :goto_3

    .line 179
    :sswitch_a
    const-string v0, "gr"

    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_e

    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :cond_e
    const/4 v0, 0x3

    .line 190
    goto :goto_3

    .line 191
    :sswitch_b
    const-string v0, "gf"

    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_f

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_f
    move v0, v1

    .line 202
    goto :goto_3

    .line 203
    :sswitch_c
    const-string v1, "fl"

    .line 204
    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_11

    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :sswitch_d
    const-string v0, "el"

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_10

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_10
    const/4 v0, 0x0

    .line 224
    :cond_11
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 225
    .line 226
    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v0, "Unknown shape type "

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p1}, Ld1/f;->c(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :pswitch_0
    invoke-static {p0, p1}, Lc1/c;->h(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Ly0/n;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    goto :goto_4

    .line 253
    :pswitch_1
    invoke-static {p0, p1}, Lc1/m0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    goto :goto_4

    .line 258
    :pswitch_2
    invoke-static {p0, p1}, Lc1/l0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    goto :goto_4

    .line 263
    :pswitch_3
    invoke-static {p0, p1, v2}, Lc1/c0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;I)Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    goto :goto_4

    .line 268
    :pswitch_4
    invoke-static {p0, p1}, Lc1/k0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/l;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    goto :goto_4

    .line 273
    :pswitch_5
    invoke-static {p0, p1}, Lc1/e0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/g;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    goto :goto_4

    .line 278
    :pswitch_6
    invoke-static {p0, p1}, Lc1/f0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/h;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    goto :goto_4

    .line 283
    :pswitch_7
    invoke-static {p0, p1}, Lc1/d0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/f;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    goto :goto_4

    .line 288
    :pswitch_8
    invoke-static {p0}, Lc1/y;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 293
    .line 294
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/i;->a(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :pswitch_9
    invoke-static {p0, p1}, Lc1/q;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/model/content/a;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    goto :goto_4

    .line 303
    :pswitch_a
    invoke-static {p0, p1}, Lc1/j0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/k;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    goto :goto_4

    .line 308
    :pswitch_b
    invoke-static {p0, p1}, Lc1/p;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/e;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    goto :goto_4

    .line 313
    :pswitch_c
    invoke-static {p0, p1}, Lc1/i0;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;)Lz0/j;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    goto :goto_4

    .line 318
    :pswitch_d
    invoke-static {p0, p1, v2}, Lc1/f;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/i;I)Lz0/b;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_12

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->P()V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    .line 333
    .line 334
    .line 335
    return-object v4

    .line 336
    nop

    .line 337
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
