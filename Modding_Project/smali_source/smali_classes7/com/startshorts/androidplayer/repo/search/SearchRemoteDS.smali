.class public final Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;
.super Ljava/lang/Object;
.source "SearchRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchRemoteDS.kt\ncom/startshorts/androidplayer/repo/search/SearchRemoteDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1#2:54\n1567#3:55\n1598#3,4:56\n1567#3:60\n1598#3,4:61\n*S KotlinDebug\n*F\n+ 1 SearchRemoteDS.kt\ncom/startshorts/androidplayer/repo/search/SearchRemoteDS\n*L\n36#1:55\n36#1:56,4\n47#1:60\n47#1:61,4\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;->j:I

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
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p4, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$2;

    .line 75
    .line 76
    invoke-direct {v2, p2, p3, p1, v4}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$2;-><init>(IILjava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResult$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p4, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_4

    .line 93
    .line 94
    check-cast p1, Ljava/util/List;

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method public final b(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/search/SearchResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Lkotlin/Result;

    .line 47
    .line 48
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static {v0, v4, v6, v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$2;

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    move-object v7, v4

    .line 82
    move/from16 v8, p2

    .line 83
    .line 84
    move/from16 v9, p3

    .line 85
    .line 86
    move-object v10, p1

    .line 87
    move-object/from16 v11, p4

    .line 88
    .line 89
    move-object/from16 v12, p5

    .line 90
    .line 91
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$2;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    iput v6, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$querySearchResultV2$1;->j:I

    .line 95
    .line 96
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-ne v0, v3, :cond_3

    .line 101
    .line 102
    return-object v3

    .line 103
    :cond_3
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    check-cast v0, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 114
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v1, v5, v5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public final c(IILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v7, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v5, v7, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$2;

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    move-object v8, v4

    .line 82
    move v9, p1

    .line 83
    move/from16 v10, p2

    .line 84
    .line 85
    move-object/from16 v11, p3

    .line 86
    .line 87
    move-object/from16 v12, p4

    .line 88
    .line 89
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$2;-><init>(IILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 90
    .line 91
    .line 92
    iput v7, v1, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS$searchPopularAndRanking$1;->j:I

    .line 93
    .line 94
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v3, :cond_3

    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_3
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    check-cast v0, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;->getTopResponseList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    check-cast v1, Ljava/lang/Iterable;

    .line 118
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    const/16 v4, 0xa

    .line 122
    .line 123
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    add-int/lit8 v7, v5, 0x1

    .line 145
    .line 146
    if-gez v5, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 149
    .line 150
    .line 151
    :cond_4
    check-cast v4, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->setIndex(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move v5, v7

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    if-nez v0, :cond_6

    .line 162
    .line 163
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 164
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, v1, v6, v6}, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0
.end method
