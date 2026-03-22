.class final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeCheckInDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->F0()V
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
    c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1"
    f = "HomeCheckInDialog.kt"
    l = {
        0xfd,
        0x103,
        0x10f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->j:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->h:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_3
    move-object v1, p1

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v6, "requireContext(...)"

    .line 65
    .line 66
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 70
    .line 71
    invoke-static {v6}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskId()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    goto :goto_0

    .line 82
    :cond_5
    move-object v6, v5

    .line 83
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iput v4, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->j:I

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1, v1, v6, v4, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->c(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    move-object v4, v1

    .line 106
    check-cast v4, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->k0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;->getTaskBonus()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;

    .line 122
    .line 123
    invoke-direct {v8, p1, v6, v5}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;ILrs/c;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->i:Ljava/lang/Object;

    .line 129
    .line 130
    iput v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->j:I

    .line 131
    .line 132
    invoke-static {v7, v8, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-ne p1, v0, :cond_6

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 140
    .line 141
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1;

    .line 152
    .line 153
    invoke-direct {v4, p1, v5}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->h:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->i:Ljava/lang/Object;

    .line 159
    .line 160
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->j:I

    .line 161
    .line 162
    invoke-static {v3, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-ne p1, v0, :cond_7

    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
