.class final Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shorttv/aar/billing/core/BillingClient;->G()V
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
    c = "com.shorttv.aar.billing.core.BillingClient$checkNotAcknowledgedPurchases$1"
    f = "BillingClient.kt"
    l = {
        0x11b,
        0x121
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/shorttv/aar/billing/core/BillingClient;


# direct methods
.method constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shorttv/aar/billing/core/BillingClient;",
            "Lrs/c<",
            "-",
            "Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

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
    new-instance p1, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->i:I

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
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 50
    .line 51
    iput v3, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->i:I

    .line 52
    .line 53
    const-string v4, "inapp"

    .line 54
    .line 55
    invoke-virtual {v1, v4, p0}, Lcom/shorttv/aar/billing/core/BillingClient;->F(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-ne v1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    move-object v5, v1

    .line 63
    move-object v1, p1

    .line 64
    move-object p1, v5

    .line 65
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 66
    .line 67
    check-cast p1, Ljava/util/Collection;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->n(Lcom/shorttv/aar/billing/core/BillingClient;)Lzc/j;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    invoke-virtual {p1}, Lzc/j;->c()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-ne p1, v3, :cond_9

    .line 94
    .line 95
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 98
    .line 99
    iput v2, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->i:I

    .line 100
    .line 101
    const-string/jumbo v2, "subs"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2, p0}, Lcom/shorttv/aar/billing/core/BillingClient;->F(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_6

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_6
    move-object v0, v1

    .line 112
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 113
    .line 114
    check-cast p1, Ljava/util/Collection;

    .line 115
    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    :cond_8
    :goto_3
    move-object v1, v0

    .line 129
    :cond_9
    move-object p1, v1

    .line 130
    check-cast p1, Ljava/util/Collection;

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_a

    .line 137
    .line 138
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;->j:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 139
    .line 140
    invoke-static {p1, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->v(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
