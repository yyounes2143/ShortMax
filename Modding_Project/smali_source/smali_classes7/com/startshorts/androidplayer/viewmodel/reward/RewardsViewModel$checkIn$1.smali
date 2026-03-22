.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->D(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$checkIn$1"
    f = "RewardsViewModel.kt"
    l = {
        0x149
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:I

.field final synthetic o:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;ILjava/lang/String;IZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "I",
            "Ljava/lang/String;",
            "IZ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->l:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->n:I

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->o:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 9
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->l:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->n:I

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->o:Z

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;ILjava/lang/String;IZLrs/c;)V

    .line 20
    .line 21
    .line 22
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->j:Ljava/lang/String;

    .line 38
    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v3, v2, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->e(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 49
    .line 50
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->l:I

    .line 51
    .line 52
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->m:Ljava/lang/String;

    .line 53
    .line 54
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->n:I

    .line 55
    .line 56
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;->o:Z

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/reward/a$e;

    .line 69
    .line 70
    invoke-direct {v6, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$e;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v6}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->b()Lkotlinx/coroutines/r;

    .line 79
    .line 80
    .line 81
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 82
    .line 83
    new-instance v8, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p1, "from"

    .line 89
    .line 90
    invoke-virtual {v8, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p1, "tickets"

    .line 94
    .line 95
    invoke-virtual {v8, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    const-string p1, "day"

    .line 99
    .line 100
    add-int/2addr v4, v2

    .line 101
    invoke-virtual {v8, p1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    const-string p1, "1"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-string p1, "0"

    .line 110
    .line 111
    :goto_1
    const-string v1, "is_auto"

    .line 112
    .line 113
    invoke-virtual {v8, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    const/4 v11, 0x4

    .line 119
    const/4 v12, 0x0

    .line 120
    const-string v7, "check_in_click"

    .line 121
    .line 122
    const-wide/16 v9, 0x0

    .line 123
    .line 124
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lud/a;->a:Lud/a;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Lud/a;->D0(Z)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->y()V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 138
    .line 139
    const/4 v5, 0x6

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v2, 0x1

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_4

    .line 152
    .line 153
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p1
.end method
