.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;I)V
    .locals 22

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
    const-string v1, "d"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "requireContext(...)"

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_0
    sget-object v1, Lng/e;->a:Lng/e;

    .line 30
    .line 31
    const-string v2, "faqUrl"

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    const-string v1, "https://previewpage.shorttv.live/h5/FULL/1937404883520479233/1750748294"

    .line 48
    .line 49
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v3, "android.intent.action.VIEW"

    .line 52
    .line 53
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    const/high16 v1, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 66
    .line 67
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_1
    sget-object v1, Luh/i0;->a:Luh/i0;

    .line 77
    .line 78
    invoke-virtual {v1}, Luh/i0;->b()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 85
    .line 86
    const/4 v9, 0x6

    .line 87
    const/4 v10, 0x0

    .line 88
    const-string v5, "me_download_click"

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .line 93
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->v:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$a;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$a;->a(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_2
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 113
    .line 114
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/a;->g()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->a()Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 134
    .line 135
    const/high16 v7, 0x42300000    # 44.0f

    .line 136
    .line 137
    invoke-static {v7}, Ljk/g;->a(F)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    const-string v8, "fragment_container_top_margin"

    .line 142
    .line 143
    invoke-direct {v6, v8, v7}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;-><init>(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const/4 v7, 0x2

    .line 147
    new-array v7, v7, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 148
    .line 149
    aput-object v5, v7, v2

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    aput-object v6, v7, v2

    .line 153
    .line 154
    invoke-virtual {v1, v4, v3, v7}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_3
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 160
    .line 161
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v3, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/a;->k()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    new-array v2, v2, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 177
    .line 178
    invoke-virtual {v1, v4, v3, v2}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :pswitch_4
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 184
    .line 185
    const/4 v10, 0x6

    .line 186
    const/4 v11, 0x0

    .line 187
    const-string v6, "language_click"

    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    const-wide/16 v8, 0x0

    .line 191
    .line 192
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 196
    .line 197
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 198
    .line 199
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v3, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/a;->a()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-array v2, v2, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 213
    .line 214
    invoke-virtual {v1, v4, v3, v2}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_5
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 220
    .line 221
    const/4 v10, 0x6

    .line 222
    const/4 v11, 0x0

    .line 223
    const-string v6, "feedback_click"

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    const-wide/16 v8, 0x0

    .line 227
    .line 228
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 232
    .line 233
    const/4 v2, 0x0

    .line 234
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->l(Lyd/f;)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 238
    .line 239
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 249
    .line 250
    sget v4, Lcom/startshorts/androidplayer/R$string;->feedback_email:I

    .line 251
    .line 252
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    const-string v4, "getString(...)"

    .line 257
    .line 258
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 262
    .line 263
    sget v6, Lcom/startshorts/androidplayer/R$string;->profile_fragment_feedback:I

    .line 264
    .line 265
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v6, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 273
    .line 274
    sget v7, Lcom/startshorts/androidplayer/R$string;->profile_fragment_feedback_content:I

    .line 275
    .line 276
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 277
    .line 278
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    sget-object v9, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 283
    .line 284
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v12, "Android-"

    .line 294
    .line 295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->O()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const/16 v12, 0x2c

    .line 306
    .line 307
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->C()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    filled-new-array {v8, v10, v9}, [Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v6, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/startshorts/androidplayer/utils/IntentUtil;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_0

    .line 336
    :pswitch_6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 337
    .line 338
    new-instance v9, Landroid/os/Bundle;

    .line 339
    .line 340
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v2, "scene"

    .line 344
    .line 345
    const-string v4, "profile_reward"

    .line 346
    .line 347
    invoke-virtual {v9, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 351
    .line 352
    const/4 v12, 0x4

    .line 353
    const/4 v13, 0x0

    .line 354
    const-string v8, "reward_click"

    .line 355
    .line 356
    const-wide/16 v10, 0x0

    .line 357
    .line 358
    move-object v7, v1

    .line 359
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    new-instance v9, Landroid/os/Bundle;

    .line 363
    .line 364
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string v8, "reward_show"

    .line 371
    .line 372
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    sget-object v14, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 376
    .line 377
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 378
    .line 379
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v15

    .line 383
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const/16 v20, 0x18

    .line 387
    .line 388
    const/16 v21, 0x0

    .line 389
    .line 390
    const-string v16, "profile_reward"

    .line 391
    .line 392
    const/16 v17, 0x1

    .line 393
    .line 394
    const/16 v18, 0x0

    .line 395
    .line 396
    const/16 v19, 0x0

    .line 397
    .line 398
    invoke-static/range {v14 .. v21}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :cond_1
    :goto_0
    return-void

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
