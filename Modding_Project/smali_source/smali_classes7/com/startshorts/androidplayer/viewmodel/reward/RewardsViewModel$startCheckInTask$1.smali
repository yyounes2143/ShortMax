.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Y(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$startCheckInTask$1"
    f = "RewardsViewModel.kt"
    l = {
        0x118
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->B(Landroid/content/Context;ILrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v3, Lel/a;

    .line 67
    .line 68
    invoke-direct {v3, v2, v1}, Lel/a;-><init>(ZLcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lel/a;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-direct {v0, v2, v1}, Lel/a;-><init>(ZLcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
