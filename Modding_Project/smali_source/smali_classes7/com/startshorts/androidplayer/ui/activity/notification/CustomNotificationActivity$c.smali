.class public final Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;
.super Lyd/d;
.source "CustomNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

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
    .locals 10

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "mNotification"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getNotificationId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->c(I)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 36
    .line 37
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 41
    .line 42
    new-instance v5, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 48
    .line 49
    const-string v4, "push_name"

    .line 50
    .line 51
    const-string v6, "customize"

    .line 52
    .line 53
    invoke-virtual {v5, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v4, v1

    .line 66
    :cond_1
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-lez v4, :cond_3

    .line 75
    .line 76
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v4, v1

    .line 86
    :cond_2
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v6, "reel_id"

    .line 95
    .line 96
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_4

    .line 104
    .line 105
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v4, v1

    .line 109
    :cond_4
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v6, "push_id"

    .line 118
    .line 119
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-nez v4, :cond_5

    .line 127
    .line 128
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v4, v1

    .line 132
    :cond_5
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getTitle()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v6, "title"

    .line 141
    .line 142
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v0, v1

    .line 155
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getContent()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v4, "content"

    .line 164
    .line 165
    invoke-virtual {v5, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    const/4 v8, 0x4

    .line 171
    const/4 v9, 0x0

    .line 172
    const-string v4, "push_open"

    .line 173
    .line 174
    const-wide/16 v6, 0x0

    .line 175
    .line 176
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-nez v0, :cond_7

    .line 186
    .line 187
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object v0, v1

    .line 191
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    sget-object v3, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 202
    .line 203
    const/4 v4, 0x1

    .line 204
    invoke-virtual {v3, v4, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->D(ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 205
    .line 206
    .line 207
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    move-object v0, v1

    .line 219
    :cond_9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUrl()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_c

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_a

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_a
    const-string v0, "push"

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lrf/c;->s(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    if-nez v0, :cond_b

    .line 248
    .line 249
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_b
    move-object v1, v0

    .line 254
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUrl()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p1, v0}, Lrf/c;->r(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :cond_c
    :goto_1
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 268
    .line 269
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 273
    .line 274
    const-string v4, "Push"

    .line 275
    .line 276
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const/4 v4, 0x3

    .line 280
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 281
    .line 282
    .line 283
    new-instance v4, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 284
    .line 285
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    if-nez v5, :cond_d

    .line 293
    .line 294
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move-object v5, v1

    .line 298
    :cond_d
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    if-nez v5, :cond_e

    .line 314
    .line 315
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move-object v5, v1

    .line 319
    :cond_e
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    if-nez v5, :cond_f

    .line 335
    .line 336
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    move-object v5, v1

    .line 340
    :cond_f
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUpack()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    if-nez v3, :cond_10

    .line 359
    .line 360
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_10
    move-object v1, v3

    .line 365
    :goto_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setPushId(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v0}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 377
    .line 378
    .line 379
    :goto_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 382
    .line 383
    .line 384
    return-void
.end method
