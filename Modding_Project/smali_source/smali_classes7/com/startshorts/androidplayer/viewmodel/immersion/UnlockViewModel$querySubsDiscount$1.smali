.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l0(Z)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$querySubsDiscount$1"
    f = "UnlockViewModel.kt"
    l = {
        0x19f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,858:1\n1863#2,2:859\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1\n*L\n428#1:859,2\n*E\n"
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
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->j:Z

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->j:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->j:Z

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 46
    .line 47
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->j:Z

    .line 48
    .line 49
    sget-object p1, Lud/a;->a:Lud/a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lud/a;->q()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    :cond_2
    move-object v6, p1

    .line 60
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->h:I

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v8, 0x2

    .line 64
    const/4 v9, 0x0

    .line 65
    move-object v7, p0

    .line 66
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->k(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;ZLandroid/content/Context;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_9

    .line 80
    .line 81
    move-object v1, p1

    .line 82
    check-cast v1, Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 91
    .line 92
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_4
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->L(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    check-cast v1, Ljava/lang/Iterable;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    const/4 v5, 0x5

    .line 157
    if-eq v4, v5, :cond_6

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    const/4 v5, 0x7

    .line 164
    if-ne v4, v5, :cond_5

    .line 165
    .line 166
    :cond_6
    const-string v4, "2"

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->w0(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;-><init>(Z)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 215
    .line 216
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-eqz p1, :cond_a

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->z(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    return-object p1
.end method
