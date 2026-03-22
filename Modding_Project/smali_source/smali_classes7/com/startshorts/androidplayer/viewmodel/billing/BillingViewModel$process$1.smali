.class final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V
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
    c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$process$1"
    f = "BillingViewModel.kt"
    l = {
        0xe3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/billing/a;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;",
            "Lcom/startshorts/androidplayer/viewmodel/billing/a;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/a;

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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/a;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lgt/g0;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->i:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lgt/g0;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v3, 0x3

    .line 49
    const/4 v4, 0x0

    .line 50
    if-le p1, v3, :cond_2

    .line 51
    .line 52
    invoke-static {v1, v4, v2, v4}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 56
    .line 57
    const-string v0, "QueryProductDetailList -> check supportSubscription:failed"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/a;

    .line 65
    .line 66
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;->a()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-static {v1, v4, v2, v4}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 88
    .line 89
    const-string v0, "QueryProductDetailList -> check supportSubscription:success"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->k:Lcom/startshorts/androidplayer/viewmodel/billing/a;

    .line 97
    .line 98
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;->a()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->i:Ljava/lang/Object;

    .line 109
    .line 110
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->h:I

    .line 111
    .line 112
    const-wide/16 v3, 0x7d0

    .line 113
    .line 114
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v0, :cond_4

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 128
    .line 129
    add-int/2addr p1, v2

    .line 130
    invoke-static {v3, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v4, "QueryProductDetailList -> check supportSubscription:"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 146
    .line 147
    invoke-static {v4}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p1
.end method
