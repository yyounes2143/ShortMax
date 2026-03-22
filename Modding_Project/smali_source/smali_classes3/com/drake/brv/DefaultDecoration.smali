.class public final Lcom/drake/brv/DefaultDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DefaultDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drake/brv/DefaultDecoration$a;,
        Lcom/drake/brv/DefaultDecoration$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/drake/brv/annotaion/DividerOrientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/drake/brv/BindingAdapter$BindingViewHolder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private final a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    sget-object p1, Lcom/drake/brv/annotaion/DividerOrientation;->HORIZONTAL:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    sget-object p1, Lcom/drake/brv/annotaion/DividerOrientation;->VERTICAL:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 31
    .line 32
    :goto_2
    iput-object p1, p0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    sget-object p1, Lcom/drake/brv/annotaion/DividerOrientation;->GRID:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 42
    .line 43
    :cond_4
    :goto_3
    return-void
.end method

.method private final b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    if-ge v5, v3, :cond_22

    .line 16
    .line 17
    add-int/lit8 v6, v5, 0x1

    .line 18
    .line 19
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v7, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    if-eqz v7, :cond_5

    .line 26
    .line 27
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-eqz v7, :cond_4

    .line 32
    .line 33
    check-cast v7, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 34
    .line 35
    invoke-virtual {v7}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->m()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    :cond_0
    iget-boolean v9, v0, Lcom/drake/brv/DefaultDecoration;->c:Z

    .line 43
    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    instance-of v9, v8, Ll1/d;

    .line 49
    .line 50
    if-eqz v9, :cond_1

    .line 51
    .line 52
    check-cast v8, Ll1/d;

    .line 53
    .line 54
    invoke-interface {v8}, Ll1/d;->c()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    :goto_1
    move/from16 v11, p3

    .line 61
    .line 62
    :goto_2
    move/from16 v16, v3

    .line 63
    .line 64
    goto/16 :goto_b

    .line 65
    .line 66
    :cond_1
    iget-object v8, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    const/4 v9, 0x1

    .line 69
    if-nez v8, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Ljava/lang/Boolean;

    .line 77
    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    :goto_3
    if-nez v9, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    .line 89
    .line 90
    const-string v2, "null cannot be cast to non-null type com.drake.brv.BindingAdapter.BindingViewHolder"

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_5
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/4 v8, -0x1

    .line 101
    if-ne v7, v8, :cond_6

    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    if-nez v9, :cond_7

    .line 112
    .line 113
    return-void

    .line 114
    :cond_7
    sget-object v10, Lcom/drake/brv/DefaultDecoration$a;->e:Lcom/drake/brv/DefaultDecoration$a$a;

    .line 115
    .line 116
    move/from16 v11, p3

    .line 117
    .line 118
    invoke-virtual {v10, v7, v9, v11}, Lcom/drake/brv/DefaultDecoration$a$a;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Lcom/drake/brv/DefaultDecoration$a;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->k:Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    if-nez v9, :cond_8

    .line 125
    .line 126
    iget v10, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eq v10, v8, :cond_9

    .line 134
    .line 135
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eq v10, v8, :cond_a

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    goto :goto_4

    .line 151
    :cond_a
    iget v10, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 152
    .line 153
    :goto_4
    if-nez v9, :cond_b

    .line 154
    .line 155
    iget v8, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_b
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-eq v12, v8, :cond_c

    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    goto :goto_5

    .line 169
    :cond_c
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-eq v12, v8, :cond_d

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    goto :goto_5

    .line 180
    :cond_d
    iget v8, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 181
    .line 182
    :goto_5
    if-nez v9, :cond_e

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    if-eqz v12, :cond_21

    .line 190
    .line 191
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 192
    .line 193
    new-instance v13, Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    .line 201
    add-int/2addr v14, v15

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    .line 208
    add-int/2addr v15, v4

    .line 209
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    iget v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 214
    .line 215
    add-int/2addr v4, v2

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 221
    .line 222
    add-int/2addr v2, v5

    .line 223
    invoke-direct {v13, v14, v15, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    .line 225
    .line 226
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->i:Z

    .line 227
    .line 228
    if-eqz v2, :cond_f

    .line 229
    .line 230
    iget v2, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 231
    .line 232
    if-eqz v2, :cond_f

    .line 233
    .line 234
    add-int/2addr v2, v10

    .line 235
    goto :goto_6

    .line 236
    :cond_f
    const/4 v2, 0x0

    .line 237
    :goto_6
    iget-boolean v4, v0, Lcom/drake/brv/DefaultDecoration;->j:Z

    .line 238
    .line 239
    if-eqz v4, :cond_10

    .line 240
    .line 241
    iget v4, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 242
    .line 243
    if-eqz v4, :cond_10

    .line 244
    .line 245
    add-int/2addr v4, v8

    .line 246
    goto :goto_7

    .line 247
    :cond_10
    const/4 v4, 0x0

    .line 248
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->g()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_11

    .line 253
    .line 254
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_11

    .line 259
    .line 260
    iget v5, v13, Landroid/graphics/Rect;->left:I

    .line 261
    .line 262
    sub-int/2addr v5, v8

    .line 263
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 264
    .line 265
    sub-int v14, v12, v10

    .line 266
    .line 267
    iget v15, v13, Landroid/graphics/Rect;->right:I

    .line 268
    .line 269
    add-int/2addr v15, v8

    .line 270
    invoke-virtual {v9, v5, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    .line 275
    .line 276
    move/from16 v16, v3

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_11
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-nez v5, :cond_12

    .line 284
    .line 285
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_12

    .line 290
    .line 291
    iget v5, v13, Landroid/graphics/Rect;->left:I

    .line 292
    .line 293
    sub-int/2addr v5, v8

    .line 294
    add-int/2addr v5, v4

    .line 295
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 296
    .line 297
    sub-int v14, v12, v10

    .line 298
    .line 299
    iget v15, v13, Landroid/graphics/Rect;->right:I

    .line 300
    .line 301
    move/from16 v16, v3

    .line 302
    .line 303
    iget v3, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 304
    .line 305
    sub-int/2addr v15, v3

    .line 306
    invoke-virtual {v9, v5, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_12
    move/from16 v16, v3

    .line 314
    .line 315
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_13

    .line 320
    .line 321
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-eqz v3, :cond_13

    .line 326
    .line 327
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 328
    .line 329
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 330
    .line 331
    add-int/2addr v3, v5

    .line 332
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 333
    .line 334
    sub-int v12, v5, v10

    .line 335
    .line 336
    iget v14, v13, Landroid/graphics/Rect;->right:I

    .line 337
    .line 338
    add-int/2addr v14, v8

    .line 339
    sub-int/2addr v14, v4

    .line 340
    invoke-virtual {v9, v3, v12, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_13
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-nez v3, :cond_14

    .line 352
    .line 353
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 354
    .line 355
    sub-int/2addr v3, v8

    .line 356
    add-int/2addr v3, v4

    .line 357
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 358
    .line 359
    sub-int v12, v5, v10

    .line 360
    .line 361
    iget v14, v13, Landroid/graphics/Rect;->right:I

    .line 362
    .line 363
    add-int/2addr v14, v8

    .line 364
    sub-int/2addr v14, v4

    .line 365
    invoke-virtual {v9, v3, v12, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 369
    .line 370
    .line 371
    :cond_14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->g()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_15

    .line 376
    .line 377
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_15

    .line 382
    .line 383
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 384
    .line 385
    sub-int/2addr v3, v8

    .line 386
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    .line 387
    .line 388
    iget v5, v13, Landroid/graphics/Rect;->right:I

    .line 389
    .line 390
    add-int/2addr v5, v8

    .line 391
    add-int v12, v4, v10

    .line 392
    .line 393
    invoke-virtual {v9, v3, v4, v5, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 397
    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_15
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-nez v3, :cond_16

    .line 405
    .line 406
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_16

    .line 411
    .line 412
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 413
    .line 414
    sub-int/2addr v3, v8

    .line 415
    add-int/2addr v3, v4

    .line 416
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    .line 417
    .line 418
    iget v5, v13, Landroid/graphics/Rect;->right:I

    .line 419
    .line 420
    iget v12, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 421
    .line 422
    sub-int/2addr v5, v12

    .line 423
    add-int v12, v4, v10

    .line 424
    .line 425
    invoke-virtual {v9, v3, v4, v5, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_16
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-nez v3, :cond_17

    .line 437
    .line 438
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_17

    .line 443
    .line 444
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 445
    .line 446
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 447
    .line 448
    add-int/2addr v3, v5

    .line 449
    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 450
    .line 451
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 452
    .line 453
    add-int/2addr v12, v8

    .line 454
    sub-int/2addr v12, v4

    .line 455
    add-int v4, v5, v10

    .line 456
    .line 457
    invoke-virtual {v9, v3, v5, v12, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 461
    .line 462
    .line 463
    goto :goto_9

    .line 464
    :cond_17
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-nez v3, :cond_18

    .line 469
    .line 470
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 471
    .line 472
    sub-int/2addr v3, v8

    .line 473
    add-int/2addr v3, v4

    .line 474
    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 475
    .line 476
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 477
    .line 478
    add-int/2addr v12, v8

    .line 479
    sub-int/2addr v12, v4

    .line 480
    add-int v4, v5, v10

    .line 481
    .line 482
    invoke-virtual {v9, v3, v5, v12, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 486
    .line 487
    .line 488
    :cond_18
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->e()Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    if-eqz v3, :cond_19

    .line 493
    .line 494
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-eqz v3, :cond_19

    .line 499
    .line 500
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 501
    .line 502
    sub-int v4, v3, v8

    .line 503
    .line 504
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 505
    .line 506
    iget v12, v13, Landroid/graphics/Rect;->bottom:I

    .line 507
    .line 508
    add-int/2addr v12, v10

    .line 509
    invoke-virtual {v9, v4, v5, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 513
    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_19
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    if-nez v3, :cond_1a

    .line 521
    .line 522
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_1a

    .line 527
    .line 528
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 529
    .line 530
    sub-int v4, v3, v8

    .line 531
    .line 532
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 533
    .line 534
    iget v12, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 535
    .line 536
    add-int/2addr v5, v12

    .line 537
    iget v12, v13, Landroid/graphics/Rect;->bottom:I

    .line 538
    .line 539
    add-int/2addr v12, v10

    .line 540
    sub-int/2addr v12, v2

    .line 541
    invoke-virtual {v9, v4, v5, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_1a
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-nez v3, :cond_1b

    .line 553
    .line 554
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    if-eqz v3, :cond_1b

    .line 559
    .line 560
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 561
    .line 562
    sub-int v4, v3, v8

    .line 563
    .line 564
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 565
    .line 566
    sub-int/2addr v5, v10

    .line 567
    add-int/2addr v5, v2

    .line 568
    iget v12, v13, Landroid/graphics/Rect;->bottom:I

    .line 569
    .line 570
    iget v14, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 571
    .line 572
    sub-int/2addr v12, v14

    .line 573
    invoke-virtual {v9, v4, v5, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 577
    .line 578
    .line 579
    goto :goto_a

    .line 580
    :cond_1b
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    if-nez v3, :cond_1c

    .line 585
    .line 586
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 587
    .line 588
    sub-int v4, v3, v8

    .line 589
    .line 590
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 591
    .line 592
    add-int/2addr v5, v2

    .line 593
    iget v12, v13, Landroid/graphics/Rect;->bottom:I

    .line 594
    .line 595
    add-int/2addr v12, v10

    .line 596
    sub-int/2addr v12, v2

    .line 597
    invoke-virtual {v9, v4, v5, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    .line 602
    .line 603
    :cond_1c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->e()Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-eqz v3, :cond_1d

    .line 608
    .line 609
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_1d

    .line 614
    .line 615
    iget v2, v13, Landroid/graphics/Rect;->right:I

    .line 616
    .line 617
    iget v3, v13, Landroid/graphics/Rect;->top:I

    .line 618
    .line 619
    add-int/2addr v8, v2

    .line 620
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    .line 621
    .line 622
    add-int/2addr v4, v10

    .line 623
    invoke-virtual {v9, v2, v3, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 627
    .line 628
    .line 629
    goto :goto_b

    .line 630
    :cond_1d
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-nez v3, :cond_1e

    .line 635
    .line 636
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-eqz v3, :cond_1e

    .line 641
    .line 642
    iget v3, v13, Landroid/graphics/Rect;->right:I

    .line 643
    .line 644
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 645
    .line 646
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 647
    .line 648
    add-int/2addr v4, v5

    .line 649
    add-int/2addr v8, v3

    .line 650
    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 651
    .line 652
    add-int/2addr v5, v10

    .line 653
    sub-int/2addr v5, v2

    .line 654
    invoke-virtual {v9, v3, v4, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    .line 659
    .line 660
    goto :goto_b

    .line 661
    :cond_1e
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    if-nez v3, :cond_1f

    .line 666
    .line 667
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-eqz v3, :cond_1f

    .line 672
    .line 673
    iget v3, v13, Landroid/graphics/Rect;->right:I

    .line 674
    .line 675
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 676
    .line 677
    sub-int/2addr v4, v10

    .line 678
    add-int/2addr v4, v2

    .line 679
    add-int/2addr v8, v3

    .line 680
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 681
    .line 682
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 683
    .line 684
    sub-int/2addr v2, v5

    .line 685
    invoke-virtual {v9, v3, v4, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 689
    .line 690
    .line 691
    goto :goto_b

    .line 692
    :cond_1f
    invoke-virtual {v7}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-nez v3, :cond_20

    .line 697
    .line 698
    iget v3, v13, Landroid/graphics/Rect;->right:I

    .line 699
    .line 700
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 701
    .line 702
    add-int/2addr v4, v2

    .line 703
    add-int/2addr v8, v3

    .line 704
    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 705
    .line 706
    add-int/2addr v5, v10

    .line 707
    sub-int/2addr v5, v2

    .line 708
    invoke-virtual {v9, v3, v4, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 712
    .line 713
    .line 714
    :cond_20
    :goto_b
    move-object/from16 v2, p2

    .line 715
    .line 716
    move v5, v6

    .line 717
    move/from16 v3, v16

    .line 718
    .line 719
    goto/16 :goto_0

    .line 720
    .line 721
    :cond_21
    new-instance v1, Ljava/lang/NullPointerException;

    .line 722
    .line 723
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 724
    .line 725
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    throw v1

    .line 729
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 730
    .line 731
    .line 732
    return-void
.end method

.method private final c(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    sub-int/2addr v5, v6

    .line 34
    iget v6, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 35
    .line 36
    :goto_0
    sub-int/2addr v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget v4, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget v6, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/4 v7, 0x0

    .line 52
    :goto_2
    if-ge v7, v6, :cond_14

    .line 53
    .line 54
    add-int/lit8 v8, v7, 0x1

    .line 55
    .line 56
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    if-eqz v9, :cond_6

    .line 63
    .line 64
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    if-eqz v9, :cond_5

    .line 69
    .line 70
    check-cast v9, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->m()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    if-nez v10, :cond_1

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    :cond_1
    iget-boolean v11, v0, Lcom/drake/brv/DefaultDecoration;->c:Z

    .line 80
    .line 81
    if-nez v11, :cond_2

    .line 82
    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    instance-of v11, v10, Ll1/d;

    .line 86
    .line 87
    if-eqz v11, :cond_2

    .line 88
    .line 89
    check-cast v10, Ll1/d;

    .line 90
    .line 91
    invoke-interface {v10}, Ll1/d;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_2

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_2
    iget-object v10, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 99
    .line 100
    const/4 v11, 0x1

    .line 101
    if-nez v10, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-interface {v10, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Ljava/lang/Boolean;

    .line 109
    .line 110
    if-nez v9, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    :goto_3
    if-nez v11, :cond_6

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    .line 121
    .line 122
    const-string v2, "null cannot be cast to non-null type com.drake.brv.BindingAdapter.BindingViewHolder"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_6
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    if-nez v10, :cond_7

    .line 137
    .line 138
    return-void

    .line 139
    :cond_7
    sget-object v11, Lcom/drake/brv/DefaultDecoration$a;->e:Lcom/drake/brv/DefaultDecoration$a$a;

    .line 140
    .line 141
    invoke-virtual {v11, v9, v10, v3}, Lcom/drake/brv/DefaultDecoration$a$a;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Lcom/drake/brv/DefaultDecoration$a;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    iget-object v10, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 146
    .line 147
    sget-object v11, Lcom/drake/brv/annotaion/DividerOrientation;->GRID:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 148
    .line 149
    if-eq v10, v11, :cond_9

    .line 150
    .line 151
    iget-boolean v10, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    .line 152
    .line 153
    if-nez v10, :cond_9

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    invoke-virtual {v9}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    goto :goto_4

    .line 162
    :cond_8
    invoke-virtual {v9}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    :goto_4
    if-eqz v10, :cond_9

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    iget-object v10, v0, Lcom/drake/brv/DefaultDecoration;->k:Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    if-nez v10, :cond_a

    .line 172
    .line 173
    :goto_5
    move v7, v8

    .line 174
    goto :goto_2

    .line 175
    :cond_a
    new-instance v11, Landroid/graphics/Rect;

    .line 176
    .line 177
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v7, v11}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 181
    .line 182
    .line 183
    const/4 v7, -0x1

    .line 184
    if-eqz v3, :cond_c

    .line 185
    .line 186
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 187
    .line 188
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-ne v13, v7, :cond_b

    .line 193
    .line 194
    iget v13, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 195
    .line 196
    :goto_6
    sub-int v13, v12, v13

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    goto :goto_6

    .line 204
    :cond_c
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 205
    .line 206
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-ne v12, v7, :cond_d

    .line 211
    .line 212
    iget v12, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 213
    .line 214
    :goto_7
    add-int/2addr v12, v13

    .line 215
    goto :goto_8

    .line 216
    :cond_d
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    goto :goto_7

    .line 221
    :goto_8
    if-eqz v3, :cond_f

    .line 222
    .line 223
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 224
    .line 225
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-ne v14, v7, :cond_e

    .line 230
    .line 231
    iget v14, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 232
    .line 233
    :goto_9
    add-int/2addr v14, v11

    .line 234
    goto :goto_b

    .line 235
    :cond_e
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    goto :goto_9

    .line 240
    :cond_f
    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    .line 241
    .line 242
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    if-ne v11, v7, :cond_10

    .line 247
    .line 248
    iget v11, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 249
    .line 250
    :goto_a
    sub-int v11, v14, v11

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_10
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    goto :goto_a

    .line 258
    :goto_b
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    if-eq v15, v7, :cond_11

    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->h()Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_11

    .line 269
    .line 270
    add-int/2addr v4, v5

    .line 271
    div-int/lit8 v4, v4, 0x2

    .line 272
    .line 273
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    div-int/lit8 v5, v5, 0x2

    .line 278
    .line 279
    sub-int v5, v4, v5

    .line 280
    .line 281
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    div-int/lit8 v7, v7, 0x2

    .line 286
    .line 287
    add-int/2addr v4, v7

    .line 288
    move/from16 v16, v5

    .line 289
    .line 290
    move v5, v4

    .line 291
    move/from16 v4, v16

    .line 292
    .line 293
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->g()Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-eqz v7, :cond_13

    .line 298
    .line 299
    if-eqz v3, :cond_12

    .line 300
    .line 301
    invoke-virtual {v9}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    goto :goto_c

    .line 306
    :cond_12
    invoke-virtual {v9}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    :goto_c
    if-eqz v7, :cond_13

    .line 311
    .line 312
    invoke-virtual {v10, v4, v13, v5, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 316
    .line 317
    .line 318
    :cond_13
    invoke-virtual {v10, v4, v11, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method private final d(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 21
    .line 22
    add-int/2addr v3, v4

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sub-int/2addr v4, v5

    .line 32
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 33
    .line 34
    :goto_0
    sub-int/2addr v4, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget v3, v0, Lcom/drake/brv/DefaultDecoration;->g:I

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, v0, Lcom/drake/brv/DefaultDecoration;->h:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_2
    if-ge v6, v5, :cond_e

    .line 51
    .line 52
    add-int/lit8 v7, v6, 0x1

    .line 53
    .line 54
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object v8, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    if-eqz v8, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    if-eqz v8, :cond_5

    .line 67
    .line 68
    check-cast v8, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->m()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    if-nez v9, :cond_1

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    :cond_1
    iget-boolean v10, v0, Lcom/drake/brv/DefaultDecoration;->c:Z

    .line 78
    .line 79
    if-nez v10, :cond_2

    .line 80
    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    instance-of v10, v9, Ll1/d;

    .line 84
    .line 85
    if-eqz v10, :cond_2

    .line 86
    .line 87
    check-cast v9, Ll1/d;

    .line 88
    .line 89
    invoke-interface {v9}, Ll1/d;->c()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    :goto_3
    move/from16 v11, p3

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_2
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    .line 99
    .line 100
    const/4 v10, 0x1

    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_3
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Ljava/lang/Boolean;

    .line 109
    .line 110
    if-nez v8, :cond_4

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    :goto_4
    if-nez v10, :cond_6

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    .line 121
    .line 122
    const-string v2, "null cannot be cast to non-null type com.drake.brv.BindingAdapter.BindingViewHolder"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_6
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-nez v9, :cond_7

    .line 137
    .line 138
    return-void

    .line 139
    :cond_7
    sget-object v10, Lcom/drake/brv/DefaultDecoration$a;->e:Lcom/drake/brv/DefaultDecoration$a$a;

    .line 140
    .line 141
    move/from16 v11, p3

    .line 142
    .line 143
    invoke-virtual {v10, v8, v9, v11}, Lcom/drake/brv/DefaultDecoration$a$a;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Lcom/drake/brv/DefaultDecoration$a;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 148
    .line 149
    sget-object v10, Lcom/drake/brv/annotaion/DividerOrientation;->GRID:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 150
    .line 151
    if-eq v9, v10, :cond_8

    .line 152
    .line 153
    iget-boolean v9, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    .line 154
    .line 155
    if-nez v9, :cond_8

    .line 156
    .line 157
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_8

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->k:Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    if-nez v9, :cond_9

    .line 167
    .line 168
    :goto_5
    move v6, v7

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    new-instance v10, Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    const/4 v13, -0x1

    .line 183
    if-ne v12, v13, :cond_a

    .line 184
    .line 185
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    iget v14, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 188
    .line 189
    :goto_6
    add-int/2addr v12, v14

    .line 190
    goto :goto_7

    .line 191
    :cond_a
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 192
    .line 193
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    goto :goto_6

    .line 198
    :goto_7
    iget v14, v10, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 201
    .line 202
    int-to-float v10, v10

    .line 203
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    add-float/2addr v10, v6

    .line 208
    invoke-static {v10}, Lbt/a;->c(F)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-ne v10, v13, :cond_b

    .line 217
    .line 218
    iget v10, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 219
    .line 220
    :goto_8
    sub-int v10, v6, v10

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_b
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    goto :goto_8

    .line 228
    :goto_9
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    if-eq v15, v13, :cond_c

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->h()Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-nez v13, :cond_c

    .line 239
    .line 240
    add-int/2addr v3, v4

    .line 241
    div-int/lit8 v3, v3, 0x2

    .line 242
    .line 243
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    div-int/lit8 v4, v4, 0x2

    .line 248
    .line 249
    sub-int v4, v3, v4

    .line 250
    .line 251
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    div-int/lit8 v13, v13, 0x2

    .line 256
    .line 257
    add-int/2addr v3, v13

    .line 258
    move/from16 v16, v4

    .line 259
    .line 260
    move v4, v3

    .line 261
    move/from16 v3, v16

    .line 262
    .line 263
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->g()Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-eqz v13, :cond_d

    .line 268
    .line 269
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_d

    .line 274
    .line 275
    invoke-virtual {v9, v14, v3, v12, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    .line 280
    .line 281
    :cond_d
    invoke-virtual {v9, v10, v3, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method private final i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/DefaultDecoration;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/DefaultDecoration;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/DefaultDecoration;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "outRect"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "view"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "parent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "state"

    move-object/from16 v5, p4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v6, v0, Lcom/drake/brv/DefaultDecoration;->l:Lkotlin/jvm/functions/Function1;

    if-nez v6, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_42

    check-cast v7, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 4
    invoke-virtual {v7}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->m()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    .line 5
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/drake/brv/DefaultDecoration;->f()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v8, :cond_3

    instance-of v9, v8, Ll1/d;

    if-eqz v9, :cond_3

    check-cast v8, Ll1/d;

    invoke-interface {v8}, Ll1/d;->c()Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    .line 7
    :cond_4
    :goto_0
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    return-void

    .line 8
    :cond_5
    iget-object v6, v0, Lcom/drake/brv/DefaultDecoration;->k:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 9
    iget v7, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-eq v7, v3, :cond_7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-eq v7, v3, :cond_8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    goto :goto_1

    .line 12
    :cond_8
    iget v7, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    :goto_1
    if-nez v6, :cond_9

    .line 13
    iget v3, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    goto :goto_2

    .line 14
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-eq v8, v3, :cond_a

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_2

    .line 15
    :cond_a
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-eq v8, v3, :cond_b

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_2

    .line 16
    :cond_b
    iget v3, v0, Lcom/drake/brv/DefaultDecoration;->f:I

    .line 17
    :goto_2
    invoke-direct {v0, v4}, Lcom/drake/brv/DefaultDecoration;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v6

    .line 18
    sget-object v8, Lcom/drake/brv/DefaultDecoration$a;->e:Lcom/drake/brv/DefaultDecoration$a$a;

    invoke-virtual {v8, v2, v4, v6}, Lcom/drake/brv/DefaultDecoration$a$a;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Lcom/drake/brv/DefaultDecoration$a;

    move-result-object v8

    .line 19
    invoke-direct {v0, v4}, Lcom/drake/brv/DefaultDecoration;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    sget-object v10, Lcom/drake/brv/annotaion/DividerOrientation;->GRID:Lcom/drake/brv/annotaion/DividerOrientation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_1b

    .line 21
    instance-of v9, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v9, :cond_c

    move-object v10, v4

    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    sget-object v13, Lcom/drake/brv/annotaion/DividerOrientation;->HORIZONTAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-eq v10, v13, :cond_1b

    :cond_c
    if-eqz v9, :cond_d

    .line 22
    move-object v9, v4

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v9

    if-ne v9, v11, :cond_d

    iget-object v9, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    sget-object v10, Lcom/drake/brv/annotaion/DividerOrientation;->VERTICAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-ne v9, v10, :cond_d

    goto/16 :goto_8

    .line 23
    :cond_d
    iget-object v2, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    sget-object v4, Lcom/drake/brv/annotaion/DividerOrientation;->HORIZONTAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-ne v2, v4, :cond_16

    if-eqz v6, :cond_10

    .line 24
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v2, :cond_e

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    move v2, v12

    goto :goto_4

    .line 25
    :cond_10
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v2, :cond_f

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_11
    :goto_3
    move v2, v7

    :goto_4
    if-eqz v6, :cond_13

    .line 26
    iget-boolean v3, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v3, :cond_12

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_5

    :cond_12
    move v7, v12

    goto :goto_5

    .line 27
    :cond_13
    iget-boolean v3, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v3, :cond_14

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    move-result v3

    if-nez v3, :cond_12

    .line 28
    :cond_15
    :goto_5
    invoke-virtual {v1, v12, v2, v12, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_16

    .line 29
    :cond_16
    sget-object v4, Lcom/drake/brv/annotaion/DividerOrientation;->VERTICAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-ne v2, v4, :cond_41

    .line 30
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v2, :cond_17

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_6

    :cond_17
    move v2, v12

    .line 31
    :goto_6
    iget-boolean v4, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v4, :cond_18

    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_18
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_7

    :cond_19
    move v3, v12

    .line 32
    :cond_1a
    :goto_7
    invoke-virtual {v1, v2, v12, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_16

    .line 33
    :cond_1b
    :goto_8
    instance-of v9, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v9, :cond_1c

    move-object v10, v4

    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v10

    goto :goto_9

    .line 34
    :cond_1c
    instance-of v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v10, :cond_1d

    move-object v10, v4

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v10

    goto :goto_9

    :cond_1d
    move v10, v11

    :goto_9
    if-eqz v9, :cond_1e

    .line 35
    move-object v13, v4

    check-cast v13, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v13

    goto :goto_a

    .line 36
    :cond_1e
    instance-of v13, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v13, :cond_1f

    move-object v13, v4

    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v13

    goto :goto_a

    :cond_1f
    move v13, v11

    :goto_a
    if-eqz v9, :cond_20

    .line 37
    move-object v14, v4

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v14, v5, v13}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    add-int/2addr v5, v11

    goto :goto_b

    .line 38
    :cond_20
    instance-of v14, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v14, :cond_21

    invoke-virtual/range {p4 .. p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    int-to-float v5, v5

    int-to-float v14, v13

    div-float/2addr v5, v14

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v5, v14

    float-to-int v5, v5

    goto :goto_b

    :cond_21
    move v5, v11

    :goto_b
    if-eqz v9, :cond_22

    .line 39
    move-object v14, v4

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v14

    invoke-virtual {v14, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v14

    goto :goto_c

    .line 40
    :cond_22
    instance-of v14, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v14, :cond_25

    .line 41
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_23

    return-void

    .line 42
    :cond_23
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    if-eqz v14, :cond_24

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v14

    goto :goto_c

    :cond_24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    move v14, v12

    :goto_c
    if-eqz v9, :cond_26

    .line 43
    move-object v15, v4

    check-cast v15, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v15

    invoke-virtual {v15, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v15

    move v12, v11

    goto :goto_d

    .line 44
    :cond_26
    instance-of v15, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v15, :cond_27

    add-int/lit8 v15, v2, 0x1

    int-to-float v15, v15

    int-to-float v12, v13

    div-float/2addr v15, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    float-to-int v11, v11

    const/4 v12, 0x1

    add-int/lit8 v15, v11, -0x1

    goto :goto_d

    :cond_27
    move v12, v11

    const/4 v15, 0x0

    :goto_d
    if-eqz v9, :cond_28

    .line 45
    move-object v9, v4

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    goto :goto_e

    :cond_28
    move v2, v12

    .line 46
    :goto_e
    iget-boolean v9, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v9, :cond_29

    if-ne v10, v12, :cond_29

    mul-int v11, v14, v3

    div-int/2addr v11, v13

    :goto_f
    sub-int v11, v3, v11

    goto :goto_10

    .line 47
    :cond_29
    iget-boolean v11, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v11, :cond_2a

    if-nez v10, :cond_2a

    mul-int v11, v14, v3

    div-int/2addr v11, v13

    goto :goto_f

    :cond_2a
    mul-int v11, v14, v3

    .line 48
    div-int/2addr v11, v13

    :goto_10
    if-eqz v9, :cond_2b

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b

    add-int/2addr v14, v2

    mul-int/2addr v14, v3

    .line 49
    div-int/2addr v14, v13

    goto :goto_11

    .line 50
    :cond_2b
    iget-boolean v12, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v12, :cond_2c

    if-nez v10, :cond_2c

    add-int/2addr v14, v2

    mul-int/2addr v14, v3

    div-int/2addr v14, v13

    goto :goto_11

    :cond_2c
    add-int/2addr v14, v2

    mul-int/2addr v14, v3

    .line 51
    div-int/2addr v14, v13

    sub-int v14, v3, v14

    .line 52
    :goto_11
    instance-of v2, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_2f

    const/4 v4, 0x1

    if-ne v10, v4, :cond_2e

    .line 53
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->d()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-boolean v4, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v4, :cond_2d

    move v4, v7

    goto :goto_13

    :cond_2d
    const/4 v4, 0x0

    goto :goto_13

    .line 54
    :cond_2e
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->b()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-boolean v4, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v4, :cond_2d

    move v4, v3

    goto :goto_13

    .line 55
    :cond_2f
    iget-boolean v4, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    if-eq v10, v4, :cond_31

    :cond_30
    if-eqz v9, :cond_33

    if-nez v10, :cond_33

    :cond_31
    if-eqz v6, :cond_32

    add-int/lit8 v4, v15, 0x1

    mul-int/2addr v4, v7

    .line 56
    div-int/2addr v4, v5

    goto :goto_13

    :cond_32
    mul-int v4, v15, v7

    .line 57
    div-int/2addr v4, v5

    :goto_12
    sub-int v4, v7, v4

    goto :goto_13

    :cond_33
    if-eqz v6, :cond_34

    add-int/lit8 v4, v15, 0x1

    mul-int/2addr v4, v7

    .line 58
    div-int/2addr v4, v5

    goto :goto_12

    :cond_34
    mul-int v4, v15, v7

    .line 59
    div-int/2addr v4, v5

    :goto_13
    if-eqz v2, :cond_37

    const/4 v2, 0x1

    if-ne v10, v2, :cond_36

    .line 60
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v2, :cond_35

    goto :goto_15

    :cond_35
    const/4 v7, 0x0

    goto :goto_15

    .line 61
    :cond_36
    invoke-virtual {v8}, Lcom/drake/brv/DefaultDecoration$a;->c()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v2, :cond_35

    move v7, v3

    goto :goto_15

    .line 62
    :cond_37
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->a:Z

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    if-eq v10, v2, :cond_39

    .line 63
    :cond_38
    iget-boolean v2, v0, Lcom/drake/brv/DefaultDecoration;->b:Z

    if-eqz v2, :cond_3b

    if-nez v10, :cond_3b

    :cond_39
    if-eqz v6, :cond_3a

    mul-int/2addr v15, v7

    .line 64
    div-int/2addr v15, v5

    :goto_14
    sub-int/2addr v7, v15

    goto :goto_15

    :cond_3a
    const/4 v2, 0x1

    add-int/2addr v15, v2

    mul-int/2addr v15, v7

    .line 65
    div-int v7, v15, v5

    goto :goto_15

    :cond_3b
    const/4 v2, 0x1

    if-eqz v6, :cond_3c

    mul-int/2addr v15, v7

    .line 66
    div-int v7, v15, v5

    goto :goto_15

    :cond_3c
    add-int/2addr v15, v2

    mul-int/2addr v15, v7

    .line 67
    div-int/2addr v15, v5

    goto :goto_14

    .line 68
    :cond_3d
    :goto_15
    iget-object v2, v0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    sget-object v3, Lcom/drake/brv/annotaion/DividerOrientation;->VERTICAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-ne v2, v3, :cond_3e

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v3, v14, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_16

    :cond_3e
    const/4 v3, 0x0

    .line 69
    sget-object v5, Lcom/drake/brv/annotaion/DividerOrientation;->HORIZONTAL:Lcom/drake/brv/annotaion/DividerOrientation;

    if-ne v2, v5, :cond_3f

    invoke-virtual {v1, v3, v11, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_16

    :cond_3f
    const/4 v2, 0x1

    if-ne v10, v2, :cond_40

    .line 70
    invoke-virtual {v1, v11, v4, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_16

    :cond_40
    if-nez v10, :cond_41

    .line 71
    invoke-virtual {v1, v4, v11, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    :cond_41
    :goto_16
    return-void

    .line 72
    :cond_42
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.drake.brv.BindingAdapter.BindingViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/DefaultDecoration;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/drake/brv/DefaultDecoration;->k:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p3}, Lcom/drake/brv/DefaultDecoration;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3}, Lcom/drake/brv/DefaultDecoration;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget-object v0, p0, Lcom/drake/brv/DefaultDecoration;->d:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 35
    .line 36
    sget-object v1, Lcom/drake/brv/DefaultDecoration$b;->$EnumSwitchMapping$0:[I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aget v0, v1, v0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/drake/brv/DefaultDecoration;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/drake/brv/DefaultDecoration;->d(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/drake/brv/DefaultDecoration;->c(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_0
    return-void
.end method
