.class final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Z(Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedSubs$1"
    f = "BillingViewModel.kt"
    l = {
        0x224,
        0x231
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->j:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->h:I

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
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v4, Lle/h;->a:Lle/h;

    .line 43
    .line 44
    invoke-virtual {v4}, Lle/h;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->h:I

    .line 49
    .line 50
    invoke-virtual {p1, v1, v4, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Ljava/util/Collection;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->j:Ljava/lang/String;

    .line 74
    .line 75
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->h:I

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2, v3, p1, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->E(ZLjava/lang/String;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_5
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 94
    .line 95
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    :goto_2
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 103
    .line 104
    new-instance v4, Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->j:Ljava/lang/String;

    .line 110
    .line 111
    const-string v0, "type"

    .line 112
    .line 113
    const-string v1, "manual"

    .line 114
    .line 115
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "genre"

    .line 119
    .line 120
    const-string v1, "subscription"

    .line 121
    .line 122
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "result"

    .line 126
    .line 127
    const-string v1, "0"

    .line 128
    .line 129
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "scene"

    .line 133
    .line 134
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x0

    .line 141
    const-string v3, "restore_result"

    .line 142
    .line 143
    const-wide/16 v5, 0x0

    .line 144
    .line 145
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;->i:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$j;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$j;

    .line 155
    .line 156
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p1
.end method
