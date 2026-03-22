.class final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->O(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;)V
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
    c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$createOtherOrder$1"
    f = "BillingViewModel.kt"
    l = {
        0x238
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/billing/a$d;",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->h:I

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->b()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->a()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->h()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->f()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->i()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->g()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->h:I

    .line 90
    .line 91
    move-object v2, p1

    .line 92
    move-object v11, p0

    .line 93
    invoke-virtual/range {v1 .. v11}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->v(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-ne p1, v0, :cond_2

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x0

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    move-object v1, p1

    .line 110
    check-cast v1, Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;->getThirdResp()Lcom/startshorts/androidplayer/bean/order/OtherOrderResp;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/order/OtherOrderResp;->getStatus()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move-object v3, v2

    .line 126
    :goto_1
    const-string v4, "COMPLETED"

    .line 127
    .line 128
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 137
    .line 138
    invoke-direct {v4, v3, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;-><init>(ZLcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;-><init>(ZLcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1
.end method
