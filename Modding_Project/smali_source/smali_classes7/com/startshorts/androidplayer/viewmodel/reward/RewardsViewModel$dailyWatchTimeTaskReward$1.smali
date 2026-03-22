.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->F(Ljava/util/List;ILjava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$dailyWatchTimeTaskReward$1"
    f = "RewardsViewModel.kt"
    l = {
        0x1d4
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n1557#2:589\n1628#2,3:590\n1#3:593\n125#4,13:594\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1\n*L\n467#1:589\n467#1:590,3\n492#1:594,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->i:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->l:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->l:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->h:I

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
    goto :goto_1

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->i:Ljava/util/List;

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Iterable;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getTaskId()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 77
    .line 78
    sget-object v3, Lvi/e;->a:Lvi/e;

    .line 79
    .line 80
    invoke-virtual {v3}, Lvi/e;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getDay()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->h:I

    .line 89
    .line 90
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->f(Ljava/util/List;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->i:Ljava/util/List;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->k:Ljava/lang/String;

    .line 102
    .line 103
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->l:I

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v6, 0x0

    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    move-object v5, p1

    .line 113
    check-cast v5, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchRewardResult;

    .line 114
    .line 115
    if-nez v5, :cond_4

    .line 116
    .line 117
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_4
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 121
    .line 122
    new-instance v9, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v8, "scene"

    .line 128
    .line 129
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "type"

    .line 133
    .line 134
    const-string v8, "watch_drama"

    .line 135
    .line 136
    invoke-virtual {v9, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v3, "task_name"

    .line 140
    .line 141
    const-string v8, "cumulative_duration"

    .line 142
    .line 143
    invoke-virtual {v9, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 151
    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const-string v8, "time"

    .line 159
    .line 160
    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :cond_5
    const-string v3, "stage"

    .line 164
    .line 165
    invoke-virtual {v9, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    const/4 v12, 0x4

    .line 171
    const/4 v13, 0x0

    .line 172
    const-string v8, "task_finish"

    .line 173
    .line 174
    const-wide/16 v10, 0x0

    .line 175
    .line 176
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v3, Lvi/e;->a:Lvi/e;

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchRewardResult;->getTaskIds()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v3, v4}, Lvi/e;->f(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    sget-object v7, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 189
    .line 190
    const/4 v11, 0x6

    .line 191
    const/4 v12, 0x0

    .line 192
    const/4 v8, 0x1

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v10, 0x0

    .line 195
    invoke-static/range {v7 .. v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)Lkotlinx/coroutines/r;

    .line 199
    .line 200
    .line 201
    sget-object v3, Lud/a;->a:Lud/a;

    .line 202
    .line 203
    invoke-virtual {v3, v2}, Lud/a;->D0(Z)V

    .line 204
    .line 205
    .line 206
    check-cast v1, Ljava/lang/Iterable;

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move v3, v6

    .line 213
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_6

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 224
    .line 225
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getBonus()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    add-int/2addr v3, v4

    .line 230
    goto :goto_2

    .line 231
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/k$d;

    .line 236
    .line 237
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/reward/k$d;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 244
    .line 245
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    if-eqz p1, :cond_a

    .line 250
    .line 251
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 252
    .line 253
    const/4 v3, 0x0

    .line 254
    if-eqz v1, :cond_8

    .line 255
    .line 256
    move-object v1, p1

    .line 257
    check-cast v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    move-object v1, v3

    .line 261
    :goto_3
    if-nez v1, :cond_9

    .line 262
    .line 263
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 264
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v2, "onResponseFailure exception -> "

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p1, ", exception must not be null"

    .line 283
    .line 284
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    const-string v1, "ApiBuilder"

    .line 292
    .line 293
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    const/16 v4, 0x4e84

    .line 302
    .line 303
    if-ne p1, v4, :cond_a

    .line 304
    .line 305
    sget-object p1, Lud/b;->a:Lud/b;

    .line 306
    .line 307
    const-wide/16 v4, 0x0

    .line 308
    .line 309
    invoke-virtual {p1, v4, v5}, Lud/b;->k5(J)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v3}, Lud/b;->w3(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 313
    .line 314
    .line 315
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 316
    .line 317
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    const/4 v4, 0x2

    .line 322
    invoke-static {p1, v1, v6, v4, v3}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    sget-object p1, Lud/a;->a:Lud/a;

    .line 326
    .line 327
    invoke-virtual {p1, v2}, Lud/a;->D0(Z)V

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)Lkotlinx/coroutines/r;

    .line 331
    .line 332
    .line 333
    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 334
    .line 335
    return-object p1
.end method
