.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->V(Z)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryWatchAdBonuses$1"
    f = "RewardsViewModel.kt"
    l = {
        0x192
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1\n*L\n412#1:589,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;


# direct methods
.method constructor <init>(ZLcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->i:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;-><init>(ZLcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->h:I

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
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->i:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/k$g;->a:Lcom/startshorts/androidplayer/viewmodel/reward/k$g;

    .line 44
    .line 45
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 49
    .line 50
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->h:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->x(Lrs/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->i:Z

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x0

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    check-cast v2, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->getTaskUnCompletedToast()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object v4, v3

    .line 81
    :goto_1
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->X(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;

    .line 89
    .line 90
    invoke-direct {v4, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;-><init>(ZLcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    move-object v3, p1

    .line 109
    check-cast v3, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 110
    .line 111
    :cond_6
    if-nez v3, :cond_7

    .line 112
    .line 113
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, "onResponseFailure exception -> "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, ", exception must not be null"

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v1, "ApiBuilder"

    .line 142
    .line 143
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method
