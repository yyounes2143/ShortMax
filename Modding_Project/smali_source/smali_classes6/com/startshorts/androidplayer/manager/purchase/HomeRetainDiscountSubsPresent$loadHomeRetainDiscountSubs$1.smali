.class final Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeRetainDiscountSubsPresent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->k()V
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
    c = "com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1"
    f = "HomeRetainDiscountSubsPresent.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;->a:Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;->b(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->j()Lgt/g0;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v6, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$1;

    .line 64
    .line 65
    invoke-direct {v6, v2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$1;-><init>(Lrs/c;)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x3

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->d(Z)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;->getSubscriptionDiscountProduct()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    filled-new-array {v3}, [Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    sget-object v3, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->j()Lgt/g0;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-instance v7, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;

    .line 124
    .line 125
    invoke-direct {v7, v0, v2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;-><init>(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;Lrs/c;)V

    .line 126
    .line 127
    .line 128
    const/4 v8, 0x3

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    invoke-static/range {v4 .. v9}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->d(Z)V

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->d(Z)V

    .line 145
    .line 146
    .line 147
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method
