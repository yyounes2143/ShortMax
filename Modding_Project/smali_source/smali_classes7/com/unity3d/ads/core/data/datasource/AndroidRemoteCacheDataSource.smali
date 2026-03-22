.class public final Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;
.super Ljava/lang/Object;
.source "AndroidRemoteCacheDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/CacheDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidRemoteCacheDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRemoteCacheDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
    }
.end annotation


# instance fields
.field private final createFile:Lcom/unity3d/ads/core/domain/CreateFile;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getFileExtensionFromUrl:Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpClient:Lcom/unity3d/services/core/network/core/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/CreateFile;Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;Lcom/unity3d/services/core/network/core/HttpClient;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/CreateFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/services/core/network/core/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ioDispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createFile"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "getFileExtensionFromUrl"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "httpClient"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->ioDispatcher:Lgt/c0;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->createFile:Lcom/unity3d/ads/core/domain/CreateFile;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->getFileExtensionFromUrl:Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$downloadFile(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$saveToCache(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;Ljava/io/File;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->saveToCache(Ljava/io/File;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final downloadFile(Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    move/from16 v17, v0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const v18, 0xfffe

    .line 17
    .line 18
    .line 19
    const/16 v19, 0x0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    move-object/from16 v20, v1

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    invoke-direct/range {v0 .. v19}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v0, p0

    .line 46
    .line 47
    iget-object v1, v0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 48
    .line 49
    move-object/from16 v2, p3

    .line 50
    .line 51
    move-object/from16 v3, v20

    .line 52
    .line 53
    invoke-interface {v1, v3, v2}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    return-object v1
.end method

