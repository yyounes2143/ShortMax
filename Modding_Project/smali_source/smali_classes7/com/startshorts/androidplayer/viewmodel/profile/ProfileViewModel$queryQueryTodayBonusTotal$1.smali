.class final Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->H()V
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
    c = "com.startshorts.androidplayer.viewmodel.profile.ProfileViewModel$queryQueryTodayBonusTotal$1"
    f = "ProfileViewModel.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->i:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->i:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->a:Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;

    .line 34
    .line 35
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->C0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->h:I

    .line 46
    .line 47
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->h(ILrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->i:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    move-object v1, p1

    .line 64
    check-cast v1, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;

    .line 65
    .line 66
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Z)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lud/a;->a:Lud/a;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;->getUserTodayBonusTotal()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v4, v2

    .line 79
    :goto_1
    invoke-virtual {v3, v4}, Lud/a;->S0(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/profile/f$b;

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/profile/TodayBonusTotal;->getUserTodayBonusTotal()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v1, v2

    .line 96
    :goto_2
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/viewmodel/profile/f$b;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;->i:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Z)V

    .line 111
    .line 112
    .line 113
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1
.end method
