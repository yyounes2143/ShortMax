.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->G(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$exchangeWatchAdBonusTask$1"
    f = "RewardsViewModel.kt"
    l = {
        0x1a6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1\n*L\n454#1:589,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

.field final synthetic j:Ljava/lang/Integer;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->j:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->l:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->j:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->l:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->j:Ljava/lang/Integer;

    .line 42
    .line 43
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->g(ILjava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->l:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x0

    .line 63
    const-string v6, ""

    .line 64
    .line 65
    if-eqz v4, :cond_6

    .line 66
    .line 67
    move-object v4, p1

    .line 68
    check-cast v4, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdTaskComplete;

    .line 69
    .line 70
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 71
    .line 72
    new-instance v9, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v8, "from"

    .line 78
    .line 79
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRewardValue()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 94
    :goto_1
    const-string v8, "tickets"

    .line 95
    .line 96
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskCategory()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v8, "type"

    .line 108
    .line 109
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v8, "task_id"

    .line 121
    .line 122
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v8, "task_type"

    .line 134
    .line 135
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-nez v3, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ne v3, v2, :cond_5

    .line 150
    .line 151
    const-string v3, "\u5e7f\u544a\u7c7b"

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_2
    move-object v3, v6

    .line 155
    :goto_3
    const-string v8, "task_type_name"

    .line 156
    .line 157
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v3, "task_name"

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v9, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskSortId()Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v8, "task_sort_id"

    .line 178
    .line 179
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const-string v8, "task_type_id"

    .line 191
    .line 192
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    const/4 v12, 0x4

    .line 198
    const/4 v13, 0x0

    .line 199
    const-string v8, "task_finish"

    .line 200
    .line 201
    const-wide/16 v10, 0x0

    .line 202
    .line 203
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object v3, Lud/b;->a:Lud/b;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-virtual {v3, v7, v5}, Lud/b;->q5(ILcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-direct {v7, v0, v4}, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;-><init>(ILcom/startshorts/androidplayer/bean/ad/QueryWatchAdTaskComplete;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Lud/a;->a:Lud/a;

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Lud/a;->D0(Z)V

    .line 234
    .line 235
    .line 236
    sget-object v7, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 237
    .line 238
    const/4 v11, 0x6

    .line 239
    const/4 v12, 0x0

    .line 240
    const/4 v8, 0x1

    .line 241
    const/4 v9, 0x0

    .line 242
    const/4 v10, 0x0

    .line 243
    invoke-static/range {v7 .. v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)V

    .line 247
    .line 248
    .line 249
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->k:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;->i:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 252
    .line 253
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_a

    .line 258
    .line 259
    instance-of v2, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 260
    .line 261
    if-eqz v2, :cond_7

    .line 262
    .line 263
    move-object v5, p1

    .line 264
    check-cast v5, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 265
    .line 266
    :cond_7
    if-nez v5, :cond_8

    .line 267
    .line 268
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 269
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v2, "onResponseFailure exception -> "

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p1, ", exception must not be null"

    .line 288
    .line 289
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    const-string v1, "ApiBuilder"

    .line 297
    .line 298
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    if-nez v2, :cond_9

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_9
    move-object v6, v2

    .line 320
    :goto_4
    invoke-direct {v0, v1, v6}, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;-><init>(ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 327
    .line 328
    return-object p1
.end method
