.class final Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shorttv/aar/billing/core/BillingClient;->E()V
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
    c = "com.shorttv.aar.billing.core.BillingClient$checkFeatureSupport$1"
    f = "BillingClient.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/shorttv/aar/billing/core/BillingClient;


# direct methods
.method constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shorttv/aar/billing/core/BillingClient;",
            "Lrs/c<",
            "-",
            "Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

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
    new-instance p1, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->n(Lcom/shorttv/aar/billing/core/BillingClient;)Lzc/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lzc/j;->c()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string/jumbo v2, "subscriptions"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Lcd/g;->a(Lcom/android/billingclient/api/BillingResult;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v1, v0

    .line 50
    :goto_0
    invoke-static {p1, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->B(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v2, "fff"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-static {v1}, Lcd/g;->a(Lcom/android/billingclient/api/BillingResult;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :cond_2
    invoke-static {p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->A(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lbd/b;->a:Lbd/b;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "checkFeatureSupport -> mSupportOneTimePurchase("

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/shorttv/aar/billing/core/BillingClient;->p(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ") mSupportSubscription("

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/shorttv/aar/billing/core/BillingClient;->r(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ") mSupportProductDetails("

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;->i:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/shorttv/aar/billing/core/BillingClient;->q(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const/16 v1, 0x29

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v1, "BillingClient"

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method
