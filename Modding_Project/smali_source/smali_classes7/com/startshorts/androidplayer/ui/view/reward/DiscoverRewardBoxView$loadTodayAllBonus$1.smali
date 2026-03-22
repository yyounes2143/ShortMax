.class final Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRewardBoxView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->A()V
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
    c = "com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1"
    f = "DiscoverRewardBoxView.kt"
    l = {
        0x44,
        0x48,
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->j:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->j:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_2

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->h:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
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
    :cond_3
    move-object v1, p1

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->a:Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;

    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->C0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v5, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->i:I

    .line 65
    .line 66
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->h(ILrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->j:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    move-object v5, v1

    .line 82
    check-cast v5, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;->getUserTodayBonusTotal()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move v7, v6

    .line 93
    :goto_1
    invoke-virtual {p1, v7}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setTotalBonus(I)V

    .line 94
    .line 95
    .line 96
    sget-object v7, Lud/a;->a:Lud/a;

    .line 97
    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;->getUserTodayBonusTotal()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    :cond_6
    invoke-virtual {v7, v6}, Lud/a;->S0(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1$1$1;

    .line 112
    .line 113
    invoke-direct {v6, p1, v2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Lrs/c;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->h:Ljava/lang/Object;

    .line 117
    .line 118
    iput v4, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->i:I

    .line 119
    .line 120
    invoke-static {v5, v6, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_7

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->j:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 128
    .line 129
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_8

    .line 134
    .line 135
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1$2$1;

    .line 140
    .line 141
    invoke-direct {v5, p1, v2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1$2$1;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Lrs/c;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->h:Ljava/lang/Object;

    .line 145
    .line 146
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;->i:I

    .line 147
    .line 148
    invoke-static {v4, v5, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_8

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
