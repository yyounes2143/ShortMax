.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->z0(Landroid/content/Context;ZZLjava/lang/String;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$singleUnlockEpisodeByCoins$1"
    f = "UnlockViewModel.kt"
    l = {
        0x1ca
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic k:Z

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLjava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->k:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->l:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->n:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->k:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->l:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->n:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLjava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 38
    .line 39
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->k:Z

    .line 40
    .line 41
    iget-boolean v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->l:Z

    .line 42
    .line 43
    iget-object v8, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->m:Ljava/lang/String;

    .line 44
    .line 45
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->h:I

    .line 46
    .line 47
    move-object v9, p0

    .line 48
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->s(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->l:Z

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->n:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->x0(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->n:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const/16 v5, 0x4e35

    .line 89
    .line 90
    if-ne v4, v5, :cond_4

    .line 91
    .line 92
    move v4, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v4, v1

    .line 95
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/16 v6, 0x4e34

    .line 100
    .line 101
    if-ne v5, v6, :cond_5

    .line 102
    .line 103
    move v5, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v5, v1

    .line 106
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/16 v6, 0x4e3c

    .line 111
    .line 112
    if-ne p1, v6, :cond_6

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    move v2, v1

    .line 116
    :goto_3
    if-nez v4, :cond_7

    .line 117
    .line 118
    if-nez v5, :cond_7

    .line 119
    .line 120
    if-nez v2, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;-><init>(ILjava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p1
.end method
