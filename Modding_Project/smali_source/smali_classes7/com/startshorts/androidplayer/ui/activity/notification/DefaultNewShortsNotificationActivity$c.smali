.class public final Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;
.super Lyd/d;
.source "DefaultNewShortsNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;

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
    .locals 9

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 24
    .line 25
    new-instance v2, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;

    .line 31
    .line 32
    const-string v3, "push_name"

    .line 33
    .line 34
    const-string v4, "reel_update"

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v8, "mNotification"

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v3, v7

    .line 52
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "reel_id"

    .line 57
    .line 58
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v3, v7

    .line 71
    :cond_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "title"

    .line 76
    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v3, v7

    .line 90
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v1, v7

    .line 113
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    :goto_0
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object v1, v7

    .line 128
    :cond_6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_1
    const-string v3, "content"

    .line 133
    .line 134
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    const/4 v5, 0x4

    .line 140
    const/4 v6, 0x0

    .line 141
    const-string v1, "push_open"

    .line 142
    .line 143
    const-wide/16 v3, 0x0

    .line 144
    .line 145
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;

    .line 154
    .line 155
    const-string v2, "Push"

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v2, v7

    .line 170
    :cond_7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-lez v2, :cond_8

    .line 175
    .line 176
    const/4 v2, 0x4

    .line 177
    goto :goto_2

    .line 178
    :cond_8
    const/4 v2, 0x3

    .line 179
    :goto_2
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-nez v2, :cond_9

    .line 187
    .line 188
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v2, v7

    .line 192
    :cond_9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-lez v2, :cond_b

    .line 197
    .line 198
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-nez v2, :cond_a

    .line 203
    .line 204
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    move-object v2, v7

    .line 208
    :cond_a
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 213
    .line 214
    .line 215
    :cond_b
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 216
    .line 217
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-nez v3, :cond_c

    .line 225
    .line 226
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v3, v7

    .line 230
    :cond_c
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-nez v3, :cond_d

    .line 242
    .line 243
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    move-object v3, v7

    .line 247
    :cond_d
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    if-nez v3, :cond_e

    .line 259
    .line 260
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    move-object v3, v7

    .line 264
    :cond_e
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-nez v3, :cond_f

    .line 276
    .line 277
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object v3, v7

    .line 281
    :cond_f
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-nez v1, :cond_10

    .line 293
    .line 294
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_10
    move-object v7, v1

    .line 299
    :goto_3
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v0}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 315
    .line 316
    .line 317
    return-void
.end method
