.class final Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/MainActivity;->m0()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1"
    f = "MainActivity.kt"
    l = {
        0x1d6,
        0x1e0,
        0x1ec,
        0x203
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

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
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_8

    .line 58
    .line 59
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$1;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 66
    .line 67
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 68
    .line 69
    .line 70
    iput v5, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->h:I

    .line 71
    .line 72
    invoke-static {p1, v2, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    :goto_0
    sget-object p1, Lud/a;->a:Lud/a;

    .line 80
    .line 81
    invoke-virtual {p1}, Lud/a;->P()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    sget-object p1, Lud/b;->a:Lud/b;

    .line 88
    .line 89
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {p1}, Lud/b;->X()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 109
    .line 110
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/16 v1, 0xb

    .line 119
    .line 120
    invoke-virtual {v0, v1, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_8
    sget-object p1, Lce/j;->a:Lce/j;

    .line 127
    .line 128
    invoke-virtual {p1}, Lce/j;->i()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_c

    .line 133
    .line 134
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 135
    .line 136
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$2$1;

    .line 141
    .line 142
    invoke-direct {v5, v2, p1, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$2$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 143
    .line 144
    .line 145
    iput v4, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->h:I

    .line 146
    .line 147
    invoke-static {v3, v5, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-ne p1, v0, :cond_9

    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_9
    :goto_2
    sget-object p1, Lud/a;->a:Lud/a;

    .line 155
    .line 156
    invoke-virtual {p1}, Lud/a;->P()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    sget-object p1, Lud/b;->a:Lud/b;

    .line 163
    .line 164
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_a

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_a
    invoke-virtual {p1}, Lud/b;->X()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_b

    .line 182
    .line 183
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 184
    .line 185
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const/16 v1, 0xa

    .line 194
    .line 195
    invoke-virtual {v0, v1, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p1

    .line 201
    :cond_c
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1;

    .line 206
    .line 207
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 208
    .line 209
    invoke-direct {v4, v5, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 210
    .line 211
    .line 212
    iput v3, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->h:I

    .line 213
    .line 214
    invoke-static {p1, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    if-ne p1, v0, :cond_d

    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_d
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_11

    .line 228
    .line 229
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 230
    .line 231
    const-string v1, "handleJumpPage CampaignParser.parse()"

    .line 232
    .line 233
    const-string v3, "CampaignNewTag"

    .line 234
    .line 235
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 239
    .line 240
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 241
    .line 242
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_e

    .line 251
    .line 252
    const-string v1, "has campaign info use CampaignParser.parse()"

    .line 253
    .line 254
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_e
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_f

    .line 270
    .line 271
    const-string v1, "use CampaignParser.parse()"

    .line 272
    .line 273
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_f
    sget-object p1, Lud/b;->a:Lud/b;

    .line 283
    .line 284
    invoke-virtual {p1}, Lud/b;->Z()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_10

    .line 289
    .line 290
    invoke-virtual {p1}, Lud/b;->X()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_13

    .line 295
    .line 296
    :cond_10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->C0()V

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_11
    sget-object p1, Lud/a;->a:Lud/a;

    .line 303
    .line 304
    invoke-virtual {p1}, Lud/a;->P()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_13

    .line 309
    .line 310
    sget-object p1, Lud/b;->a:Lud/b;

    .line 311
    .line 312
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    if-eqz v1, :cond_13

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-nez v1, :cond_12

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_12
    invoke-virtual {p1}, Lud/b;->X()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_13

    .line 330
    .line 331
    sget-object v1, Lfk/g;->a:Lfk/g;

    .line 332
    .line 333
    invoke-virtual {p1}, Lud/b;->b0()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    const/16 v3, 0x9

    .line 342
    .line 343
    invoke-virtual {v1, v3, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_13
    :goto_5
    sget-object p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->a:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 347
    .line 348
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 349
    .line 350
    iput v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;->h:I

    .line 351
    .line 352
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->i(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-ne p1, v0, :cond_14

    .line 357
    .line 358
    return-object v0

    .line 359
    :cond_14
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 360
    .line 361
    return-object p1
.end method
