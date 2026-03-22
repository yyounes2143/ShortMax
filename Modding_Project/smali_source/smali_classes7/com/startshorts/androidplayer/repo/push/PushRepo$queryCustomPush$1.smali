.class final Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PushRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/push/PushRepo;->w()V
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
    c = "com.startshorts.androidplayer.repo.push.PushRepo$queryCustomPush$1"
    f = "PushRepo.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPushRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n1863#2:400\n360#2,7:401\n1864#2:408\n*S KotlinDebug\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1\n*L\n94#1:400\n95#1:401,7\n94#1:408\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->c()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    sub-long v5, v3, v5

    .line 44
    .line 45
    sget-object p1, Lqe/a;->a:Lqe/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getCustomPushQueryInterval()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long v7, p1

    .line 56
    const-wide/16 v9, 0x3e8

    .line 57
    .line 58
    mul-long/2addr v7, v9

    .line 59
    cmp-long p1, v5, v7

    .line 60
    .line 61
    if-gez p1, :cond_2

    .line 62
    .line 63
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_2
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->f(J)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->e(Lcom/startshorts/androidplayer/repo/push/PushRepo;)Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput v2, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1;->h:I

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;->c(Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_e

    .line 89
    .line 90
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/startshorts/androidplayer/bean/push/CustomPushList;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPushList;->getPushList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move-object v0, v1

    .line 102
    :goto_1
    move-object v2, v0

    .line 103
    check-cast v2, Ljava/util/Collection;

    .line 104
    .line 105
    if-eqz v2, :cond_d

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_5
    sget-object v2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->d(Lcom/startshorts/androidplayer/repo/push/PushRepo;)Leh/b;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Leh/b;->d()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    check-cast v2, Ljava/util/Collection;

    .line 128
    .line 129
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_6
    move-object v2, v1

    .line 134
    check-cast v2, Ljava/util/Collection;

    .line 135
    .line 136
    if-eqz v2, :cond_c

    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_7

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_7
    check-cast v0, Ljava/lang/Iterable;

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_b

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    const/4 v4, 0x0

    .line 169
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const/4 v6, -0x1

    .line 174
    if-eqz v5, :cond_9

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_8

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    move v4, v6

    .line 201
    :goto_4
    const-string v3, "PushRepo"

    .line 202
    .line 203
    if-ne v4, v6, :cond_a

    .line 204
    .line 205
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 206
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v6, "add customPush -> "

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4, v3, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_a
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 236
    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v7, "replace customPush -> pushId("

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v7, ") newPush("

    .line 255
    .line 256
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const/16 v7, 0x29

    .line 263
    .line 264
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v5, v3, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_b
    sget-object v0, Lud/b;->a:Lud/b;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lud/b;->v3(Ljava/util/List;)V

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_c
    :goto_5
    sget-object v1, Lud/b;->a:Lud/b;

    .line 285
    .line 286
    invoke-virtual {v1, v0}, Lud/b;->v3(Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_d
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 291
    .line 292
    return-object p1

    .line 293
    :cond_e
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_f

    .line 298
    .line 299
    const-wide/16 v0, -0x1

    .line 300
    .line 301
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->f(J)V

    .line 302
    .line 303
    .line 304
    :cond_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 305
    .line 306
    return-object p1
.end method
