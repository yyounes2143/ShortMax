.class public final Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;
.super Ljava/lang/Object;
.source "RemoteConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfig.kt\ncom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,117:1\n116#2,11:118\n*S KotlinDebug\n*F\n+ 1 RemoteConfig.kt\ncom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig\n*L\n81#1:118,11\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lpg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lpg/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lpg/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:J

.field private final g:J


# direct methods
.method public constructor <init>(Lqg/a;)V
    .locals 4
    .param p1    # Lqg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "settings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->a:Lgt/g0;

    .line 28
    .line 29
    new-instance v2, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;-><init>(Lqg/a;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->b:Lpg/a;

    .line 35
    .line 36
    new-instance v2, Log/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lqg/a;->a()Lcom/google/gson/Gson;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3}, Log/a;-><init>(Lcom/google/gson/Gson;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->c:Lpg/b;

    .line 46
    .line 47
    new-instance v2, Log/b;

    .line 48
    .line 49
    invoke-virtual {p1}, Lqg/a;->b()Lcom/tencent/mmkv/MMKV;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v2, p1}, Log/b;-><init>(Lcom/tencent/mmkv/MMKV;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->d:Lpg/c;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-static {p1, v1, v0}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->e:Lqt/a;

    .line 64
    .line 65
    const-wide/16 v0, 0x1388

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->g:J

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->f(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;)Lpg/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->b:Lpg/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;)Lpg/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->d:Lpg/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;)Lpg/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->c:Lpg/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->i(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f(Lrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lqt/a;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->i:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Lqt/a;

    .line 71
    .line 72
    iget-object v4, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 75
    .line 76
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :catchall_1
    move-exception p1

    .line 82
    move-object v0, v2

    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :catch_1
    move-exception p1

    .line 86
    move-object v0, v2

    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_3
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->i:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lqt/a;

    .line 92
    .line 93
    iget-object v5, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object p1, v2

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->e:Lqt/a;

    .line 106
    .line 107
    invoke-interface {p1}, Lqt/a;->isLocked()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    const-string p1, "fetch remote: Request already in progress."

    .line 114
    .line 115
    invoke-static {p1}, Lng/a;->a(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->e:Lqt/a;

    .line 122
    .line 123
    iput-object p0, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->i:Ljava/lang/Object;

    .line 126
    .line 127
    iput v5, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 128
    .line 129
    invoke-interface {p1, v6, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-ne v2, v1, :cond_6

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_6
    move-object v5, p0

    .line 137
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    iget-wide v9, v5, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->f:J

    .line 142
    .line 143
    sub-long/2addr v7, v9

    .line 144
    iget-wide v9, v5, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->g:J

    .line 145
    .line 146
    cmp-long v2, v7, v9

    .line 147
    .line 148
    if-gtz v2, :cond_7

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v1, "fetch remote: Cooldown active ("

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-wide v1, v5, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->g:J

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, "ms)."

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lng/a;->a(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    .line 179
    invoke-interface {p1, v6}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :catchall_2
    move-exception v0

    .line 184
    move-object v11, v0

    .line 185
    move-object v0, p1

    .line 186
    move-object p1, v11

    .line 187
    goto/16 :goto_6

    .line 188
    .line 189
    :cond_7
    :try_start_3
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-instance v7, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$2$json$1;

    .line 194
    .line 195
    invoke-direct {v7, v5, v6}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$2$json$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)V

    .line 196
    .line 197
    .line 198
    iput-object v5, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->i:Ljava/lang/Object;

    .line 201
    .line 202
    iput v4, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 203
    .line 204
    invoke-static {v2, v7, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 208
    if-ne v2, v1, :cond_8

    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_8
    move-object v4, v5

    .line 212
    move-object v11, v2

    .line 213
    move-object v2, p1

    .line 214
    move-object p1, v11

    .line 215
    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/String;

    .line 216
    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    iput-wide v7, v4, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->f:J

    .line 224
    .line 225
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    new-instance v7, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$2$1;

    .line 230
    .line 231
    invoke-direct {v7, v4, p1, v6}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$2$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Ljava/lang/String;Lrs/c;)V

    .line 232
    .line 233
    .line 234
    iput-object v2, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->h:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v6, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->i:Ljava/lang/Object;

    .line 237
    .line 238
    iput v3, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$fetch$1;->l:I

    .line 239
    .line 240
    invoke-static {v5, v7, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    if-ne p1, v1, :cond_9

    .line 245
    .line 246
    return-object v1

    .line 247
    :cond_9
    move-object v0, v2

    .line 248
    :goto_3
    :try_start_5
    const-string p1, "fetch success"

    .line 249
    .line 250
    invoke-static {p1}, Lng/a;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    move-object v0, v2

    .line 255
    goto :goto_5

    .line 256
    :catch_2
    move-exception v0

    .line 257
    move-object v11, v0

    .line 258
    move-object v0, p1

    .line 259
    move-object p1, v11

    .line 260
    :goto_4
    :try_start_6
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 261
    .line 262
    if-nez v1, :cond_b

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v2, "fetch error: "

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p1}, Lng/a;->a(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    .line 290
    invoke-interface {v0, v6}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 294
    .line 295
    return-object p1

    .line 296
    :cond_b
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    :goto_6
    invoke-interface {v0, v6}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    throw p1
.end method

.method private final i(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :try_start_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->d:Lpg/c;

    .line 60
    .line 61
    iput-object p0, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$loadLocalCache$1;->k:I

    .line 64
    .line 65
    invoke-interface {p1, v0}, Lpg/c;->b(Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    move-object v0, p0

    .line 73
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    iget-object v0, v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->c:Lpg/b;

    .line 85
    .line 86
    invoke-interface {v0, p1}, Lpg/b;->b(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "load local success"

    .line 90
    .line 91
    invoke-static {p1}, Lng/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v1, "load local error: "

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lng/a;->a(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultValue"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->c:Lpg/b;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lpg/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->a:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$init$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$init$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->a:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$updateConfig$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig$updateConfig$1;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    return-void
.end method
