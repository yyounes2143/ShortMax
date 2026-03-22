.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n0(Z)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryUnlockEpisodeProductList$1"
    f = "UnlockViewModel.kt"
    l = {
        0x12b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,858:1\n1863#2,2:859\n1863#2,2:861\n1755#2,3:863\n1755#2,3:867\n1010#2,2:870\n1863#2,2:872\n1#3:866\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1\n*L\n318#1:859,2\n336#1:861,2\n341#1:863,3\n366#1:867,3\n375#1:870,2\n384#1:872,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->j:Z

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->j:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_24

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_23

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->j:Z

    .line 60
    .line 61
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 70
    .line 71
    sget-object p1, Lud/a;->a:Lud/a;

    .line 72
    .line 73
    invoke-virtual {p1}, Lud/a;->q()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const-string p1, ""

    .line 80
    .line 81
    :cond_2
    move-object v7, p1

    .line 82
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->h:I

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v9, 0x1

    .line 86
    const/4 v10, 0x0

    .line 87
    move-object v8, p0

    .line 88
    invoke-static/range {v3 .. v10}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->o(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Landroid/content/Context;IILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v0, :cond_3

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_21

    .line 102
    .line 103
    move-object v1, p1

    .line 104
    check-cast v1, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 114
    .line 115
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;-><init>(Z)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getCardDisplayType()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t0(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    const-string v5, "download"

    .line 139
    .line 140
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    const-string v5, "2"

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    if-nez v4, :cond_1b

    .line 148
    .line 149
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v7, "1080P"

    .line 154
    .line 155
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_1b

    .line 160
    .line 161
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const-string v7, "unlock_view_entrance"

    .line 166
    .line 167
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_1b

    .line 172
    .line 173
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v7, "sale_banner_entrance"

    .line 178
    .line 179
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_5

    .line 184
    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->w0(Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->Y()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_6

    .line 199
    .line 200
    check-cast v4, Ljava/lang/Iterable;

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-eqz v7, :cond_6

    .line 211
    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    check-cast v7, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 217
    .line 218
    invoke-virtual {v7, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getTYPE_SUB()I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setDataType(I)V

    .line 226
    .line 227
    .line 228
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 229
    .line 230
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->Y()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eqz v4, :cond_a

    .line 243
    .line 244
    check-cast v4, Ljava/lang/Iterable;

    .line 245
    .line 246
    instance-of v5, v4, Ljava/util/Collection;

    .line 247
    .line 248
    if-eqz v5, :cond_7

    .line 249
    .line 250
    move-object v5, v4

    .line 251
    check-cast v5, Ljava/util/Collection;

    .line 252
    .line 253
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_7

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_a

    .line 269
    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_SMALL()I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v7, :cond_9

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-ne v7, v5, :cond_8

    .line 292
    .line 293
    move v4, v2

    .line 294
    goto :goto_4

    .line 295
    :cond_a
    :goto_3
    move v4, v3

    .line 296
    :goto_4
    sget-object v5, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 297
    .line 298
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_d

    .line 303
    .line 304
    new-instance v7, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    if-eqz v8, :cond_b

    .line 314
    .line 315
    check-cast v8, Ljava/util/Collection;

    .line 316
    .line 317
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    :cond_b
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getRetainSubscribeProduct()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    if-eqz v8, :cond_c

    .line 329
    .line 330
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 335
    .line 336
    .line 337
    :cond_c
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 338
    .line 339
    .line 340
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getWatchAdResultResponse()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getNextRefreshTime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v8

    .line 353
    invoke-static {v0, v5, v7, v8, v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Ljava/util/List;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;J)V

    .line 354
    .line 355
    .line 356
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    if-eqz v7, :cond_e

    .line 361
    .line 362
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMembersOnly()Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-ne v7, v2, :cond_e

    .line 367
    .line 368
    goto/16 :goto_9

    .line 369
    .line 370
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getSkuInfoResponses()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    if-eqz v8, :cond_f

    .line 380
    .line 381
    check-cast v8, Ljava/util/Collection;

    .line 382
    .line 383
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 388
    .line 389
    .line 390
    :cond_f
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-eqz v8, :cond_11

    .line 395
    .line 396
    :cond_10
    move v8, v3

    .line 397
    goto :goto_6

    .line 398
    :cond_11
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    :cond_12
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    if-eqz v9, :cond_10

    .line 407
    .line 408
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    check-cast v9, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 413
    .line 414
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_SMALL()I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-nez v10, :cond_13

    .line 423
    .line 424
    goto :goto_5

    .line 425
    :cond_13
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    if-ne v10, v9, :cond_12

    .line 430
    .line 431
    move v8, v2

    .line 432
    :goto_6
    if-nez v4, :cond_14

    .line 433
    .line 434
    if-eqz v8, :cond_19

    .line 435
    .line 436
    :cond_14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->O(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    if-eqz v4, :cond_19

    .line 445
    .line 446
    const/4 v8, -0x1

    .line 447
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSort(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_SMALL()I

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setItemStyle(Ljava/lang/Integer;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {v7, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-le v3, v2, :cond_15

    .line 469
    .line 470
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1$a;

    .line 471
    .line 472
    invoke-direct {v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1$a;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 476
    .line 477
    .line 478
    :cond_15
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    invoke-interface {v7, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    :cond_16
    :goto_7
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    if-eqz v8, :cond_18

    .line 491
    .line 492
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    move-object v9, v8

    .line 497
    check-cast v9, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 498
    .line 499
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_SMALL()I

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    if-nez v10, :cond_17

    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_17
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    if-ne v10, v11, :cond_16

    .line 515
    .line 516
    if-eq v9, v4, :cond_16

    .line 517
    .line 518
    move-object v6, v8

    .line 519
    :cond_18
    check-cast v6, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 520
    .line 521
    if-eqz v6, :cond_19

    .line 522
    .line 523
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-nez v3, :cond_19

    .line 528
    .line 529
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    :cond_19
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    if-eqz v4, :cond_1a

    .line 541
    .line 542
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 547
    .line 548
    new-instance v6, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 549
    .line 550
    invoke-direct {v6, v2, v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;-><init>(ILjava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_8

    .line 557
    :cond_1a
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->u0(Ljava/util/List;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getMainSkuV2Response()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 572
    .line 573
    .line 574
    :goto_9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getRetainSubscribeProduct()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 579
    .line 580
    .line 581
    invoke-static {v0, v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Ljava/util/List;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 592
    .line 593
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;-><init>(Z)V

    .line 598
    .line 599
    .line 600
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_c

    .line 604
    .line 605
    :cond_1b
    :goto_a
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 606
    .line 607
    .line 608
    invoke-static {v0, v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getWatchAdResultResponse()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V

    .line 616
    .line 617
    .line 618
    new-instance v2, Ljava/util/ArrayList;

    .line 619
    .line 620
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .line 622
    .line 623
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 624
    .line 625
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-nez v3, :cond_1f

    .line 630
    .line 631
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    if-eqz v1, :cond_1e

    .line 636
    .line 637
    check-cast v1, Ljava/lang/Iterable;

    .line 638
    .line 639
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    if-eqz v3, :cond_1e

    .line 648
    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 654
    .line 655
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    const/4 v6, 0x5

    .line 660
    if-eq v4, v6, :cond_1d

    .line 661
    .line 662
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    const/4 v6, 0x7

    .line 667
    if-ne v4, v6, :cond_1c

    .line 668
    .line 669
    :cond_1d
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getTYPE_SUB()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setDataType(I)V

    .line 677
    .line 678
    .line 679
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 680
    .line 681
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    goto :goto_b

    .line 692
    :cond_1e
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->w0(Ljava/util/List;)V

    .line 693
    .line 694
    .line 695
    :cond_1f
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 696
    .line 697
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    if-eqz v3, :cond_20

    .line 702
    .line 703
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 704
    .line 705
    .line 706
    :cond_20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;-><init>(Z)V

    .line 717
    .line 718
    .line 719
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    :cond_21
    :goto_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 723
    .line 724
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 725
    .line 726
    .line 727
    move-result-object p1

    .line 728
    if-eqz p1, :cond_22

    .line 729
    .line 730
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->z(Ljava/lang/Throwable;)V

    .line 731
    .line 732
    .line 733
    :cond_22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 734
    .line 735
    return-object p1

    .line 736
    :cond_23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 737
    .line 738
    return-object p1

    .line 739
    :cond_24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 740
    .line 741
    return-object p1
.end method
