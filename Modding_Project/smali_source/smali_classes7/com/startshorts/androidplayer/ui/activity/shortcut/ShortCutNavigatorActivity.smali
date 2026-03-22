.class public final Lcom/startshorts/androidplayer/ui/activity/shortcut/ShortCutNavigatorActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
.source "ShortCutNavigatorActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    sget-object v0, Lfk/c;->a:Lfk/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v2, v3, v1}, Lfk/c;->c(Lfk/c;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Laf/i;->a:Laf/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Laf/i;->g()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lud/a;->a:Lud/a;

    .line 23
    .line 24
    const-string v2, "uninstall_click"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lud/a;->Z(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lfk/a;->g(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v3, v3}, Lfk/a;->i(ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lfk/a;->f(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 74
    .line 75
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 76
    .line 77
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private final C()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v1, "actType"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    const-string v0, "/shortcut"

    .line 27
    .line 28
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_a

    .line 33
    .line 34
    sget-object v0, Lfk/c0;->a:Lfk/c0;

    .line 35
    .line 36
    invoke-virtual {v0}, Lfk/c0;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x1

    .line 45
    const-string v4, "click_to"

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 50
    .line 51
    new-instance v7, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v0, "1"

    .line 57
    .line 58
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    const/4 v10, 0x4

    .line 64
    const/4 v11, 0x0

    .line 65
    const-string v6, "uninstall_click"

    .line 66
    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lud/b;->a:Lud/b;

    .line 73
    .line 74
    invoke-virtual {v0}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    sget-object v1, Lrf/c;->a:Lrf/c;

    .line 82
    .line 83
    invoke-virtual {v1}, Lrf/c;->a()V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 87
    .line 88
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "uninstall_click"

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v3, 0x3

    .line 104
    :goto_1
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 121
    .line 122
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayId()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayCode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getCoverId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getUpack()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_5
    invoke-virtual {v0}, Lfk/c0;->e()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 179
    .line 180
    new-instance v7, Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v0, "2"

    .line 186
    .line 187
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    const/4 v10, 0x4

    .line 193
    const/4 v11, 0x0

    .line 194
    const-string v6, "uninstall_click"

    .line 195
    .line 196
    const-wide/16 v8, 0x0

    .line 197
    .line 198
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 202
    .line 203
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Lrf/c;->z(Z)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_6
    invoke-virtual {v0}, Lfk/c0;->f()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_7

    .line 220
    .line 221
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 222
    .line 223
    new-instance v7, Landroid/os/Bundle;

    .line 224
    .line 225
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v0, "3"

    .line 229
    .line 230
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 234
    .line 235
    const/4 v10, 0x4

    .line 236
    const/4 v11, 0x0

    .line 237
    const-string v6, "uninstall_click"

    .line 238
    .line 239
    const-wide/16 v8, 0x0

    .line 240
    .line 241
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 245
    .line 246
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Lrf/c;->B(Z)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_7
    invoke-virtual {v0}, Lfk/c0;->c()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_8

    .line 263
    .line 264
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 265
    .line 266
    new-instance v7, Landroid/os/Bundle;

    .line 267
    .line 268
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v0, "4"

    .line 272
    .line 273
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 277
    .line 278
    const/4 v10, 0x4

    .line 279
    const/4 v11, 0x0

    .line 280
    const-string v6, "uninstall_click"

    .line 281
    .line 282
    const-wide/16 v8, 0x0

    .line 283
    .line 284
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 288
    .line 289
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v3}, Lrf/c;->x(Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_8
    invoke-virtual {v0}, Lfk/c0;->a()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_9

    .line 305
    .line 306
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 307
    .line 308
    new-instance v7, Landroid/os/Bundle;

    .line 309
    .line 310
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v0, "5"

    .line 314
    .line 315
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 319
    .line 320
    const/4 v10, 0x4

    .line 321
    const/4 v11, 0x0

    .line 322
    const-string v6, "uninstall_click"

    .line 323
    .line 324
    const-wide/16 v8, 0x0

    .line 325
    .line 326
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 330
    .line 331
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v3}, Lrf/c;->G(Z)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_9
    invoke-virtual {v0}, Lfk/c0;->d()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_a

    .line 347
    .line 348
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 349
    .line 350
    new-instance v7, Landroid/os/Bundle;

    .line 351
    .line 352
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v0, "6"

    .line 356
    .line 357
    invoke-virtual {v7, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 361
    .line 362
    const/4 v10, 0x4

    .line 363
    const/4 v11, 0x0

    .line 364
    const-string v6, "uninstall_click"

    .line 365
    .line 366
    const-wide/16 v8, 0x0

    .line 367
    .line 368
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 372
    .line 373
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v3}, Lrf/c;->E(Z)V

    .line 377
    .line 378
    .line 379
    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "shortCutNavigatorActivity onCreate"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/shortcut/ShortCutNavigatorActivity;->C()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/shortcut/ShortCutNavigatorActivity;->B()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
