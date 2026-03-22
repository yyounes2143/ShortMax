.class final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->b0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryTTPInfo$1"
    f = "BillingViewModel.kt"
    l = {
        0x117
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/Integer;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->j:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->j:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/payment/PaymentRepo;->a:Lcom/startshorts/androidplayer/repo/payment/PaymentRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->j:Ljava/lang/Integer;

    .line 38
    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/payment/PaymentRepo;->a(Ljava/lang/String;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/billing/b$o;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v4, v3

    .line 74
    :goto_1
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderStatus()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v5, v3

    .line 82
    :goto_2
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    move-object v6, v3

    .line 90
    :goto_3
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :cond_6
    new-instance v1, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 97
    .line 98
    invoke-direct {v1, v5, v4, v6, v3}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$o;-><init>(Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method
