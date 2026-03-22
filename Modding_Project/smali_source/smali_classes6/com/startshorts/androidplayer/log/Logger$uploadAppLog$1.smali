.class final Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Logger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/log/Logger;->l(Lyd/f;)V
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
    c = "com.startshorts.androidplayer.log.Logger$uploadAppLog$1"
    f = "Logger.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lyd/f;


# direct methods
.method constructor <init>(Lyd/f;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyd/f;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

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
    new-instance p1, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;-><init>(Lyd/f;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/io/File;

    .line 12
    .line 13
    sget-object v0, Lcf/a;->a:Lcf/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcf/a;->a()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "xlog"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v3, "uploadAppLog failed -> not find dir("

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x29

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v2, "Logger"

    .line 62
    .line 63
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/startshorts/androidplayer/log/Logger;->a(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 74
    .line 75
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lyd/f;->a(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 88
    .line 89
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getUseNewLogUpload()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sget-object v2, Lcom/startshorts/androidplayer/log/c;->a:Lcom/startshorts/androidplayer/log/c;

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/log/c;->a(Z)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, "_app.zip"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 129
    .line 130
    invoke-static {v3, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->c(Lcom/startshorts/androidplayer/log/Logger;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-nez v4, :cond_2

    .line 135
    .line 136
    invoke-static {v1}, Lcom/startshorts/androidplayer/log/Logger;->a(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 144
    .line 145
    sget v4, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Lfk/u;->d(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lyd/f;->a(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    iget-object v5, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

    .line 156
    .line 157
    invoke-static {v3, v4, v2, v5}, Lcom/startshorts/androidplayer/log/Logger;->b(Lcom/startshorts/androidplayer/log/Logger;Ljava/io/File;Ljava/lang/String;Lyd/f;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 161
    .line 162
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 163
    .line 164
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 165
    .line 166
    .line 167
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_4

    .line 182
    .line 183
    sget-object v2, Lud/a;->a:Lud/a;

    .line 184
    .line 185
    invoke-virtual {v2}, Lud/a;->m()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v3, "android_"

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->U()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const/16 v3, 0x5f

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 216
    .line 217
    new-instance v5, Ljava/util/Date;

    .line 218
    .line 219
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    sget-object v6, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 227
    .line 228
    invoke-virtual {v4, v5, v6}, Lcom/startshorts/androidplayer/utils/TimeUtil;->g(Ljava/util/Date;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v3, Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v3, ".zip"

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 265
    .line 266
    invoke-static {v3, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->c(Lcom/startshorts/androidplayer/log/Logger;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-nez p1, :cond_5

    .line 271
    .line 272
    invoke-static {v1}, Lcom/startshorts/androidplayer/log/Logger;->a(Z)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;->i:Lyd/f;

    .line 276
    .line 277
    if-eqz p1, :cond_6

    .line 278
    .line 279
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 280
    .line 281
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Lyd/f;->a(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 292
    .line 293
    new-instance v4, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1$1;

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    invoke-direct {v4, v0, v2, p1, v3}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/io/File;Lrs/c;)V

    .line 297
    .line 298
    .line 299
    const/4 v5, 0x2

    .line 300
    const/4 v6, 0x0

    .line 301
    const-string/jumbo v2, "uploadAppLog"

    .line 302
    .line 303
    .line 304
    const/4 v3, 0x0

    .line 305
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 306
    .line 307
    .line 308
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 309
    .line 310
    return-object p1

    .line 311
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 312
    .line 313
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 314
    .line 315
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p1
.end method
