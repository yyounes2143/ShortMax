.class public final Lcom/inmobi/media/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:J


# direct methods
.method public constructor <init>([Lokhttp3/Interceptor;Lokhttp3/Dispatcher;Lcom/inmobi/media/he;)V
    .locals 5

    .line 1
    const-string v0, "dispatcher"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "timeoutConfig"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p3, Lcom/inmobi/media/he;->c:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/inmobi/media/c3;->b:J

    .line 17
    .line 18
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    array-length v2, p1

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_0

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/inmobi/media/zc;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/inmobi/media/zc;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/inmobi/media/p7;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/inmobi/media/p7;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->b(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    .line 53
    .line 54
    sget-object p1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 55
    .line 56
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 57
    .line 58
    filled-new-array {p1, v2}, [Lokhttp3/Protocol;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->T(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->W(Z)Lokhttp3/OkHttpClient$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->i(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 73
    .line 74
    .line 75
    iget-wide p1, p3, Lcom/inmobi/media/he;->a:J

    .line 76
    .line 77
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    .line 81
    .line 82
    iget-wide p1, p3, Lcom/inmobi/media/he;->b:J

    .line 83
    .line 84
    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, Lcom/inmobi/media/he;->c:J

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->e(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "build(...)"

    .line 97
    .line 98
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/inmobi/media/c3;->a:Lokhttp3/OkHttpClient;

    .line 102
    .line 103
    return-void
.end method

.method public static final a(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1

    const-string v0, "$client"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$okHttpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lokhttp3/OkHttpClient;Lokhttp3/Request;Ljava/lang/String;)Lcom/inmobi/media/O9;
    .locals 17

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/OkHttpClient;->p()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Dispatcher;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-string v3, "executorService(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v3, p0

    .line 2
    :try_start_1
    iget-wide v4, v3, Lcom/inmobi/media/c3;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lub/v3;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct {v7, v8, v9}, Lub/v3;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    invoke-static {v2, v4, v5, v6, v7}, Lcom/inmobi/media/He;->a(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Response;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {v2}, Lokhttp3/Response;->o()I

    move-result v4

    .line 4
    invoke-virtual {v2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :cond_0
    :goto_0
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 5
    :cond_1
    invoke-virtual {v2}, Lokhttp3/Response;->u()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Headers;->h()Ljava/util/Map;

    move-result-object v10

    .line 6
    invoke-virtual {v2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    goto :goto_1

    :cond_2
    move-wide v11, v7

    .line 7
    :goto_1
    invoke-virtual {v2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_3
    invoke-virtual {v2}, Lokhttp3/Response;->T()J

    move-result-wide v13

    invoke-virtual {v2}, Lokhttp3/Response;->Y()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 9
    new-instance v6, Lcom/inmobi/media/K9;

    cmp-long v9, v13, v7

    if-gez v9, :cond_4

    move-wide v8, v7

    goto :goto_2

    :cond_4
    move-wide v8, v13

    .line 10
    :goto_2
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v11, v11

    move-object v7, v6

    move-object v12, v1

    .line 11
    invoke-direct/range {v7 .. v12}, Lcom/inmobi/media/K9;-><init>(JLjava/util/Map;ILjava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/inmobi/media/He;->a(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Lcom/inmobi/media/Q9;

    .line 14
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    invoke-direct {v1, v0, v4, v5, v6}, Lcom/inmobi/media/Q9;-><init>(Ljava/lang/String;ILokio/ByteString;Lcom/inmobi/media/K9;)V

    goto :goto_3

    .line 16
    :cond_5
    new-instance v1, Lcom/inmobi/media/p4;

    sget-object v5, Lcom/inmobi/media/m4;->b:Lcom/inmobi/media/k4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/inmobi/media/k4;->a(I)Lcom/inmobi/media/m4;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/inmobi/media/p4;-><init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_3
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    return-object v1

    :catch_1
    move-object v1, v2

    goto :goto_4

    :catch_2
    move-object v1, v2

    goto :goto_5

    :catch_3
    move-object v1, v2

    goto :goto_6

    :catch_4
    move-object v1, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_9

    :catch_6
    move-object/from16 v3, p0

    goto :goto_4

    :catch_7
    move-object/from16 v3, p0

    goto :goto_5

    :catch_8
    move-object/from16 v3, p0

    goto :goto_6

    :catch_9
    move-object/from16 v3, p0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_8

    .line 18
    :catch_b
    :goto_4
    :try_start_3
    new-instance v2, Lcom/inmobi/media/p4;

    sget-object v4, Lcom/inmobi/media/m4;->d:Lcom/inmobi/media/m4;

    invoke-direct {v2, v0, v4}, Lcom/inmobi/media/p4;-><init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_6
    return-object v2

    .line 20
    :catch_c
    :goto_5
    :try_start_4
    new-instance v2, Lcom/inmobi/media/p4;

    sget-object v4, Lcom/inmobi/media/m4;->e:Lcom/inmobi/media/m4;

    invoke-direct {v2, v0, v4}, Lcom/inmobi/media/p4;-><init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_7
    return-object v2

    .line 22
    :catch_d
    :goto_6
    :try_start_5
    new-instance v2, Lcom/inmobi/media/p4;

    sget-object v4, Lcom/inmobi/media/m4;->i:Lcom/inmobi/media/m4;

    invoke-direct {v2, v0, v4}, Lcom/inmobi/media/p4;-><init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_8
    return-object v2

    .line 24
    :catch_e
    :goto_7
    :try_start_6
    new-instance v2, Lcom/inmobi/media/p4;

    sget-object v4, Lcom/inmobi/media/m4;->h:Lcom/inmobi/media/m4;

    invoke-direct {v2, v0, v4}, Lcom/inmobi/media/p4;-><init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_9

    .line 25
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_9
    return-object v2

    .line 26
    :goto_8
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_9
    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_a
    throw v0
.end method
