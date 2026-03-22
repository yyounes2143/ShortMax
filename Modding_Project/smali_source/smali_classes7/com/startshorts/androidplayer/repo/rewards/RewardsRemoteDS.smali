.class public final Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;
.super Ljava/lang/Object;
.source "RewardsRemoteDS.kt"


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
.method public final a(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;->j:I

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
    const/4 v5, 0x2

    .line 71
    invoke-static {p3, p1, v2, v5, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->v(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Landroid/content/Context;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$2;

    .line 76
    .line 77
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 78
    .line 79
    .line 80
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$acceptTaskReward$1;->j:I

    .line 81
    .line 82
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v1, :cond_3

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;->j:I

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
    goto :goto_2

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
    if-eqz p1, :cond_3

    .line 71
    .line 72
    move v5, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v5, v2

    .line 75
    :goto_1
    invoke-virtual {p3, v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p3, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$2;

    .line 84
    .line 85
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 86
    .line 87
    .line 88
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$checkIn$1;->j:I

    .line 89
    .line 90
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v1, :cond_4

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_4
    :goto_2
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchRewardResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$2;

    .line 71
    .line 72
    invoke-direct {v2, p1, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 73
    .line 74
    .line 75
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$dailyWatchTimeTaskReward$1;->j:I

    .line 76
    .line 77
    invoke-virtual {p3, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_3

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final d(ILjava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdTaskComplete;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$2;-><init>(ILjava/lang/Integer;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$exchangeWatchAdBonusTask$1;->j:I

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

.method public final e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
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
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$2;

    .line 71
    .line 72
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 73
    .line 74
    .line 75
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogAcceptTaskReward$1;->j:I

    .line 76
    .line 77
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_3

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;->j:I

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
    if-eqz p1, :cond_3

    .line 71
    .line 72
    move v2, v3

    .line 73
    :cond_3
    invoke-virtual {p3, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$2;

    .line 78
    .line 79
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 80
    .line 81
    .line 82
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$homeDialogCheckIn$1;->j:I

    .line 83
    .line 84
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v1, :cond_4

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_4
    :goto_1
    return-object p1
.end method

.method public final g(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
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
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$2;

    .line 75
    .line 76
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryCheckInInfo$1;->j:I

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

.method public final h(Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryDailyWatchTask$1;->j:I

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

.method public final i(Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$querySignAdTaskInfo$1;->j:I

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

.method public final j(Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/task/TaskModuleList;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryTaskList$1;->j:I

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

.method public final k(Lrs/c;)Ljava/lang/Object;
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
            "Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;->j:I

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
    new-instance v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$queryWatchAdBonusesTask$1;->j:I

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

.method public final l(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
            "I",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/checkin/WatchAdMultiRewardResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;->j:I

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
    invoke-virtual {p4, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p4, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$2;

    .line 75
    .line 76
    invoke-direct {p4, p2, p3, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$2;-><init>(ILjava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$signWatchAdV4$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, p4, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

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

.method public final m(Landroid/content/Context;ILrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;-><init>(Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;->j:I

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
    const/4 v5, 0x2

    .line 71
    invoke-static {p3, p1, v2, v5, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->v(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Landroid/content/Context;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p3, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$2;

    .line 76
    .line 77
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$2;-><init>(ILrs/c;)V

    .line 78
    .line 79
    .line 80
    iput v3, v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRemoteDS$startTask$1;->j:I

    .line 81
    .line 82
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v1, :cond_3

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_3
    :goto_1
    return-object p1
.end method
