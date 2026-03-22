.class public final Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;
.super Ljava/lang/Object;
.source "RetrofitFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRetrofitFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitFactory.kt\ncom/startshorts/androidplayer/manager/api/base/RetrofitFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1863#2,2:153\n1863#2,2:155\n1863#2,2:157\n*S KotlinDebug\n*F\n+ 1 RetrofitFactory.kt\ncom/startshorts/androidplayer/manager/api/base/RetrofitFactory\n*L\n85#1:153,2\n114#1:155,2\n117#1:157,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->b:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$cancelAllRequests$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$cancelAllRequests$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "cancelAllRequests"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final declared-synchronized c(Lcom/startshorts/androidplayer/bean/api/ApiConfig;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/api/ApiConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startshorts/androidplayer/bean/api/ApiConfig;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "config"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "service"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$a;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->U(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getOkHttpEventListener()Lokhttp3/EventListener$Factory;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->l(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    :goto_0
    sget-object v1, Lid/a;->a:Lid/a;

    .line 39
    .line 40
    invoke-virtual {v1}, Lid/a;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory$b;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiConfig;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->k(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getWriteTimeout()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    const-wide/16 v3, -0x1

    .line 59
    .line 60
    cmp-long v1, v1, v3

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getWriteTimeout()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getConnectTimeout()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    cmp-long v1, v1, v3

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getConnectTimeout()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getReadTimeout()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    cmp-long v1, v1, v3

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getReadTimeout()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getOkHttpInterceptors()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    check-cast v1, Ljava/lang/Iterable;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lokhttp3/Interceptor;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getNetworkInterceptor()Lokhttp3/Interceptor;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->b(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 142
    .line 143
    .line 144
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getConnectionPool()Lokhttp3/ConnectionPool;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->g(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 151
    .line 152
    .line 153
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getDns()Lokhttp3/Dns;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->j(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 160
    .line 161
    .line 162
    :cond_8
    sget-object v1, Lokhttp3/ConnectionSpec;->i:Lokhttp3/ConnectionSpec;

    .line 163
    .line 164
    sget-object v2, Lokhttp3/ConnectionSpec;->j:Lokhttp3/ConnectionSpec;

    .line 165
    .line 166
    sget-object v3, Lokhttp3/ConnectionSpec;->k:Lokhttp3/ConnectionSpec;

    .line 167
    .line 168
    filled-new-array {v1, v2, v3}, [Lokhttp3/ConnectionSpec;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->h(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getCache()Lokhttp3/Cache;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->d(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 186
    .line 187
    .line 188
    :cond_9
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->b:Lokhttp3/OkHttpClient;

    .line 193
    .line 194
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 195
    .line 196
    const-string v2, "RetrofitFactory"

    .line 197
    .line 198
    const-string v3, "OkHttp version(4.12.0)"

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lfu/d0$b;

    .line 204
    .line 205
    invoke-direct {v1}, Lfu/d0$b;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getBaseUrl()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lfu/d0$b;->c(Ljava/lang/String;)Lfu/d0$b;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v0}, Lfu/d0$b;->g(Lokhttp3/OkHttpClient;)Lfu/d0$b;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getConverterFactories()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    check-cast v0, Ljava/lang/Iterable;

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_a

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Lfu/h$a;

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Lfu/d0$b;->b(Lfu/h$a;)Lfu/d0$b;

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->getCallAdapterFactories()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_b

    .line 254
    .line 255
    check-cast p1, Ljava/lang/Iterable;

    .line 256
    .line 257
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_b

    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Lfu/e$a;

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Lfu/d0$b;->a(Lfu/e$a;)Lfu/d0$b;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_b
    invoke-virtual {v1}, Lfu/d0$b;->e()Lfu/d0;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1, p2}, Lfu/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    .line 286
    return-object p1

    .line 287
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    throw p1
.end method

.method public final d(Lokhttp3/Dispatcher;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1    # Lokhttp3/Dispatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Dispatcher;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "targetHost"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 20
    .line 21
    const-string v2, "HttpLoggingInterceptor"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    const-string v4, "Attribution "

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    const-string v4, ""

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, "[CallStart] getQueuedUrlsForHost \u8c03\u7528}"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->j()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "HttpLoggingInterceptor"

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_1

    .line 65
    .line 66
    const-string v5, "Attribution "

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v5, ""

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, "[CallStart] queuedCallSize: "

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, "  runningCallSize:"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->k()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v1, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :catch_0
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    :try_start_1
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 126
    .line 127
    const-string v4, "HttpLoggingInterceptor"

    .line 128
    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    if-eqz p3, :cond_3

    .line 135
    .line 136
    const-string v6, "Attribution "

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    const-string v6, ""

    .line 140
    .line 141
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v6, "[CallStart] queuedCallsUrl: "

    .line 145
    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const/16 v6, 0x7d

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_2

    .line 181
    .line 182
    invoke-virtual {v2}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    :try_start_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .line 196
    monitor-exit p1

    .line 197
    goto :goto_5

    .line 198
    :goto_4
    monitor-exit p1

    .line 199
    throw p2

    .line 200
    :cond_5
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-object v0
.end method
