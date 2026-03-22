.class final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Y(Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedPurchases$1"
    f = "BillingViewModel.kt"
    l = {
        0x1e7,
        0x1e8,
        0x1fc,
        0x1ff
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

.field final synthetic k:Ljava/lang/String;


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
            "Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-eq v1, v6, :cond_3

    .line 15
    .line 16
    if-eq v1, v5, :cond_2

    .line 17
    .line 18
    if-eq v1, v4, :cond_1

    .line 19
    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/util/List;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v7, Lle/h;->a:Lle/h;

    .line 68
    .line 69
    invoke-virtual {v7}, Lle/h;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iput v6, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->i:I

    .line 74
    .line 75
    invoke-virtual {p1, v1, v7, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_5

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_5
    :goto_0
    move-object v1, p1

    .line 83
    check-cast v1, Ljava/util/List;

    .line 84
    .line 85
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 86
    .line 87
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 88
    .line 89
    invoke-static {v6}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget-object v7, Lle/h;->a:Lle/h;

    .line 94
    .line 95
    invoke-virtual {v7}, Lle/h;->b()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    iput v5, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->i:I

    .line 102
    .line 103
    invoke-virtual {p1, v6, v7, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-ne p1, v0, :cond_6

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_6
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 111
    .line 112
    check-cast v1, Ljava/util/Collection;

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_8

    .line 121
    .line 122
    :cond_7
    move-object v5, p1

    .line 123
    check-cast v5, Ljava/util/Collection;

    .line 124
    .line 125
    if-eqz v5, :cond_10

    .line 126
    .line 127
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_9

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_9
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    .line 150
    .line 151
    :cond_a
    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 152
    .line 153
    if-eqz p1, :cond_c

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_b
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    :cond_c
    :goto_3
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 170
    .line 171
    iput v4, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->i:I

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p1, v4, v1, v5, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->E(ZLjava/lang/String;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-ne p1, v0, :cond_d

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_d
    :goto_4
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->hasAcknowledged()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_f

    .line 188
    .line 189
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1, p1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1$2;

    .line 201
    .line 202
    invoke-direct {v4, p1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1$2;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Lrs/c;)V

    .line 203
    .line 204
    .line 205
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 206
    .line 207
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->i:I

    .line 208
    .line 209
    invoke-static {v1, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-ne v1, v0, :cond_e

    .line 214
    .line 215
    return-object v0

    .line 216
    :cond_e
    move-object v0, p1

    .line 217
    :goto_5
    move-object p1, v0

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 225
    .line 226
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_10
    :goto_6
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 234
    .line 235
    new-instance v4, Landroid/os/Bundle;

    .line 236
    .line 237
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 241
    .line 242
    const-string v0, "type"

    .line 243
    .line 244
    const-string v1, "manual"

    .line 245
    .line 246
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v0, "genre"

    .line 250
    .line 251
    const-string v1, "in_app_purchase"

    .line 252
    .line 253
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v0, "result"

    .line 257
    .line 258
    const-string v1, "0"

    .line 259
    .line 260
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v0, "scene"

    .line 264
    .line 265
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    const/4 v7, 0x4

    .line 271
    const/4 v8, 0x0

    .line 272
    const-string v3, "restore_result"

    .line 273
    .line 274
    const-wide/16 v5, 0x0

    .line 275
    .line 276
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$i;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$i;

    .line 286
    .line 287
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 291
    .line 292
    return-object p1
.end method
