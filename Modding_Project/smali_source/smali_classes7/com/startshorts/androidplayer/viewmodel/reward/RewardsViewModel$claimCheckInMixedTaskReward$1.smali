.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->E(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$claimCheckInMixedTaskReward$1"
    f = "RewardsViewModel.kt"
    l = {
        0x177
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,588:1\n1#2:589\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->l:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->l:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getRequestId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->h:I

    .line 50
    .line 51
    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->A(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->j:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->l:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_6

    .line 69
    .line 70
    move-object v4, p1

    .line 71
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/WatchAdMultiRewardResult;

    .line 72
    .line 73
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 74
    .line 75
    new-instance v7, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "type"

    .line 81
    .line 82
    const-string v8, "check_in"

    .line 83
    .line 84
    invoke-virtual {v7, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskId()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v8, "task_id"

    .line 96
    .line 97
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskType()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const-string v8, "task_type_id"

    .line 109
    .line 110
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskType()Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-nez v6, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-ne v6, v2, :cond_4

    .line 125
    .line 126
    const-string v6, "\u5e7f\u544a\u7c7b"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    :goto_1
    const-string v6, ""

    .line 130
    .line 131
    :goto_2
    const-string v8, "task_type_name"

    .line 132
    .line 133
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskSortId()Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v6, "task_sort_id"

    .line 145
    .line 146
    invoke-virtual {v7, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "placement"

    .line 150
    .line 151
    invoke-virtual {v7, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    const/4 v10, 0x4

    .line 157
    const/4 v11, 0x0

    .line 158
    const-string v6, "task_finish"

    .line 159
    .line 160
    const-wide/16 v8, 0x0

    .line 161
    .line 162
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdMultiRewardResult;->getBonus()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;

    .line 176
    .line 177
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;-><init>(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    const/4 v3, 0x0

    .line 182
    :goto_3
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lud/a;->a:Lud/a;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Lud/a;->D0(Z)V

    .line 188
    .line 189
    .line 190
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 191
    .line 192
    const/4 v7, 0x6

    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v4, 0x1

    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v6, 0x0

    .line 197
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 201
    .line 202
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_7

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;

    .line 213
    .line 214
    const/4 v1, 0x0

    .line 215
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    return-object p1
.end method
