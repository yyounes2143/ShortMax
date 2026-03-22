.class final Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b1(ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshUserInfo$1"
    f = "AccountRepo.kt"
    l = {
        0x273,
        0x2ec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->j:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->h:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->i:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lgt/g0;

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    check-cast v5, Lkotlin/Result;

    .line 40
    .line 41
    invoke-virtual {v5}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_2
    move-object v6, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->i:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lgt/g0;

    .line 53
    .line 54
    sget-object v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 55
    .line 56
    invoke-static {v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g(Lcom/startshorts/androidplayer/repo/account/AccountRepo;)Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iput-object v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->i:Ljava/lang/Object;

    .line 61
    .line 62
    iput v4, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->h:I

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->i(Lrs/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-ne v5, v1, :cond_2

    .line 69
    .line 70
    return-object v1

    .line 71
    :goto_0
    invoke-static {v5}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    if-eqz v2, :cond_1d

    .line 78
    .line 79
    move-object v2, v5

    .line 80
    check-cast v2, Lcom/startshorts/androidplayer/bean/account/Account;

    .line 81
    .line 82
    if-eqz v2, :cond_1c

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 89
    .line 90
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_4
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isRecharged()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    invoke-virtual {v8, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getAllowRecharge()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getAudienceIdList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v8, v7}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g1(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCountryCode()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->s(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->x(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getTripartiteCode()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-eqz v7, :cond_8

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isShowMobileLogin()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->F(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCoins()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getBonus()I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    invoke-virtual {v8, v7, v9, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCanMerge()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    invoke-virtual {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t1(ZZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscription()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_a

    .line 190
    .line 191
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M0()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_9

    .line 196
    .line 197
    const/16 v20, 0x6

    .line 198
    .line 199
    const/16 v21, 0x0

    .line 200
    .line 201
    const/4 v15, 0x0

    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    const-wide/16 v17, 0x0

    .line 205
    .line 206
    const/16 v19, 0x0

    .line 207
    .line 208
    move-object v14, v8

    .line 209
    invoke-static/range {v14 .. v21}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZIJZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionType()I

    .line 213
    .line 214
    .line 215
    move-result v16

    .line 216
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionEndTime()J

    .line 217
    .line 218
    .line 219
    move-result-wide v17

    .line 220
    const/16 v19, 0x1

    .line 221
    .line 222
    const/4 v15, 0x1

    .line 223
    move-object v14, v8

    .line 224
    invoke-virtual/range {v14 .. v19}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_a
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->B0()Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_b

    .line 233
    .line 234
    sget-object v7, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 235
    .line 236
    const-string v9, "AccountRepo"

    .line 237
    .line 238
    const-string v10, "mark subsProExpired"

    .line 239
    .line 240
    invoke-virtual {v7, v9, v10}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-object v7, Lud/b;->a:Lud/b;

    .line 244
    .line 245
    invoke-virtual {v7, v4}, Lud/b;->e5(Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q0()I

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    invoke-virtual {v7, v9}, Lud/b;->e4(I)V

    .line 253
    .line 254
    .line 255
    :cond_b
    const/16 v20, 0x6

    .line 256
    .line 257
    const/16 v21, 0x0

    .line 258
    .line 259
    const/4 v15, 0x0

    .line 260
    const/16 v16, 0x0

    .line 261
    .line 262
    const-wide/16 v17, 0x0

    .line 263
    .line 264
    const/16 v19, 0x1

    .line 265
    .line 266
    move-object v14, v8

    .line 267
    invoke-static/range {v14 .. v21}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZIJZILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :goto_1
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getReceiveType()Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    if-eqz v7, :cond_c

    .line 275
    .line 276
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-virtual {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q1(IZ)V

    .line 281
    .line 282
    .line 283
    :cond_c
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscriptionBlack()Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    if-eqz v7, :cond_d

    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 294
    .line 295
    .line 296
    :cond_d
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getHasSubscription()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    invoke-virtual {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D1(ZZ)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCampaignUnlockType()Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    if-eqz v7, :cond_e

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 314
    .line 315
    .line 316
    :cond_e
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCampaignUnlockTypeV2()Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    if-eqz v7, :cond_f

    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->r(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 327
    .line 328
    .line 329
    :cond_f
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isThirdSubscription()Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    invoke-virtual {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->S1(ZZ)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCampaignShortPlayCodeV2()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    if-eqz v7, :cond_10

    .line 341
    .line 342
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V

    .line 343
    .line 344
    .line 345
    :cond_10
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getLastPayType()Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    if-eqz v7, :cond_11

    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getLastPayType()Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->A(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V

    .line 356
    .line 357
    .line 358
    :cond_11
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getTotalPayCount()Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    if-eqz v7, :cond_12

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getTotalPayCount()Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V

    .line 369
    .line 370
    .line 371
    :cond_12
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCurrentSubscriptionOrderNo()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    if-eqz v7, :cond_13

    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getCurrentSubscriptionOrderNo()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    :cond_13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionOrderType()Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    if-eqz v7, :cond_14

    .line 389
    .line 390
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionOrderType()Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->G(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V

    .line 395
    .line 396
    .line 397
    :cond_14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSupportOneTouchPayment()Ljava/lang/Boolean;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    if-eqz v7, :cond_16

    .line 402
    .line 403
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getSupportOneTouchPayment()Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    if-eqz v7, :cond_15

    .line 408
    .line 409
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    goto :goto_2

    .line 414
    :cond_15
    move v7, v13

    .line 415
    :goto_2
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 416
    .line 417
    .line 418
    :cond_16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getOneTouchPayOpen()Ljava/lang/Boolean;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    if-eqz v7, :cond_18

    .line 423
    .line 424
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getOneTouchPayOpen()Ljava/lang/Boolean;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    if-eqz v7, :cond_17

    .line 429
    .line 430
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    goto :goto_3

    .line 435
    :cond_17
    move v7, v13

    .line 436
    :goto_3
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->C(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 437
    .line 438
    .line 439
    :cond_18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isRenewing()Ljava/lang/Boolean;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    if-eqz v7, :cond_19

    .line 444
    .line 445
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 450
    .line 451
    .line 452
    :cond_19
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getDaysOfActiveSubscription()Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    if-eqz v7, :cond_1a

    .line 457
    .line 458
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v7

    .line 462
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->u(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 463
    .line 464
    .line 465
    :cond_1a
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getDaysOfCancelSubscription()Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    if-eqz v7, :cond_1b

    .line 470
    .line 471
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V

    .line 476
    .line 477
    .line 478
    :cond_1b
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isPaid()Z

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isPix610()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isIaaUser()Z

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->y(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isIdnTelkomsel()Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getDisplayThirdUnsubscribe()Z

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getNewRegisterUser()Z

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->B(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isPix615DayToWeekExperiment()Z

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isDaySub()Z

    .line 528
    .line 529
    .line 530
    move-result v7

    .line 531
    invoke-static {v8, v7, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->K(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getAttributionTimestamp()J

    .line 535
    .line 536
    .line 537
    move-result-wide v9

    .line 538
    invoke-static {v8, v9, v10, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n(Lcom/startshorts/androidplayer/repo/account/AccountRepo;JZ)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getDramaBoxConfig()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    invoke-static {v8, v7, v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->E(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)V

    .line 546
    .line 547
    .line 548
    new-instance v9, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1$1$18;

    .line 549
    .line 550
    invoke-direct {v9, v2, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1$1$18;-><init>(Lcom/startshorts/androidplayer/bean/account/Account;Lrs/c;)V

    .line 551
    .line 552
    .line 553
    const/4 v10, 0x3

    .line 554
    const/4 v11, 0x0

    .line 555
    const/4 v7, 0x0

    .line 556
    const/4 v8, 0x0

    .line 557
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 558
    .line 559
    .line 560
    goto :goto_5

    .line 561
    :cond_1c
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 562
    .line 563
    return-object v1

    .line 564
    :cond_1d
    :goto_5
    invoke-static {v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l(Z)V

    .line 565
    .line 566
    .line 567
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->j:Lkotlin/jvm/functions/Function1;

    .line 568
    .line 569
    if-eqz v2, :cond_1e

    .line 570
    .line 571
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    new-instance v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1$2;

    .line 576
    .line 577
    iget-object v6, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->j:Lkotlin/jvm/functions/Function1;

    .line 578
    .line 579
    invoke-direct {v4, v6, v5, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lrs/c;)V

    .line 580
    .line 581
    .line 582
    iput-object v12, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->i:Ljava/lang/Object;

    .line 583
    .line 584
    iput v3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;->h:I

    .line 585
    .line 586
    invoke-static {v2, v4, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    if-ne v2, v1, :cond_1e

    .line 591
    .line 592
    return-object v1

    .line 593
    :cond_1e
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 594
    .line 595
    return-object v1
.end method
