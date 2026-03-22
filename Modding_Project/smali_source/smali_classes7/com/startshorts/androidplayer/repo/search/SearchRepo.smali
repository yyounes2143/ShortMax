.class public final Lcom/startshorts/androidplayer/repo/search/SearchRepo;
.super Ljava/lang/Object;
.source "SearchRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchRepo.kt\ncom/startshorts/androidplayer/repo/search/SearchRepo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->c:Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;

    .line 21
    .line 22
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

.method private final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->N0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->N0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->b(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(IILrs/c;)Ljava/lang/Object;
    .locals 7
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v6, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p3, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->c:Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iput v2, v6, Lcom/startshorts/androidplayer/repo/search/SearchRepo$fetchPopularAndRanking$1;->j:I

    .line 72
    .line 73
    move v2, p1

    .line 74
    move v3, p2

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;->c(IILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    move-object p2, p1

    .line 89
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 90
    .line 91
    sget-object p3, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 92
    .line 93
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->f(Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-object p1
.end method

.method public final g()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->e()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->b:Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/search/SearchLocalDS;->d(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final i(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 8
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
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p6, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->c:Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;

    .line 62
    .line 63
    iput v2, v7, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchExactly$1;->j:I

    .line 64
    .line 65
    move-object v2, p1

    .line 66
    move v3, p2

    .line 67
    move v4, p3

    .line 68
    move-object v5, p4

    .line 69
    move-object v6, p5

    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;->b(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v0, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final j(Ljava/lang/String;IILrs/c;)Ljava/lang/Object;
    .locals 4
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
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;-><init>(Lcom/startshorts/androidplayer/repo/search/SearchRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;->j:I

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
    sget-object p4, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->c:Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;

    .line 60
    .line 61
    iput v3, v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo$searchFuzzy$1;->j:I

    .line 62
    .line 63
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/search/SearchRemoteDS;->a(Ljava/lang/String;IILrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    return-object p1
.end method
