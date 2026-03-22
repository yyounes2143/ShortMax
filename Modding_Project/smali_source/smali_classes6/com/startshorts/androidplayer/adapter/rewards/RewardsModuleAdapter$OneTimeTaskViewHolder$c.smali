.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;
.super Ljava/lang/Object;
.source "RewardsModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;

.field final synthetic c:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->c:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "task"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->acceptable()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->g(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "2"

    .line 30
    .line 31
    const-string v4, "auth_reason"

    .line 32
    .line 33
    const-string v5, "getContext(...)"

    .line 34
    .line 35
    const-string/jumbo v6, "type"

    .line 36
    .line 37
    .line 38
    const-string v7, "scene"

    .line 39
    .line 40
    const-string v8, "from"

    .line 41
    .line 42
    packed-switch v2, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    :pswitch_0
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    const-string v3, "follow_ins"

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->p(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "follow_tt"

    .line 100
    .line 101
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->p(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    const-string v3, "follow_youtube"

    .line 134
    .line 135
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->p(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/String;

    .line 166
    .line 167
    const-string v3, "follow_fb"

    .line 168
    .line 169
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->p(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :pswitch_5
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/String;

    .line 200
    .line 201
    const-string v3, "OpenFloatingWindow"

    .line 202
    .line 203
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->m(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Ljava/lang/String;

    .line 234
    .line 235
    const-string v2, "google_login"

    .line 236
    .line 237
    invoke-virtual {v1, v2, p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v3, Landroid/os/Bundle;

    .line 241
    .line 242
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v3, v8, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string/jumbo p1, "task_google_login"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v7, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string p1, "google"

    .line 267
    .line 268
    invoke-virtual {v3, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 272
    .line 273
    const/4 v6, 0x4

    .line 274
    const/4 v7, 0x0

    .line 275
    const-string v2, "login_click"

    .line 276
    .line 277
    const-wide/16 v4, 0x0

    .line 278
    .line 279
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O0()Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_1

    .line 289
    .line 290
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 297
    .line 298
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->o(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 310
    .line 311
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->o(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :pswitch_7
    sget-object v0, Lmk/c;->a:Lmk/c;

    .line 317
    .line 318
    invoke-virtual {v0}, Lmk/c;->d()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    .line 324
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->c:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 325
    .line 326
    const-string v0, "PermissionUtil.isNotificationEnabled()==true, resend rewardNotifications again"

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget-object p1, Lud/b;->a:Lud/b;

    .line 332
    .line 333
    invoke-virtual {p1, v1}, Lud/b;->m2(Z)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 337
    .line 338
    const/4 v0, 0x2

    .line 339
    const/4 v2, 0x0

    .line 340
    const/4 v3, 0x4

    .line 341
    invoke-static {p1, v3, v1, v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    check-cast v1, Ljava/lang/String;

    .line 363
    .line 364
    const-string v2, "notification"

    .line 365
    .line 366
    invoke-virtual {v0, v2, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    const-string/jumbo v0, "system"

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->i(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :pswitch_8
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 384
    .line 385
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    iget-object v6, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 390
    .line 391
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Ljava/lang/String;

    .line 400
    .line 401
    const-string v7, "provide_phone"

    .line 402
    .line 403
    invoke-virtual {v2, v7, p1, v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 407
    .line 408
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;

    .line 409
    .line 410
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    sget-object v5, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 426
    .line 427
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/fragment/a;->i()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 432
    .line 433
    invoke-direct {v6, v4, v3}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    new-array v0, v0, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 437
    .line 438
    aput-object v6, v0, v1

    .line 439
    .line 440
    invoke-virtual {p1, v2, v5, v0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :pswitch_9
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 446
    .line 447
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    iget-object v6, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 452
    .line 453
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    check-cast v6, Ljava/lang/String;

    .line 462
    .line 463
    const-string v7, "provide_email"

    .line 464
    .line 465
    invoke-virtual {v2, v7, p1, v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 469
    .line 470
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;

    .line 471
    .line 472
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    sget-object v5, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 488
    .line 489
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/fragment/a;->f()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 494
    .line 495
    invoke-direct {v6, v4, v3}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    new-array v0, v0, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 499
    .line 500
    aput-object v6, v0, v1

    .line 501
    .line 502
    invoke-virtual {p1, v2, v5, v0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 503
    .line 504
    .line 505
    goto :goto_0

    .line 506
    :pswitch_a
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 513
    .line 514
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Ljava/lang/String;

    .line 523
    .line 524
    const-string v2, "facebook_login"

    .line 525
    .line 526
    invoke-virtual {v0, v2, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    .line 528
    .line 529
    new-instance v9, Landroid/os/Bundle;

    .line 530
    .line 531
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 535
    .line 536
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    check-cast p1, Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {v9, v8, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const-string/jumbo p1, "task_facebook_login"

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9, v7, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string p1, "facebook"

    .line 556
    .line 557
    invoke-virtual {v9, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 561
    .line 562
    const/4 v12, 0x4

    .line 563
    const/4 v13, 0x0

    .line 564
    const-string v8, "login_click"

    .line 565
    .line 566
    const-wide/16 v10, 0x0

    .line 567
    .line 568
    move-object v7, v0

    .line 569
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 573
    .line 574
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O0()Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-eqz p1, :cond_3

    .line 579
    .line 580
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 581
    .line 582
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 587
    .line 588
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->e(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 589
    .line 590
    .line 591
    goto :goto_0

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 593
    .line 594
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 599
    .line 600
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->e(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 601
    .line 602
    .line 603
    :goto_0
    return-void

    .line 604
    nop

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
