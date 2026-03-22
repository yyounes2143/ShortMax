.class public final Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;
.super Ljava/lang/Object;
.source "ImmersionRemoteDS.kt"


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
.method public final a(ILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;->j:I

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p3, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, p2, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$2;-><init>(ILjava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p3, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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
    return-object p1
.end method

.method public final b(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p2, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$2;-><init>(ILrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodeIdByShortsId$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;IIIIZLrs/c;)Ljava/lang/Object;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p8

    .line 3
    .line 4
    instance-of v2, v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;

    .line 10
    .line 11
    iget v3, v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;->j:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    iput v3, v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;->j:I

    .line 21
    .line 22
    move-object v3, p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct {v2, p0, v1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v1, v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;->h:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v5, v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;->j:I

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v1, Lkotlin/Result;

    .line 47
    .line 48
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-virtual {v1, p1, v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    if-eqz p7, :cond_4

    .line 77
    .line 78
    :cond_3
    move v5, v6

    .line 79
    :cond_4
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$2;

    .line 84
    .line 85
    const/4 v13, 0x0

    .line 86
    move-object v7, v1

    .line 87
    move-object/from16 v8, p2

    .line 88
    .line 89
    move/from16 v9, p3

    .line 90
    .line 91
    move/from16 v10, p4

    .line 92
    .line 93
    move/from16 v11, p5

    .line 94
    .line 95
    move/from16 v12, p6

    .line 96
    .line 97
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$2;-><init>(Ljava/lang/String;IIIILrs/c;)V

    .line 98
    .line 99
    .line 100
    iput v6, v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryEpisodes$1;->j:I

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v4, :cond_5

    .line 107
    .line 108
    return-object v4

    .line 109
    :cond_5
    :goto_1
    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;->j:I

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
    invoke-virtual {p4, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    :cond_3
    move v2, v3

    .line 74
    :cond_4
    invoke-virtual {p4, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$2;

    .line 79
    .line 80
    const/4 p4, 0x0

    .line 81
    invoke-direct {p3, p2, p4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 82
    .line 83
    .line 84
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryFirstEpisode$1;->j:I

    .line 85
    .line 86
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v1, :cond_5

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_5
    :goto_1
    return-object p1
.end method

.method public final e(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p1, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackConfig$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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
    return-object p1
.end method

.method public final f(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p2, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$2;-><init>(ILrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryImmersionBackShorts$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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
    return-object p1
.end method

.method public final g(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$2;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$2;-><init>(ILrs/c;)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisode$1;->j:I

    .line 75
    .line 76
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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

.method public final h(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$2;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$2;-><init>(ILrs/c;)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryNextEpisodeId$1;->j:I

    .line 75
    .line 76
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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

.method public final i(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$2;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v2, p1, p2, p3, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$2;-><init>(ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortDiscount$1;->j:I

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

.method public final j(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;->j:I

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p3, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, p2, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$2;-><init>(Ljava/lang/String;ILrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS$queryShortsDetail$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p3, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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
    return-object p1
.end method
