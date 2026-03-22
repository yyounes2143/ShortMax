.class public final Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "SubsTypeAdapter3.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsTypeAdapter3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsTypeAdapter3.kt\ncom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,145:1\n470#2:146\n470#2:147\n*S KotlinDebug\n*F\n+ 1 SubsTypeAdapter3.kt\ncom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3\n*L\n44#1:146\n45#1:147\n*E\n"
    }
.end annotation


# instance fields
.field private l:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->n:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZLcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->v(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZLcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->u(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "I)V"
        }
    .end annotation

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
    sget v3, Lcom/startshorts/androidplayer/R$id;->card_name_tv:I

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "#FFEACB"

    .line 31
    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const-string v5, "#F3AD63"

    .line 37
    .line 38
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    if-eq v3, v4, :cond_3

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    if-eq v3, v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x4

    .line 56
    if-eq v3, v5, :cond_1

    .line 57
    .line 58
    const/4 v5, 0x5

    .line 59
    if-eq v3, v5, :cond_3

    .line 60
    .line 61
    const/4 v5, 0x6

    .line 62
    if-eq v3, v5, :cond_2

    .line 63
    .line 64
    const/4 v5, 0x7

    .line 65
    if-eq v3, v5, :cond_1

    .line 66
    .line 67
    const-string v3, ""

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 71
    .line 72
    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 80
    .line 81
    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 89
    .line 90
    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 91
    .line 92
    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/16 v6, 0x8

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    if-nez v5, :cond_4

    .line 104
    .line 105
    sget v3, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 106
    .line 107
    invoke-virtual {v1, v3, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    sget v5, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 112
    .line 113
    invoke-virtual {v1, v5, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    sget v3, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 117
    .line 118
    invoke-virtual {v1, v3, v7}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 119
    .line 120
    .line 121
    :goto_1
    sget v3, Lcom/startshorts/androidplayer/R$id;->renew_price_tv:I

    .line 122
    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v1, v3, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    sget v3, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 143
    .line 144
    if-eqz v3, :cond_5

    .line 145
    .line 146
    invoke-static {v3, v4}, Ljk/y;->i(Landroid/widget/TextView;Z)V

    .line 147
    .line 148
    .line 149
    :cond_5
    sget v3, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v1, v3, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    sget v3, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 159
    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v1, v3, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    sget v3, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 168
    .line 169
    invoke-virtual {v1, v3, v7}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_6
    sget v3, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 174
    .line 175
    invoke-virtual {v1, v3, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 176
    .line 177
    .line 178
    sget v3, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 179
    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v1, v3, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    iget v3, v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->n:I

    .line 188
    .line 189
    if-ltz v3, :cond_f

    .line 190
    .line 191
    move/from16 v5, p3

    .line 192
    .line 193
    if-eq v3, v5, :cond_7

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :cond_7
    sget v3, Lcom/startshorts/androidplayer/R$id;->v_subs_detail_streamer:I

    .line 198
    .line 199
    invoke-virtual {v1, v3, v7}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 200
    .line 201
    .line 202
    sget v3, Lcom/startshorts/androidplayer/R$id;->v_subs_detail_streamer:I

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 209
    .line 210
    if-eqz v3, :cond_8

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->y()V

    .line 213
    .line 214
    .line 215
    :cond_8
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N0()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    if-nez v5, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    move v4, v7

    .line 231
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    const-wide/16 v8, 0x0

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 240
    .line 241
    .line 242
    move-result-wide v10

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    move-wide v10, v8

    .line 245
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 246
    .line 247
    .line 248
    move-result-wide v12

    .line 249
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 252
    .line 253
    .line 254
    move-result-wide v14

    .line 255
    sget-object v3, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->f()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    const/16 v5, 0x3e8

    .line 262
    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    sub-long/2addr v12, v14

    .line 272
    int-to-long v10, v5

    .line 273
    div-long/2addr v12, v10

    .line 274
    goto :goto_5

    .line 275
    :cond_b
    sub-long/2addr v10, v14

    .line 276
    int-to-long v12, v5

    .line 277
    div-long v12, v10, v12

    .line 278
    .line 279
    :goto_5
    cmp-long v3, v12, v8

    .line 280
    .line 281
    if-lez v3, :cond_c

    .line 282
    .line 283
    sget v3, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 284
    .line 285
    invoke-virtual {v1, v3, v7}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->q()V

    .line 289
    .line 290
    .line 291
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 292
    .line 293
    long-to-int v5, v12

    .line 294
    new-instance v6, Lqd/c;

    .line 295
    .line 296
    invoke-direct {v6, v2, v1}, Lqd/c;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 297
    .line 298
    .line 299
    new-instance v7, Lqd/d;

    .line 300
    .line 301
    invoke-direct {v7, v2, v4, v1, v0}, Lqd/d;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZLcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v5, v6, v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->l:Lkotlinx/coroutines/r;

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_c
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 312
    .line 313
    invoke-virtual {v3, v2}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-static/range {p2 .. p2}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-lez v2, :cond_e

    .line 322
    .line 323
    if-eqz v3, :cond_d

    .line 324
    .line 325
    if-eqz v4, :cond_e

    .line 326
    .line 327
    :cond_d
    sget v3, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 328
    .line 329
    invoke-virtual {v1, v3, v7}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 330
    .line 331
    .line 332
    sget v3, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 333
    .line 334
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 335
    .line 336
    sget v5, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 337
    .line 338
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v4, v5, v2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_e
    sget v2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 355
    .line 356
    invoke-virtual {v1, v2, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 357
    .line 358
    .line 359
    :goto_6
    return-void

    .line 360
    :cond_f
    :goto_7
    sget v2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 361
    .line 362
    invoke-virtual {v1, v2, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 363
    .line 364
    .line 365
    sget v2, Lcom/startshorts/androidplayer/R$id;->v_subs_detail_streamer:I

    .line 366
    .line 367
    invoke-virtual {v1, v2, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method private static final u(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;I)Lkotlin/Unit;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    int-to-long v2, p2

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object p2, Lqf/h;->a:Lqf/h;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-lez p0, :cond_0

    .line 30
    .line 31
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p2, v1, p0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p2, " | "

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_0
    sget p0, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method private static final v(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZLcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 21
    .line 22
    .line 23
    sget p1, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 24
    .line 25
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, v1, p0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2, p1, p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget p0, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 46
    .line 47
    const/16 p1, 0x8

    .line 48
    .line 49
    invoke-virtual {p2, p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p0, p3, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->m:Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->p(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 0

    .line 1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro3:I

    .line 2
    .line 3
    return p1
.end method

.method protected p(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p4, "holder"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "data"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->l:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "ReproductionSubsView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->l:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->n:I

    .line 2
    .line 3
    return-void
.end method
