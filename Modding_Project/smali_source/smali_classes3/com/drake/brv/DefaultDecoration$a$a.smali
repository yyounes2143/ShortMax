.class public final Lcom/drake/brv/DefaultDecoration$a$a;
.super Ljava/lang/Object;
.source "DefaultDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drake/brv/DefaultDecoration$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/drake/brv/DefaultDecoration$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Lcom/drake/brv/DefaultDecoration$a;
    .locals 10
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "layoutManager"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-instance v9, Lcom/drake/brv/DefaultDecoration$a;

    .line 13
    .line 14
    const/16 v7, 0xf

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v2, v9

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/drake/brv/DefaultDecoration$a;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    instance-of v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v2, :cond_f

    .line 29
    .line 30
    move-object v2, p2

    .line 31
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    goto/16 :goto_1d

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_e

    .line 50
    .line 51
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, v4

    .line 58
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-ne p2, v4, :cond_7

    .line 63
    .line 64
    if-ne p1, v4, :cond_1

    .line 65
    .line 66
    move p2, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move p2, v3

    .line 69
    :goto_0
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 70
    .line 71
    .line 72
    if-ne p1, v5, :cond_2

    .line 73
    .line 74
    move p1, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move p1, v3

    .line 77
    :goto_1
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 78
    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    sub-int p1, v1, v5

    .line 83
    .line 84
    if-le v0, p1, :cond_3

    .line 85
    .line 86
    :goto_2
    move p1, v4

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move p1, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    if-gt v0, v5, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_3
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 94
    .line 95
    .line 96
    if-eqz p3, :cond_5

    .line 97
    .line 98
    if-gt v0, v5, :cond_6

    .line 99
    .line 100
    :goto_4
    move v3, v4

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    sub-int/2addr v1, v5

    .line 103
    if-le v0, v1, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    :goto_5
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_1d

    .line 110
    .line 111
    :cond_7
    if-gt v0, v5, :cond_8

    .line 112
    .line 113
    move p2, v4

    .line 114
    goto :goto_6

    .line 115
    :cond_8
    move p2, v3

    .line 116
    :goto_6
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 117
    .line 118
    .line 119
    sub-int/2addr v1, v5

    .line 120
    if-le v0, v1, :cond_9

    .line 121
    .line 122
    move p2, v4

    .line 123
    goto :goto_7

    .line 124
    :cond_9
    move p2, v3

    .line 125
    :goto_7
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 126
    .line 127
    .line 128
    if-eqz p3, :cond_b

    .line 129
    .line 130
    if-ne p1, v5, :cond_a

    .line 131
    .line 132
    :goto_8
    move p2, v4

    .line 133
    goto :goto_9

    .line 134
    :cond_a
    move p2, v3

    .line 135
    goto :goto_9

    .line 136
    :cond_b
    if-ne p1, v4, :cond_a

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :goto_9
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 140
    .line 141
    .line 142
    if-eqz p3, :cond_c

    .line 143
    .line 144
    if-ne p1, v4, :cond_d

    .line 145
    .line 146
    :goto_a
    move v3, v4

    .line 147
    goto :goto_b

    .line 148
    :cond_c
    if-ne p1, v5, :cond_d

    .line 149
    .line 150
    goto :goto_a

    .line 151
    :cond_d
    :goto_b
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1d

    .line 155
    .line 156
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 157
    .line 158
    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_f
    instance-of v2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 165
    .line 166
    if-eqz v2, :cond_1d

    .line 167
    .line 168
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 169
    .line 170
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-virtual {v2, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    sub-int/2addr v1, v4

    .line 183
    invoke-virtual {v2, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {v2, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    add-int/2addr v7, v4

    .line 192
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-ne p2, v4, :cond_16

    .line 201
    .line 202
    if-ne v7, v4, :cond_10

    .line 203
    .line 204
    move p2, v4

    .line 205
    goto :goto_c

    .line 206
    :cond_10
    move p2, v3

    .line 207
    :goto_c
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 208
    .line 209
    .line 210
    add-int/2addr v7, v8

    .line 211
    sub-int/2addr v7, v4

    .line 212
    if-ne v7, v5, :cond_11

    .line 213
    .line 214
    move p2, v4

    .line 215
    goto :goto_d

    .line 216
    :cond_11
    move p2, v3

    .line 217
    :goto_d
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 218
    .line 219
    .line 220
    if-eqz p3, :cond_13

    .line 221
    .line 222
    if-ne v6, v1, :cond_12

    .line 223
    .line 224
    :goto_e
    move p2, v4

    .line 225
    goto :goto_f

    .line 226
    :cond_12
    move p2, v3

    .line 227
    goto :goto_f

    .line 228
    :cond_13
    if-gt v0, v5, :cond_12

    .line 229
    .line 230
    add-int/lit8 p2, p1, -0x1

    .line 231
    .line 232
    invoke-virtual {v2, p2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-ne v6, p2, :cond_12

    .line 237
    .line 238
    goto :goto_e

    .line 239
    :goto_f
    invoke-virtual {v9, p2}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 240
    .line 241
    .line 242
    if-eqz p3, :cond_14

    .line 243
    .line 244
    if-gt v0, v5, :cond_15

    .line 245
    .line 246
    sub-int/2addr p1, v4

    .line 247
    invoke-virtual {v2, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-ne v6, p1, :cond_15

    .line 252
    .line 253
    :goto_10
    move v3, v4

    .line 254
    goto :goto_11

    .line 255
    :cond_14
    if-ne v6, v1, :cond_15

    .line 256
    .line 257
    goto :goto_10

    .line 258
    :cond_15
    :goto_11
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1d

    .line 262
    .line 263
    :cond_16
    if-nez v6, :cond_17

    .line 264
    .line 265
    move p1, v4

    .line 266
    goto :goto_12

    .line 267
    :cond_17
    move p1, v3

    .line 268
    :goto_12
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 269
    .line 270
    .line 271
    if-ne v6, v1, :cond_18

    .line 272
    .line 273
    move p1, v4

    .line 274
    goto :goto_13

    .line 275
    :cond_18
    move p1, v3

    .line 276
    :goto_13
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 277
    .line 278
    .line 279
    if-eqz p3, :cond_1a

    .line 280
    .line 281
    add-int p1, v7, v8

    .line 282
    .line 283
    sub-int/2addr p1, v4

    .line 284
    if-ne p1, v5, :cond_19

    .line 285
    .line 286
    :goto_14
    move p1, v4

    .line 287
    goto :goto_15

    .line 288
    :cond_19
    move p1, v3

    .line 289
    goto :goto_15

    .line 290
    :cond_1a
    if-ne v7, v4, :cond_19

    .line 291
    .line 292
    goto :goto_14

    .line 293
    :goto_15
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 294
    .line 295
    .line 296
    if-eqz p3, :cond_1b

    .line 297
    .line 298
    if-ne v7, v4, :cond_1c

    .line 299
    .line 300
    :goto_16
    move v3, v4

    .line 301
    goto :goto_17

    .line 302
    :cond_1b
    add-int/2addr v7, v8

    .line 303
    sub-int/2addr v7, v4

    .line 304
    if-ne v7, v5, :cond_1c

    .line 305
    .line 306
    goto :goto_16

    .line 307
    :cond_1c
    :goto_17
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 308
    .line 309
    .line 310
    goto :goto_1d

    .line 311
    :cond_1d
    instance-of p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 312
    .line 313
    if-eqz p1, :cond_25

    .line 314
    .line 315
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 316
    .line 317
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-ne p1, v4, :cond_22

    .line 322
    .line 323
    invoke-virtual {v9, v4}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v4}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 327
    .line 328
    .line 329
    if-eqz p3, :cond_1f

    .line 330
    .line 331
    if-ne v0, v1, :cond_1e

    .line 332
    .line 333
    :goto_18
    move p1, v4

    .line 334
    goto :goto_19

    .line 335
    :cond_1e
    move p1, v3

    .line 336
    goto :goto_19

    .line 337
    :cond_1f
    if-ne v0, v4, :cond_1e

    .line 338
    .line 339
    goto :goto_18

    .line 340
    :goto_19
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 341
    .line 342
    .line 343
    if-eqz p3, :cond_20

    .line 344
    .line 345
    if-ne v0, v4, :cond_21

    .line 346
    .line 347
    :goto_1a
    move v3, v4

    .line 348
    goto :goto_1b

    .line 349
    :cond_20
    if-ne v0, v1, :cond_21

    .line 350
    .line 351
    goto :goto_1a

    .line 352
    :cond_21
    :goto_1b
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 353
    .line 354
    .line 355
    goto :goto_1d

    .line 356
    :cond_22
    if-ne v0, v4, :cond_23

    .line 357
    .line 358
    move p1, v4

    .line 359
    goto :goto_1c

    .line 360
    :cond_23
    move p1, v3

    .line 361
    :goto_1c
    invoke-virtual {v9, p1}, Lcom/drake/brv/DefaultDecoration$a;->f(Z)V

    .line 362
    .line 363
    .line 364
    if-ne v0, v1, :cond_24

    .line 365
    .line 366
    move v3, v4

    .line 367
    :cond_24
    invoke-virtual {v9, v3}, Lcom/drake/brv/DefaultDecoration$a;->g(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v4}, Lcom/drake/brv/DefaultDecoration$a;->h(Z)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v4}, Lcom/drake/brv/DefaultDecoration$a;->e(Z)V

    .line 374
    .line 375
    .line 376
    :cond_25
    :goto_1d
    return-object v9
.end method
