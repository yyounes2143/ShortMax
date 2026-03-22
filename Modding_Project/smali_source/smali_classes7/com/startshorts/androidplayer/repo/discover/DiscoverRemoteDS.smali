.class public final Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;
.super Ljava/lang/Object;
.source "DiscoverRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
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
.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2;

    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    move-object v6, v4

    .line 78
    move/from16 v7, p1

    .line 79
    .line 80
    move/from16 v8, p2

    .line 81
    .line 82
    move-object/from16 v9, p3

    .line 83
    .line 84
    move-object/from16 v10, p4

    .line 85
    .line 86
    move-object/from16 v11, p5

    .line 87
    .line 88
    move/from16 v12, p6

    .line 89
    .line 90
    move-object/from16 v13, p7

    .line 91
    .line 92
    move-object/from16 v14, p8

    .line 93
    .line 94
    invoke-direct/range {v6 .. v15}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 95
    .line 96
    .line 97
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 98
    .line 99
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v0, v3, :cond_3

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$2;

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    move-object v6, v4

    .line 76
    move-object v7, p1

    .line 77
    move/from16 v8, p2

    .line 78
    .line 79
    move/from16 v9, p3

    .line 80
    .line 81
    move/from16 v10, p4

    .line 82
    .line 83
    move-object/from16 v11, p5

    .line 84
    .line 85
    move-object/from16 v12, p6

    .line 86
    .line 87
    invoke-direct/range {v6 .. v13}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$2;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 88
    .line 89
    .line 90
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchDiscoverRankingBanner$1;->j:I

    .line 91
    .line 92
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-ne v0, v3, :cond_3

    .line 97
    .line 98
    return-object v3

    .line 99
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
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
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    move-object v6, v4

    .line 76
    move-object v7, p1

    .line 77
    move-object v8, p2

    .line 78
    move/from16 v9, p3

    .line 79
    .line 80
    move-object/from16 v10, p4

    .line 81
    .line 82
    move-object/from16 v11, p5

    .line 83
    .line 84
    invoke-direct/range {v6 .. v12}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 85
    .line 86
    .line 87
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$1;->j:I

    .line 88
    .line 89
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v3, :cond_3

    .line 94
    .line 95
    return-object v3

    .line 96
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;->j:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;->j:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;

    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    move-object v6, v4

    .line 78
    move-object/from16 v7, p1

    .line 79
    .line 80
    move-object/from16 v8, p2

    .line 81
    .line 82
    move/from16 v9, p3

    .line 83
    .line 84
    move-object/from16 v10, p4

    .line 85
    .line 86
    move-object/from16 v11, p5

    .line 87
    .line 88
    move/from16 v12, p6

    .line 89
    .line 90
    move/from16 v13, p7

    .line 91
    .line 92
    move/from16 v14, p8

    .line 93
    .line 94
    invoke-direct/range {v6 .. v15}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)V

    .line 95
    .line 96
    .line 97
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$1;->j:I

    .line 98
    .line 99
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v0, v3, :cond_3

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;->j:I

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
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    new-instance v2, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v2, p1, p2, p3, v4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;-><init>(ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$1;->j:I

    .line 75
    .line 76
    invoke-virtual {p4, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v1, :cond_3

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final f(IJZLjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$2;

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    move-object v6, v4

    .line 76
    move v7, p1

    .line 77
    move-wide/from16 v8, p2

    .line 78
    .line 79
    move/from16 v10, p4

    .line 80
    .line 81
    move-object/from16 v11, p5

    .line 82
    .line 83
    move-object/from16 v12, p6

    .line 84
    .line 85
    invoke-direct/range {v6 .. v13}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$2;-><init>(IJZLjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 86
    .line 87
    .line 88
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabs$1;->j:I

    .line 89
    .line 90
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, v3, :cond_3

    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
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
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2;

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    move-object v6, v4

    .line 76
    move-object v7, p1

    .line 77
    move-object v8, p2

    .line 78
    move/from16 v9, p3

    .line 79
    .line 80
    move-object/from16 v10, p4

    .line 81
    .line 82
    move-object/from16 v11, p5

    .line 83
    .line 84
    invoke-direct/range {v6 .. v12}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 85
    .line 86
    .line 87
    iput v5, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 88
    .line 89
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v3, :cond_3

    .line 94
    .line 95
    return-object v3

    .line 96
    :cond_3
    :goto_1
    return-object v0
.end method
