.class final Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RemoteConfigRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;
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
    c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo$1$1$3"
    f = "RemoteConfigRepo.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,233:1\n462#2:234\n412#2:235\n1246#3,4:236\n774#3:240\n865#3,2:241\n1863#3,2:247\n126#4:243\n153#4,3:244\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n*L\n55#1:234\n55#1:235\n55#1:236,4\n59#1:240\n59#1:241,2\n75#1:247,2\n73#1:243\n73#1:244,3\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;-><init>(Ljava/util/Map;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

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
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->h:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-static {v5}, Lkotlin/collections/p0;->e(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Iterable;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v5, "RemoteConfigRepo"

    .line 96
    .line 97
    if-nez v2, :cond_8

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v6, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljava/lang/Iterable;

    .line 110
    .line 111
    invoke-static {v2, v6}, Lkotlin/collections/y0;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v6, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-static {v6, v7}, Lkotlin/collections/y0;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/lang/Iterable;

    .line 136
    .line 137
    iget-object v8, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 138
    .line 139
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Ljava/lang/Iterable;

    .line 144
    .line 145
    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->w0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Ljava/lang/Iterable;

    .line 150
    .line 151
    iget-object v8, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->i:Ljava/util/Map;

    .line 152
    .line 153
    new-instance v9, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_4

    .line 167
    .line 168
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    move-object v11, v10

    .line 173
    check-cast v11, Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-nez v11, :cond_3

    .line 188
    .line 189
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    sget-object v7, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 194
    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v10, "onFetchRemoteConfigComplete-> abtest value changed\nmapAfter="

    .line 201
    .line 202
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v10, "\nAdded keys: "

    .line 213
    .line 214
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-object v11, v2

    .line 218
    check-cast v11, Ljava/lang/Iterable;

    .line 219
    .line 220
    const/16 v18, 0x3e

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    const-string v12, ", "

    .line 225
    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v14, 0x0

    .line 228
    const/4 v15, 0x0

    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, "\nDeleted keys: "

    .line 241
    .line 242
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-object v10, v6

    .line 246
    check-cast v10, Ljava/lang/Iterable;

    .line 247
    .line 248
    const/16 v17, 0x3e

    .line 249
    .line 250
    const/16 v18, 0x0

    .line 251
    .line 252
    const-string v11, ", "

    .line 253
    .line 254
    const/4 v12, 0x0

    .line 255
    const/4 v14, 0x0

    .line 256
    const/4 v15, 0x0

    .line 257
    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v2, "\nChanged keys: "

    .line 265
    .line 266
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const/16 v16, 0x3e

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const-string v10, ", "

    .line 274
    .line 275
    const/4 v11, 0x0

    .line 276
    const/4 v13, 0x0

    .line 277
    const/4 v14, 0x0

    .line 278
    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v7, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v4}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->g(Ljava/util/Map;)V

    .line 293
    .line 294
    .line 295
    sget-object v2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 296
    .line 297
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->s()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_9

    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_5

    .line 329
    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    check-cast v6, Ljava/util/Map$Entry;

    .line 335
    .line 336
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    check-cast v7, Ljava/lang/String;

    .line 341
    .line 342
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 347
    .line 348
    invoke-static {v7, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_5
    new-instance v2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$a;

    .line 357
    .line 358
    invoke-direct {v2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$a;-><init>()V

    .line 359
    .line 360
    .line 361
    new-instance v6, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$b;

    .line 362
    .line 363
    invoke-direct {v6, v2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$b;-><init>(Ljava/util/Comparator;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Ljava/lang/Iterable;

    .line 371
    .line 372
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    const/4 v6, 0x0

    .line 381
    if-eqz v4, :cond_7

    .line 382
    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Lkotlin/Pair;

    .line 388
    .line 389
    invoke-virtual {v4}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    check-cast v7, Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v4}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    check-cast v4, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 400
    .line 401
    const-string v8, "_ios"

    .line 402
    .line 403
    const/4 v9, 0x2

    .line 404
    const/4 v10, 0x0

    .line 405
    invoke-static {v7, v8, v6, v9, v10}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    if-nez v8, :cond_6

    .line 410
    .line 411
    const-string v8, "ios_"

    .line 412
    .line 413
    invoke-static {v7, v8, v6, v9, v10}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    if-nez v6, :cond_6

    .line 418
    .line 419
    const-string v6, "adUnitId_android"

    .line 420
    .line 421
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    if-nez v6, :cond_6

    .line 426
    .line 427
    const-string v6, "adUnitId_android_v2"

    .line 428
    .line 429
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-nez v6, :cond_6

    .line 434
    .line 435
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 436
    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    const-string v9, "abtest value changed -> "

    .line 443
    .line 444
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v7}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v6, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto :goto_3

    .line 462
    :cond_7
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 463
    .line 464
    const-string v4, "abtest value changed -> AppConfigureManager.init"

    .line 465
    .line 466
    invoke-virtual {v2, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;

    .line 470
    .line 471
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 472
    .line 473
    invoke-virtual {v4}, Lfk/u;->b()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    iput v3, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->h:I

    .line 478
    .line 479
    invoke-virtual {v2, v4, v6, v0}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    if-ne v2, v1, :cond_9

    .line 484
    .line 485
    return-object v1

    .line 486
    :cond_8
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 487
    .line 488
    const-string v2, "onFetchRemoteConfigComplete-> abtest value no change"

    .line 489
    .line 490
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_9
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 494
    .line 495
    return-object v1
.end method
