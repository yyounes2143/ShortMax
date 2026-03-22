.class final Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppConfigureManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2"
    f = "AppConfigureManager.kt"
    l = {
        0x30,
        0x31,
        0x37,
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->j:Landroid/content/Context;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->j:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;-><init>(ZLandroid/content/Context;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->h:I

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
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-eq v1, v5, :cond_3

    .line 15
    .line 16
    if-eq v1, v4, :cond_2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

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
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 50
    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    sget-object p1, Loe/e;->a:Loe/e;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->j:Landroid/content/Context;

    .line 56
    .line 57
    iput v5, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->h:I

    .line 58
    .line 59
    invoke-virtual {p1, v1, p0}, Loe/e;->d(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    :goto_0
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$1;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->j:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {p1, v1, v6}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$1;-><init>(Landroid/content/Context;Lrs/c;)V

    .line 71
    .line 72
    .line 73
    iput v4, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->h:I

    .line 74
    .line 75
    invoke-static {p1, p0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_9

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_6
    sget-object p1, Loe/e;->a:Loe/e;

    .line 83
    .line 84
    iput v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->h:I

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Loe/e;->b(Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_7

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_7
    :goto_1
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2;

    .line 94
    .line 95
    invoke-direct {p1, v6}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2;-><init>(Lrs/c;)V

    .line 96
    .line 97
    .line 98
    iput v2, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->h:I

    .line 99
    .line 100
    invoke-static {p1, p0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v0, :cond_8

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 110
    .line 111
    if-nez p1, :cond_a

    .line 112
    .line 113
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 114
    .line 115
    new-instance v3, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$3;

    .line 116
    .line 117
    invoke-direct {v3, v6}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$3;-><init>(Lrs/c;)V

    .line 118
    .line 119
    .line 120
    const/4 v4, 0x2

    .line 121
    const/4 v5, 0x0

    .line 122
    const-string v1, "printABTestConfig"

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 126
    .line 127
    .line 128
    :cond_a
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v1, "AdCountryTierConfigure isLocal="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, " tier="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    sget-object v1, Loe/e;->a:Loe/e;

    .line 151
    .line 152
    invoke-virtual {v1}, Loe/e;->g()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "AppConfigureManager"

    .line 164
    .line 165
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v2, "AdSwitchConfigure isLocal="

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const/16 v2, 0x20

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v3, "AdUnitIdConfigure isLocal="

    .line 210
    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v3, "AdActionCountConfigure isLocal="

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v3, "FeatureJsonConfigure isLocal="

    .line 266
    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    sget-object v3, Lqe/a;->a:Lqe/a;

    .line 279
    .line 280
    invoke-virtual {v3}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v3, "UrlJsonConfigure isLocal="

    .line 300
    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 305
    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    sget-object v3, Lse/a;->a:Lse/a;

    .line 313
    .line 314
    invoke-virtual {v3}, Lse/a;->g()Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v3, "BlackDeviceJsonConfigure isLocal="

    .line 334
    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2;->i:Z

    .line 339
    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    sget-object v2, Lpe/a;->a:Lpe/a;

    .line 347
    .line 348
    invoke-virtual {v2}, Lpe/a;->h()Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 363
    .line 364
    return-object p1
.end method
