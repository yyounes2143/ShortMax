.class final Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActPaymentDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->H(Landroid/content/Context;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1"
    f = "ActPaymentDelegate.kt"
    l = {
        0x204,
        0x205,
        0x210,
        0x21c,
        0x21f,
        0x223
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :pswitch_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :pswitch_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_5
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v3, Lle/h;->a:Lle/h;

    .line 58
    .line 59
    invoke-virtual {v3}, Lle/h;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x1

    .line 64
    iput v4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 65
    .line 66
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_0

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_0
    :goto_0
    move-object v1, p1

    .line 74
    check-cast v1, Ljava/util/List;

    .line 75
    .line 76
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget-object v4, Lle/h;->a:Lle/h;

    .line 85
    .line 86
    invoke-virtual {v4}, Lle/h;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    iput v5, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 94
    .line 95
    invoke-virtual {p1, v3, v4, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_1

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_1
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 103
    .line 104
    check-cast v1, Ljava/util/Collection;

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    :cond_2
    move-object v3, p1

    .line 115
    check-cast v3, Ljava/util/Collection;

    .line 116
    .line 117
    if-eqz v3, :cond_a

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_3
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 160
    .line 161
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 162
    .line 163
    const/4 v4, 0x4

    .line 164
    iput v4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 165
    .line 166
    const/4 v4, 0x0

    .line 167
    invoke-virtual {p1, v4, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->E(ZLjava/lang/String;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-ne p1, v0, :cond_8

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_8
    :goto_4
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->hasAcknowledged()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, p1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v3, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$3;

    .line 194
    .line 195
    invoke-direct {v3, p1, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$3;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Lrs/c;)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x5

    .line 199
    iput p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 200
    .line 201
    invoke-static {v1, v3, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-ne p1, v0, :cond_9

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_9
    :goto_5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance v1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$4;

    .line 213
    .line 214
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 215
    .line 216
    invoke-direct {v1, v3, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$4;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lrs/c;)V

    .line 217
    .line 218
    .line 219
    const/4 v2, 0x6

    .line 220
    iput v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 221
    .line 222
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-ne p1, v0, :cond_b

    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_a
    :goto_6
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 230
    .line 231
    new-instance v5, Landroid/os/Bundle;

    .line 232
    .line 233
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->k:Ljava/lang/String;

    .line 237
    .line 238
    const-string/jumbo v1, "type"

    .line 239
    .line 240
    .line 241
    const-string v4, "manual"

    .line 242
    .line 243
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v1, "genre"

    .line 247
    .line 248
    const-string v4, "in_app_purchase"

    .line 249
    .line 250
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v1, "result"

    .line 254
    .line 255
    const-string v4, "0"

    .line 256
    .line 257
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v1, "scene"

    .line 261
    .line 262
    invoke-virtual {v5, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 266
    .line 267
    const/4 v8, 0x4

    .line 268
    const/4 v9, 0x0

    .line 269
    const-string v4, "restore_result"

    .line 270
    .line 271
    const-wide/16 v6, 0x0

    .line 272
    .line 273
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-instance v1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;

    .line 281
    .line 282
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->j:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 283
    .line 284
    invoke-direct {v1, v3, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lrs/c;)V

    .line 285
    .line 286
    .line 287
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->h:Ljava/lang/Object;

    .line 288
    .line 289
    const/4 v2, 0x3

    .line 290
    iput v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->i:I

    .line 291
    .line 292
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-ne p1, v0, :cond_b

    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_b
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p1

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
