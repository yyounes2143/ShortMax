.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->T0()V
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
    c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$loadSubscribeDiscountData$1"
    f = "DiscoverTabFragment.kt"
    l = {
        0x13f,
        0x146
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lkotlin/Result;

    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 41
    .line 42
    iput v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->i:I

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->o(Lrs/c;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;->getProductList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->u0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->f0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1$2$1;

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-direct {v4, v1, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->h:Ljava/lang/Object;

    .line 95
    .line 96
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;->i:I

    .line 97
    .line 98
    invoke-static {v3, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
