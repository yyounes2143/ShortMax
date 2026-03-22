.class final Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidCacheRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getFileInternal(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;
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
        "Lcom/unity3d/ads/core/data/model/CacheResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2"
    f = "AndroidCacheRepository.kt"
    l = {
        0x46,
        0x4d,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cacheDirectory:Ljava/io/File;

.field final synthetic $priority:I

.field final synthetic $url:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Ljava/lang/String;Ljava/io/File;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$cacheDirectory:Ljava/io/File;

    .line 6
    .line 7
    iput p4, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$priority:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$cacheDirectory:Ljava/io/File;

    .line 8
    .line 9
    iget v4, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$priority:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Ljava/lang/String;Ljava/io/File;ILrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->label:I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, 0x3

    .line 11
    const/4 v10, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    if-eq v0, v10, :cond_1

    .line 18
    .line 19
    if-ne v0, v9, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    iget-object v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lkt/e;

    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v14, v0

    .line 52
    move-object/from16 v0, p1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 59
    .line 60
    iget-object v2, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$url:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    iget-object v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->access$getLocalCacheDataSource$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$cacheDirectory:Ljava/io/File;

    .line 73
    .line 74
    iget-object v3, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$url:Ljava/lang/String;

    .line 75
    .line 76
    iget v4, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$priority:I

    .line 77
    .line 78
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iput-object v11, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v1, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->label:I

    .line 85
    .line 86
    move-object v1, v2

    .line 87
    move-object v2, v11

    .line 88
    move-object/from16 v5, p0

    .line 89
    .line 90
    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/core/data/datasource/CacheDataSource;->getFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, v7, :cond_4

    .line 95
    .line 96
    return-object v7

    .line 97
    :cond_4
    move-object v14, v11

    .line 98
    :goto_0
    check-cast v0, Lcom/unity3d/ads/core/data/model/CacheResult;

    .line 99
    .line 100
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    invoke-static {v8}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->access$getDownloadPriorityQueue$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget v2, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$priority:I

    .line 116
    .line 117
    new-instance v3, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1;

    .line 118
    .line 119
    iget-object v12, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;

    .line 120
    .line 121
    iget-object v13, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$cacheDirectory:Ljava/io/File;

    .line 122
    .line 123
    iget-object v15, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->$url:Ljava/lang/String;

    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    move-object v11, v3

    .line 128
    move/from16 v16, v2

    .line 129
    .line 130
    move-object/from16 v17, v0

    .line 131
    .line 132
    invoke-direct/range {v11 .. v18}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILkt/e;Lrs/c;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput v10, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->label:I

    .line 138
    .line 139
    invoke-virtual {v1, v2, v3, v6}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->invoke(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-ne v1, v7, :cond_6

    .line 144
    .line 145
    return-object v7

    .line 146
    :cond_6
    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->w(Lkt/b;)Lkt/b;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v8, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput v9, v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;->label:I

    .line 153
    .line 154
    invoke-static {v0, v6}, Lkotlinx/coroutines/flow/c;->y(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-ne v0, v7, :cond_7

    .line 159
    .line 160
    return-object v7

    .line 161
    :cond_7
    :goto_2
    return-object v0
.end method
