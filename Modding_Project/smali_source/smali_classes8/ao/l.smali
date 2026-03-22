.class public final Lao/l;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lao/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lao/l$a;
    }
.end annotation


# static fields
.field private static final s:[I

.field private static final t:Lao/l$a;

.field private static final u:Lao/l$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Lyo/r$a;

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lao/l;->s:[I

    .line 9
    .line 10
    new-instance v0, Lao/l$a;

    .line 11
    .line 12
    new-instance v1, Lao/j;

    .line 13
    .line 14
    invoke-direct {v1}, Lao/j;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lao/l$a;-><init>(Lao/l$a$a;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lao/l;->t:Lao/l$a;

    .line 21
    .line 22
    new-instance v0, Lao/l$a;

    .line 23
    .line 24
    new-instance v1, Lao/k;

    .line 25
    .line 26
    invoke-direct {v1}, Lao/k;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lao/l$a;-><init>(Lao/l$a$a;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lao/l;->u:Lao/l$a;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lao/l;->k:I

    .line 6
    .line 7
    const v1, 0x1b8a0

    .line 8
    .line 9
    .line 10
    iput v1, p0, Lao/l;->n:I

    .line 11
    .line 12
    new-instance v1, Lyo/h;

    .line 13
    .line 14
    invoke-direct {v1}, Lyo/h;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lao/l;->p:Lyo/r$a;

    .line 18
    .line 19
    iput-boolean v0, p0, Lao/l;->o:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic g()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lao/l;->m()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lao/l;->l()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private i(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lao/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_5

    .line 7
    .line 8
    :pswitch_1
    new-instance p1, Leo/a;

    .line 9
    .line 10
    invoke-direct {p1}, Leo/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :pswitch_2
    iget p1, p0, Lao/l;->h:I

    .line 19
    .line 20
    and-int/lit8 v0, p1, 0x2

    .line 21
    .line 22
    if-nez v0, :cond_8

    .line 23
    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    if-nez p1, :cond_8

    .line 27
    .line 28
    new-instance p1, Lio/a;

    .line 29
    .line 30
    invoke-direct {p1}, Lio/a;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :pswitch_3
    new-instance p1, Lfo/a;

    .line 39
    .line 40
    invoke-direct {p1}, Lfo/a;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :pswitch_4
    new-instance p1, Lkp/a;

    .line 49
    .line 50
    invoke-direct {p1}, Lkp/a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :pswitch_5
    new-instance p1, Lxo/a;

    .line 59
    .line 60
    invoke-direct {p1}, Lxo/a;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :pswitch_6
    new-instance p1, Lco/b;

    .line 69
    .line 70
    iget-boolean v0, p0, Lao/l;->o:Z

    .line 71
    .line 72
    xor-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    iget-object v1, p0, Lao/l;->p:Lyo/r$a;

    .line 75
    .line 76
    invoke-direct {p1, v0, v1}, Lco/b;-><init>(ILyo/r$a;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :pswitch_7
    sget-object p1, Lao/l;->u:Lao/l$a;

    .line 85
    .line 86
    new-array v0, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lao/l$a;->a([Ljava/lang/Object;)Lao/p;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_8

    .line 93
    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :pswitch_8
    new-instance p1, Ljo/a;

    .line 100
    .line 101
    iget v0, p0, Lao/l;->r:I

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljo/a;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :pswitch_9
    new-instance p1, Ljp/b;

    .line 112
    .line 113
    invoke-direct {p1}, Ljp/b;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :pswitch_a
    iget-object p1, p0, Lao/l;->m:Lcom/google/common/collect/ImmutableList;

    .line 122
    .line 123
    if-nez p1, :cond_0

    .line 124
    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lao/l;->m:Lcom/google/common/collect/ImmutableList;

    .line 130
    .line 131
    :cond_0
    new-instance p1, Lip/k0;

    .line 132
    .line 133
    iget v1, p0, Lao/l;->k:I

    .line 134
    .line 135
    iget-boolean v0, p0, Lao/l;->o:Z

    .line 136
    .line 137
    xor-int/lit8 v2, v0, 0x1

    .line 138
    .line 139
    iget-object v3, p0, Lao/l;->p:Lyo/r$a;

    .line 140
    .line 141
    new-instance v4, Lcn/h0;

    .line 142
    .line 143
    const-wide/16 v5, 0x0

    .line 144
    .line 145
    invoke-direct {v4, v5, v6}, Lcn/h0;-><init>(J)V

    .line 146
    .line 147
    .line 148
    new-instance v5, Lip/j;

    .line 149
    .line 150
    iget v0, p0, Lao/l;->l:I

    .line 151
    .line 152
    iget-object v6, p0, Lao/l;->m:Lcom/google/common/collect/ImmutableList;

    .line 153
    .line 154
    invoke-direct {v5, v0, v6}, Lip/j;-><init>(ILjava/util/List;)V

    .line 155
    .line 156
    .line 157
    iget v6, p0, Lao/l;->n:I

    .line 158
    .line 159
    move-object v0, p1

    .line 160
    invoke-direct/range {v0 .. v6}, Lip/k0;-><init>(IILyo/r$a;Lcn/h0;Lip/l0$c;I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :pswitch_b
    new-instance p1, Lip/c0;

    .line 169
    .line 170
    invoke-direct {p1}, Lip/c0;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :pswitch_c
    new-instance p1, Lwo/d;

    .line 179
    .line 180
    invoke-direct {p1}, Lwo/d;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :pswitch_d
    new-instance p1, Lvo/h;

    .line 189
    .line 190
    iget-object v0, p0, Lao/l;->p:Lyo/r$a;

    .line 191
    .line 192
    iget v2, p0, Lao/l;->i:I

    .line 193
    .line 194
    iget v3, p0, Lao/l;->q:I

    .line 195
    .line 196
    invoke-static {v3}, Lvo/h;->j(I)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    or-int/2addr v2, v3

    .line 201
    iget-boolean v3, p0, Lao/l;->o:Z

    .line 202
    .line 203
    if-eqz v3, :cond_1

    .line 204
    .line 205
    move v3, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_1
    const/16 v3, 0x20

    .line 208
    .line 209
    :goto_0
    or-int/2addr v2, v3

    .line 210
    invoke-direct {p1, v0, v2}, Lvo/h;-><init>(Lyo/r$a;I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance p1, Lvo/n;

    .line 217
    .line 218
    iget-object v0, p0, Lao/l;->p:Lyo/r$a;

    .line 219
    .line 220
    iget v2, p0, Lao/l;->h:I

    .line 221
    .line 222
    iget v3, p0, Lao/l;->q:I

    .line 223
    .line 224
    invoke-static {v3}, Lvo/n;->m(I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    or-int/2addr v2, v3

    .line 229
    iget-boolean v3, p0, Lao/l;->o:Z

    .line 230
    .line 231
    if-eqz v3, :cond_2

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_2
    const/16 v1, 0x10

    .line 235
    .line 236
    :goto_1
    or-int/2addr v1, v2

    .line 237
    invoke-direct {p1, v0, v1}, Lvo/n;-><init>(Lyo/r$a;I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto/16 :goto_5

    .line 244
    .line 245
    :pswitch_e
    new-instance p1, Luo/f;

    .line 246
    .line 247
    iget v2, p0, Lao/l;->j:I

    .line 248
    .line 249
    iget-boolean v3, p0, Lao/l;->b:Z

    .line 250
    .line 251
    or-int/2addr v2, v3

    .line 252
    iget-boolean v3, p0, Lao/l;->c:Z

    .line 253
    .line 254
    if-eqz v3, :cond_3

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_3
    move v0, v1

    .line 258
    :goto_2
    or-int/2addr v0, v2

    .line 259
    invoke-direct {p1, v0}, Luo/f;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto/16 :goto_5

    .line 266
    .line 267
    :pswitch_f
    new-instance p1, Lto/e;

    .line 268
    .line 269
    iget-object v2, p0, Lao/l;->p:Lyo/r$a;

    .line 270
    .line 271
    iget v3, p0, Lao/l;->g:I

    .line 272
    .line 273
    iget-boolean v4, p0, Lao/l;->o:Z

    .line 274
    .line 275
    if-eqz v4, :cond_4

    .line 276
    .line 277
    move v0, v1

    .line 278
    :cond_4
    or-int/2addr v0, v3

    .line 279
    invoke-direct {p1, v2, v0}, Lto/e;-><init>(Lyo/r$a;I)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :pswitch_10
    new-instance p1, Lio/bidmachine/media3/extractor/flv/b;

    .line 287
    .line 288
    invoke-direct {p1}, Lio/bidmachine/media3/extractor/flv/b;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :pswitch_11
    sget-object p1, Lao/l;->t:Lao/l$a;

    .line 296
    .line 297
    iget v0, p0, Lao/l;->f:I

    .line 298
    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Lao/l$a;->a([Ljava/lang/Object;)Lao/p;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    if-eqz p1, :cond_5

    .line 312
    .line 313
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_5
    new-instance p1, Lgo/d;

    .line 318
    .line 319
    iget v0, p0, Lao/l;->f:I

    .line 320
    .line 321
    invoke-direct {p1, v0}, Lgo/d;-><init>(I)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :pswitch_12
    new-instance p1, Lbo/b;

    .line 329
    .line 330
    iget v2, p0, Lao/l;->e:I

    .line 331
    .line 332
    iget-boolean v3, p0, Lao/l;->b:Z

    .line 333
    .line 334
    or-int/2addr v2, v3

    .line 335
    iget-boolean v3, p0, Lao/l;->c:Z

    .line 336
    .line 337
    if-eqz v3, :cond_6

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_6
    move v0, v1

    .line 341
    :goto_3
    or-int/2addr v0, v2

    .line 342
    invoke-direct {p1, v0}, Lbo/b;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :pswitch_13
    new-instance p1, Lip/h;

    .line 350
    .line 351
    iget v2, p0, Lao/l;->d:I

    .line 352
    .line 353
    iget-boolean v3, p0, Lao/l;->b:Z

    .line 354
    .line 355
    or-int/2addr v2, v3

    .line 356
    iget-boolean v3, p0, Lao/l;->c:Z

    .line 357
    .line 358
    if-eqz v3, :cond_7

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_7
    move v0, v1

    .line 362
    :goto_4
    or-int/2addr v0, v2

    .line 363
    invoke-direct {p1, v0}, Lip/h;-><init>(I)V

    .line 364
    .line 365
    .line 366
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :pswitch_14
    new-instance p1, Lip/e;

    .line 371
    .line 372
    invoke-direct {p1}, Lip/e;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :pswitch_15
    new-instance p1, Lip/b;

    .line 380
    .line 381
    invoke-direct {p1}, Lip/b;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :cond_8
    :goto_5
    return-void

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static l()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lao/p;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "io.bidmachine.media3.decoder.flac.FlacLibrary"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-string v4, "isAvailable"

    .line 13
    .line 14
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "io.bidmachine.media3.decoder.flac.FlacExtractor"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-class v1, Lao/p;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    return-object v3
.end method

.method private static m()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lao/p;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    const-string v0, "io.bidmachine.media3.decoder.midi.MidiExtractor"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lao/p;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lyo/r$a;)Lao/u;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lao/l;->o(Lyo/r$a;)Lao/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Lao/u;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lao/l;->j(I)Lao/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public declared-synchronized createExtractors()[Lao/p;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lao/l;->d(Landroid/net/Uri;Ljava/util/Map;)[Lao/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public declared-synchronized d(Landroid/net/Uri;Ljava/util/Map;)[Lao/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lao/p;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, Lao/l;->s:[I

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lzm/m;->b(Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p2, v0}, Lao/l;->i(ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    invoke-static {p1}, Lzm/m;->c(Landroid/net/Uri;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lao/l;->i(ILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-ge v3, v2, :cond_3

    .line 37
    .line 38
    aget v4, v1, v3

    .line 39
    .line 40
    if-eq v4, p2, :cond_2

    .line 41
    .line 42
    if-eq v4, p1, :cond_2

    .line 43
    .line 44
    invoke-direct {p0, v4, v0}, Lao/l;->i(ILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    new-array p1, p1, [Lao/p;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Lao/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method public bridge synthetic e(Z)Lao/u;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lao/l;->k(Z)Lao/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public declared-synchronized j(I)Lao/l;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lao/l;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized k(Z)Lao/l;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lao/l;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized n(I)Lao/l;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lao/l;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized o(Lyo/r$a;)Lao/l;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lao/l;->p:Lyo/r$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
