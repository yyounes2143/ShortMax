.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->C0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$unlockEpisodeByDiscount$1"
    f = "UnlockViewModel.kt"
    l = {
        0x1fa,
        0x1ff,
        0x20c,
        0x218
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Landroid/content/Context;

.field final synthetic l:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

.field final synthetic p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->k:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->m:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->n:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->o:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->k:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->m:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->n:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->o:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->j:I

    .line 8
    .line 9
    const/4 v10, 0x4

    .line 10
    const/4 v11, 0x3

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v12, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    if-eq v0, v11, :cond_1

    .line 21
    .line 22
    if-ne v0, v10, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_2
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    check-cast v1, Lkotlin/Result;

    .line 50
    .line 51
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object/from16 v0, p1

    .line 61
    .line 62
    check-cast v0, Lkotlin/Result;

    .line 63
    .line 64
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_4
    move-object v13, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 74
    .line 75
    iget-object v3, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->k:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v4, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget-object v5, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->m:Ljava/lang/String;

    .line 84
    .line 85
    iput v2, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->j:I

    .line 86
    .line 87
    invoke-virtual {v0, v3, v4, v5, v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->t(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-ne v0, v9, :cond_4

    .line 92
    .line 93
    return-object v9

    .line 94
    :goto_0
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->o:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 95
    .line 96
    iget-object v2, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 97
    .line 98
    invoke-static {v13}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_9

    .line 103
    .line 104
    if-eqz v13, :cond_9

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/f$e;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-direct {v3, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$e;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 129
    .line 130
    sget-object v3, Lud/a;->a:Lud/a;

    .line 131
    .line 132
    invoke-virtual {v3}, Lud/a;->q()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-nez v3, :cond_6

    .line 137
    .line 138
    const-string v3, ""

    .line 139
    .line 140
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    iput-object v13, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput v1, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->j:I

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    const/4 v6, 0x1

    .line 154
    const/4 v7, 0x0

    .line 155
    move-object v2, v3

    .line 156
    move v3, v4

    .line 157
    move v4, v5

    .line 158
    move-object/from16 v5, p0

    .line 159
    .line 160
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->s(Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;Landroid/content/Context;Ljava/lang/String;IILrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-ne v1, v9, :cond_7

    .line 165
    .line 166
    return-object v9

    .line 167
    :cond_7
    move-object v0, v13

    .line 168
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    move-object v2, v1

    .line 175
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 176
    .line 177
    if-eqz v2, :cond_8

    .line 178
    .line 179
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 184
    .line 185
    filled-new-array {v2}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    const/16 v19, 0x18

    .line 194
    .line 195
    const/16 v20, 0x0

    .line 196
    .line 197
    const/4 v14, 0x5

    .line 198
    const/16 v16, 0x1

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    const/16 v18, 0x0

    .line 203
    .line 204
    move-object v13, v1

    .line 205
    invoke-direct/range {v13 .. v20}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1$1$1$1;

    .line 217
    .line 218
    invoke-direct {v3, v12}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1$1$1$1;-><init>(Lrs/c;)V

    .line 219
    .line 220
    .line 221
    iput-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->h:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v1, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->i:Ljava/lang/Object;

    .line 224
    .line 225
    iput v11, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->j:I

    .line 226
    .line 227
    invoke-static {v2, v3, v8}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-ne v0, v9, :cond_9

    .line 232
    .line 233
    return-object v9

    .line 234
    :cond_9
    :goto_2
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->m:Ljava/lang/String;

    .line 235
    .line 236
    if-eqz v0, :cond_b

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_a

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_a
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 248
    .line 249
    .line 250
    :cond_b
    :goto_3
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->n:Ljava/lang/String;

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_c

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_c
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 262
    .line 263
    new-instance v1, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 264
    .line 265
    sget-object v2, Lle/h;->a:Lle/h;

    .line 266
    .line 267
    invoke-virtual {v2}, Lle/h;->a()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    iget-object v3, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->n:Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iput-object v12, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->h:Ljava/lang/Object;

    .line 277
    .line 278
    iput-object v12, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->i:Ljava/lang/Object;

    .line 279
    .line 280
    iput v10, v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;->j:I

    .line 281
    .line 282
    invoke-virtual {v0, v1, v8}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-ne v0, v9, :cond_d

    .line 287
    .line 288
    return-object v9

    .line 289
    :cond_d
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 290
    .line 291
    return-object v0
.end method
