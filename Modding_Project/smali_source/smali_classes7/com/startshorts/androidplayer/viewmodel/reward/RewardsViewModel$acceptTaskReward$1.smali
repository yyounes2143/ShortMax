.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->A(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$acceptTaskReward$1"
    f = "RewardsViewModel.kt"
    l = {
        0x21c,
        0x23e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

.field final synthetic m:I

.field final synthetic n:I

.field final synthetic o:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;IILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->j:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->l:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->m:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->n:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->o:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic i(ILjava/lang/Integer;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->k(ILjava/lang/Integer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic j(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final k(ILjava/lang/Integer;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    :goto_1
    return p0
.end method

.method private static final n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->j:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->l:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->m:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->n:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->o:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;IILjava/lang/String;Lrs/c;)V

    .line 18
    .line 19
    .line 20
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->i:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    check-cast v2, Lkotlin/Result;

    .line 36
    .line 37
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 46
    .line 47
    iget-object v5, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->j:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v6, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->k:Ljava/lang/String;

    .line 50
    .line 51
    iput v4, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->i:I

    .line 52
    .line 53
    invoke-virtual {v2, v5, v6, v4, v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->c(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-ne v2, v1, :cond_3

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->l:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 61
    .line 62
    iget-object v6, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->k:Ljava/lang/String;

    .line 63
    .line 64
    iget v7, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->m:I

    .line 65
    .line 66
    iget v8, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->n:I

    .line 67
    .line 68
    iget-object v9, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->o:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v10, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->j:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_7

    .line 77
    .line 78
    move-object v11, v2

    .line 79
    check-cast v11, Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    new-instance v13, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;

    .line 86
    .line 87
    const/4 v14, 0x0

    .line 88
    invoke-direct {v13, v6, v14, v3, v14}, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v12, v13}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v6, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 95
    .line 96
    const/16 v19, 0x6

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/16 v16, 0x1

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    move-object v15, v6

    .line 107
    invoke-static/range {v15 .. v20}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    sget-object v12, Lud/b;->a:Lud/b;

    .line 115
    .line 116
    invoke-virtual {v12, v6}, Lud/b;->x1(Ljava/lang/String;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    if-nez v13, :cond_4

    .line 121
    .line 122
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    :cond_4
    check-cast v13, Ljava/util/Collection;

    .line 127
    .line 128
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-nez v15, :cond_5

    .line 133
    .line 134
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/reward/e;

    .line 139
    .line 140
    invoke-direct {v15, v7}, Lcom/startshorts/androidplayer/viewmodel/reward/e;-><init>(I)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/f;

    .line 144
    .line 145
    invoke-direct {v3, v15}, Lcom/startshorts/androidplayer/viewmodel/reward/f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v13, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, v6, v13}, Lud/b;->K4(Ljava/lang/String;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    packed-switch v7, :pswitch_data_0

    .line 155
    .line 156
    .line 157
    :pswitch_0
    const-string v3, ""

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_1
    const-string v3, "follow_ins"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_2
    const-string v3, "follow_tt"

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_3
    const-string v3, "follow_youtube"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_4
    const-string v3, "follow_fb"

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_5
    const-string v3, "OpenFloatingWindow"

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_6
    const-string v3, "task_google_login"

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :pswitch_7
    const-string v3, "notification"

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_8
    const-string v3, "provide_phone"

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :pswitch_9
    const-string v3, "provide_email"

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_a
    const-string v3, "task_facebook_login"

    .line 188
    .line 189
    :goto_1
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 190
    .line 191
    invoke-virtual {v6, v3, v8, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->y0(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v3, Lud/a;->a:Lud/a;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lud/a;->D0(Z)V

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)V

    .line 200
    .line 201
    .line 202
    const/4 v3, 0x4

    .line 203
    if-ne v7, v3, :cond_6

    .line 204
    .line 205
    invoke-virtual {v12, v4}, Lud/b;->m2(Z)V

    .line 206
    .line 207
    .line 208
    :cond_6
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1$1$2;

    .line 213
    .line 214
    invoke-direct {v4, v11, v10, v14}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1$1$2;-><init>(Lcom/startshorts/androidplayer/bean/task/AcceptTaskRewardResult;Landroid/content/Context;Lrs/c;)V

    .line 215
    .line 216
    .line 217
    iput-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->h:Ljava/lang/Object;

    .line 218
    .line 219
    const/4 v2, 0x2

    .line 220
    iput v2, v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;->i:I

    .line 221
    .line 222
    invoke-static {v3, v4, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-ne v2, v1, :cond_7

    .line 227
    .line 228
    return-object v1

    .line 229
    :cond_7
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 230
    .line 231
    return-object v1

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
