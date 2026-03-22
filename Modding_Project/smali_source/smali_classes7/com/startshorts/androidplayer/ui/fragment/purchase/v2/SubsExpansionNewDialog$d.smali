.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;
.super Lyd/d;
.source "SubsExpansionNewDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsExpansionNewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$initClickListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,624:1\n774#2:625\n865#2,2:626\n1611#2,9:628\n1863#2:637\n1864#2:639\n1620#2:640\n1#3:638\n*S KotlinDebug\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$initClickListener$1\n*L\n424#1:625\n424#1:626,2\n424#1:628,9\n424#1:637\n424#1:639\n424#1:640\n424#1:638\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->a0()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_b

    .line 17
    .line 18
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_a

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->a0()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_b

    .line 31
    .line 32
    sget-object v3, Lud/a;->a:Lud/a;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v3, v4}, Lud/a;->p0(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Y()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object v13, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v13, v4

    .line 56
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Y()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v14, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v14, v4

    .line 73
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Y()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v15, v3

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v15, v4

    .line 90
    :goto_2
    sget-object v3, Lfk/q;->a:Lfk/q;

    .line 91
    .line 92
    invoke-virtual {v3}, Lfk/q;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3, v5}, Lfk/q;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v5, "upack"

    .line 101
    .line 102
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v21

    .line 110
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 129
    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCountryCode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    move-object/from16 v20, v1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    move-object/from16 v20, v4

    .line 140
    .line 141
    :goto_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    check-cast v1, Ljava/lang/Iterable;

    .line 148
    .line 149
    new-instance v3, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    move-object v5, v4

    .line 169
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    sget-object v6, Lqf/e;->a:Lqf/e;

    .line 176
    .line 177
    invoke-virtual {v6}, Lqf/e;->a()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-nez v5, :cond_5

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eq v5, v6, :cond_4

    .line 189
    .line 190
    :goto_5
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :cond_7
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_8

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    if-eqz v4, :cond_7

    .line 220
    .line 221
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_8
    const/16 v29, 0x3e

    .line 226
    .line 227
    const/16 v30, 0x0

    .line 228
    .line 229
    const-string v23, ","

    .line 230
    .line 231
    const/16 v24, 0x0

    .line 232
    .line 233
    const/16 v25, 0x0

    .line 234
    .line 235
    const/16 v26, 0x0

    .line 236
    .line 237
    const/16 v27, 0x0

    .line 238
    .line 239
    const/16 v28, 0x0

    .line 240
    .line 241
    move-object/from16 v22, v1

    .line 242
    .line 243
    invoke-static/range {v22 .. v30}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    :cond_9
    move-object/from16 v22, v4

    .line 248
    .line 249
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->x1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v24

    .line 259
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->x1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v25

    .line 267
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getEv()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v27

    .line 271
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getH5JsonParam()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v28

    .line 275
    new-instance v1, Lfk/s$a;

    .line 276
    .line 277
    move-object v5, v1

    .line 278
    const/4 v2, 0x0

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v26

    .line 283
    const/16 v29, 0x3052

    .line 284
    .line 285
    const/16 v30, 0x0

    .line 286
    .line 287
    const/4 v6, 0x2

    .line 288
    const/4 v7, 0x0

    .line 289
    const/4 v10, 0x0

    .line 290
    const/4 v11, 0x0

    .line 291
    const/4 v12, 0x0

    .line 292
    const/16 v16, 0x0

    .line 293
    .line 294
    const/16 v18, 0x0

    .line 295
    .line 296
    const/16 v19, 0x0

    .line 297
    .line 298
    const/16 v23, 0x0

    .line 299
    .line 300
    invoke-direct/range {v5 .. v30}, Lfk/s$a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    sget-object v2, Lfk/s;->a:Lfk/s;

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Lfk/s;->f(Lfk/s$a;)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_a
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    new-instance v14, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 314
    .line 315
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Y()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    const/16 v1, 0xff0

    .line 328
    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    const/4 v8, 0x0

    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v10, 0x0

    .line 335
    const/4 v11, 0x0

    .line 336
    const/4 v12, 0x0

    .line 337
    const/4 v13, 0x0

    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    move-object v2, v14

    .line 341
    move-object/from16 v31, v14

    .line 342
    .line 343
    move-object/from16 v14, v17

    .line 344
    .line 345
    move-object/from16 v32, v15

    .line 346
    .line 347
    move v15, v1

    .line 348
    invoke-direct/range {v2 .. v16}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 349
    .line 350
    .line 351
    move-object/from16 v2, v31

    .line 352
    .line 353
    move-object/from16 v1, v32

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 356
    .line 357
    .line 358
    :cond_b
    :goto_7
    return-void
.end method