.method private final saveToCache(Ljava/io/File;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->ioDispatcher:Lgt/c0;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$saveToCache$2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p2, p1, v2}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$saveToCache$2;-><init>(Ljava/lang/Object;Ljava/io/File;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method


# virtual methods
.method public getFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v3}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->label:I

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    if-eq v6, v8, :cond_2

    .line 46
    .line 47
    if-ne v6, v7, :cond_1

    .line 48
    .line 49
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$5:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Ljava/io/File;

    .line 53
    .line 54
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$4:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v5, v0

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$3:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v6, v0

    .line 62
    check-cast v6, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 63
    .line 64
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$2:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v7, v0

    .line 67
    check-cast v7, Ljava/lang/Integer;

    .line 68
    .line 69
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v8, v0

    .line 72
    check-cast v8, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v4, v0

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 78
    .line 79
    :try_start_0
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    iget-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$4:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v2, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$3:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v6, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$2:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v6, Ljava/lang/String;

    .line 106
    .line 107
    iget-object v8, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v8, Ljava/io/File;

    .line 110
    .line 111
    iget-object v9, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v9, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    .line 114
    .line 115
    :try_start_1
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    .line 118
    move-object/from16 v16, v8

    .line 119
    .line 120
    move-object v8, v0

    .line 121
    move-object v0, v3

    .line 122
    move-object/from16 v3, v16

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto/16 :goto_b

    .line 127
    .line 128
    :cond_3
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 134
    .line 135
    sget-object v11, Lcom/unity3d/ads/core/data/model/CacheError;->MALFORMED_URL:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 136
    .line 137
    sget-object v12, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 138
    .line 139
    const/4 v14, 0x4

    .line 140
    const/4 v15, 0x0

    .line 141
    const/4 v13, 0x0

    .line 142
    move-object v10, v0

    .line 143
    invoke-direct/range {v10 .. v15}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_4
    :try_start_2
    iput-object v1, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    move-object/from16 v3, p1

    .line 150
    .line 151
    iput-object v3, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$1:Ljava/lang/Object;

    .line 152
    .line 153
    move-object/from16 v6, p2

    .line 154
    .line 155
    iput-object v6, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v0, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$3:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v2, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$4:Ljava/lang/Object;

    .line 160
    .line 161
    iput v8, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->label:I

    .line 162
    .line 163
    invoke-direct {v1, v0, v2, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-ne v8, v5, :cond_5

    .line 168
    .line 169
    return-object v5

    .line 170
    :cond_5
    move-object v9, v1

    .line 171
    move-object/from16 v16, v2

    .line 172
    .line 173
    move-object v2, v0

    .line 174
    move-object v0, v8

    .line 175
    move-object/from16 v8, v16

    .line 176
    .line 177
    :goto_1
    move-object v10, v0

    .line 178
    check-cast v10, Lcom/unity3d/services/core/network/model/HttpResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .line 180
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_6

    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    :goto_2
    move-object v11, v0

    .line 188
    goto :goto_3

    .line 189
    :cond_6
    iget-object v0, v9, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->getFileExtensionFromUrl:Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;

    .line 190
    .line 191
    invoke-interface {v0, v2}, Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;->invoke(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto :goto_2

    .line 196
    :goto_3
    invoke-static {v10}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v0, v9, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->createFile:Lcom/unity3d/ads/core/domain/CreateFile;

    .line 203
    .line 204
    invoke-interface {v0, v3, v6}, Lcom/unity3d/ads/core/domain/CreateFile;->invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :try_start_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 209
    .line 210
    invoke-virtual {v10}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v6, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v2, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$1:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object v8, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$2:Ljava/lang/Object;

    .line 219
    .line 220
    iput-object v10, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$3:Ljava/lang/Object;

    .line 221
    .line 222
    iput-object v11, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$4:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object v3, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->L$5:Ljava/lang/Object;

    .line 225
    .line 226
    iput v7, v4, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFile$1;->label:I

    .line 227
    .line 228
    invoke-direct {v9, v3, v0, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->saveToCache(Ljava/io/File;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    if-ne v0, v5, :cond_7

    .line 233
    .line 234
    return-object v5

    .line 235
    :cond_7
    move-object v4, v6

    .line 236
    move-object v7, v8

    .line 237
    move-object v6, v10

    .line 238
    move-object v5, v11

    .line 239
    move-object v8, v2

    .line 240
    move-object v2, v3

    .line 241
    :goto_4
    :try_start_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 242
    .line 243
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    :goto_5
    move-object v3, v6

    .line 248
    move-object v6, v2

    .line 249
    move-object v2, v5

    .line 250
    move-object v5, v4

    .line 251
    move-object v4, v8

    .line 252
    goto :goto_7

    .line 253
    :catchall_1
    move-exception v0

    .line 254
    move-object v4, v6

    .line 255
    move-object v7, v8

    .line 256
    move-object v6, v10

    .line 257
    move-object v5, v11

    .line 258
    move-object v8, v2

    .line 259
    move-object v2, v3

    .line 260
    :goto_6
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 261
    .line 262
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_5

    .line 271
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_8

    .line 276
    .line 277
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 278
    .line 279
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 280
    .line 281
    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 282
    .line 283
    invoke-direct {v2, v3, v4, v0}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    return-object v2

    .line 287
    :cond_8
    new-instance v0, Lcom/unity3d/ads/core/data/model/CachedFile;

    .line 288
    .line 289
    if-nez v2, :cond_9

    .line 290
    .line 291
    const-string v2, ""

    .line 292
    .line 293
    :cond_9
    move-object v8, v2

    .line 294
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    .line 295
    .line 296
    .line 297
    move-result-wide v9

    .line 298
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getProtocol()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    if-eqz v7, :cond_a

    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    :goto_8
    move v12, v2

    .line 309
    goto :goto_9

    .line 310
    :cond_a
    const v2, 0x7fffffff

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :goto_9
    const-string v3, ""

    .line 315
    .line 316
    move-object v2, v0

    .line 317
    move-object v7, v8

    .line 318
    move-wide v8, v9

    .line 319
    move-object v10, v11

    .line 320
    move v11, v12

    .line 321
    invoke-direct/range {v2 .. v11}, Lcom/unity3d/ads/core/data/model/CachedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    .line 325
    .line 326
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 327
    .line 328
    invoke-direct {v2, v0, v3}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)V

    .line 329
    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_b
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 333
    .line 334
    sget-object v5, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 335
    .line 336
    sget-object v6, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 337
    .line 338
    const/4 v8, 0x4

    .line 339
    const/4 v9, 0x0

    .line 340
    const/4 v7, 0x0

    .line 341
    move-object v4, v2

    .line 342
    invoke-direct/range {v4 .. v9}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    .line 344
    .line 345
    :goto_a
    return-object v2

    .line 346
    :goto_b
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 347
    .line 348
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 349
    .line 350
    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 351
    .line 352
    invoke-direct {v2, v3, v4, v0}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    return-object v2
.end method
