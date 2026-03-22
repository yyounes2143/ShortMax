.class public final Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity$c;
.super Lyd/d;
.source "StartRechargingNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;

    .line 31
    .line 32
    const-string v3, "push_name"

    .line 33
    .line 34
    const-string v4, "start_charging"

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

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
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

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
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v1, v7

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getContent()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v3, "content"

    .line 95
    .line 96
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    const/4 v5, 0x4

    .line 102
    const/4 v6, 0x0

    .line 103
    const-string v1, "push_open"

    .line 104
    .line 105
    const-wide/16 v3, 0x0

    .line 106
    .line 107
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;

    .line 116
    .line 117
    const-string v2, "Push"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-nez v2, :cond_3

    .line 127
    .line 128
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v2, v7

    .line 132
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-lez v2, :cond_4

    .line 137
    .line 138
    const/4 v2, 0x4

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    const/4 v2, 0x3

    .line 141
    :goto_0
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_5

    .line 149
    .line 150
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move-object v2, v7

    .line 154
    :cond_5
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-lez v2, :cond_7

    .line 159
    .line 160
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_6

    .line 165
    .line 166
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v2, v7

    .line 170
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 175
    .line 176
    .line 177
    :cond_7
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 178
    .line 179
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-nez v3, :cond_8

    .line 187
    .line 188
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v3, v7

    .line 192
    :cond_8
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-nez v3, :cond_9

    .line 204
    .line 205
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object v3, v7

    .line 209
    :cond_9
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-nez v3, :cond_a

    .line 221
    .line 222
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    move-object v3, v7

    .line 226
    :cond_a
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-nez v3, :cond_b

    .line 238
    .line 239
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    move-object v3, v7

    .line 243
    :cond_b
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-nez v1, :cond_c

    .line 255
    .line 256
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_c
    move-object v7, v1

    .line 261
    :goto_1
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/StartRechargingNotificationActivity;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 277
    .line 278
    .line 279
    return-void
.end method
