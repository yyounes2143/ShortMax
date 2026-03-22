.class final Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->c()V
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
    c = "com.startshorts.androidplayer.repo.notification.NotificationRepo$acceptNotificationReward$1"
    f = "NotificationRepo.kt"
    l = {
        0x38,
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;",
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;-><init>(Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->i:I

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
    goto/16 :goto_1

    .line 19
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
    check-cast p1, Lkotlin/Result;

    .line 32
    .line 33
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->d(Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;)Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput v3, p0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->i:I

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;->a(Lrs/c;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;

    .line 64
    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_4
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "acceptNotificationReward succeed -> taskBonus="

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;->getTaskBonus()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v6, "NotificationRepo"

    .line 94
    .line 95
    invoke-virtual {v4, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v7, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 99
    .line 100
    const/4 v11, 0x7

    .line 101
    const/4 v12, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    invoke-static/range {v7 .. v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v4, Lud/b;->a:Lud/b;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Lud/b;->m2(Z)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 114
    .line 115
    new-instance v7, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, "from"

    .line 121
    .line 122
    const-string v4, "discover"

    .line 123
    .line 124
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v3, "type"

    .line 128
    .line 129
    const-string v4, "newbie_task"

    .line 130
    .line 131
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v3, "task_name"

    .line 135
    .line 136
    const-string v4, "customize"

    .line 137
    .line 138
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v3, "tickets"

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;->getTaskBonus()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    const/4 v10, 0x4

    .line 153
    const/4 v11, 0x0

    .line 154
    const-string v6, "task_finish"

    .line 155
    .line 156
    const-wide/16 v8, 0x0

    .line 157
    .line 158
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-instance v4, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1$1$2;

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-direct {v4, v1, v5}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1$1$2;-><init>(Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;Lrs/c;)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->h:Ljava/lang/Object;

    .line 172
    .line 173
    iput v2, p0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;->i:I

    .line 174
    .line 175
    invoke-static {v3, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-ne p1, v0, :cond_5

    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1
.end method
