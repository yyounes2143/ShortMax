.class final Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->e0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
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
    c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$querySubsUpdateMode$1"
    f = "PurchaseViewModel.kt"
    l = {
        0x1a1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

.field final synthetic l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->j:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->k:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->k:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lkotlin/Result;

    .line 17
    .line 18
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    new-instance p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v4, ""

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    move-object v6, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v6, v1

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const v5, 0xf4240

    .line 65
    .line 66
    .line 67
    int-to-float v5, v5

    .line 68
    mul-float/2addr v1, v5

    .line 69
    float-to-long v7, v1

    .line 70
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    move-object v10, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move-object v10, v1

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    mul-float/2addr v1, v5

    .line 88
    float-to-long v11, v1

    .line 89
    const/4 v13, 0x1

    .line 90
    const-string v5, "USD"

    .line 91
    .line 92
    const-string v9, "USD"

    .line 93
    .line 94
    move-object v4, p1

    .line 95
    invoke-direct/range {v4 .. v13}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    instance-of v1, p1, Lzc/e;

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    check-cast p1, Lzc/e;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move-object p1, v3

    .line 113
    :goto_2
    if-eqz p1, :cond_6

    .line 114
    .line 115
    invoke-static {p1}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    move-object p1, v3

    .line 121
    :goto_3
    if-nez p1, :cond_7

    .line 122
    .line 123
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 124
    .line 125
    const-string v0, "PurchaseViewModel"

    .line 126
    .line 127
    const-string v1, "querySubsUpdateMode failed -> clickedSkuPrice is null"

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_7
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->j:Landroid/content/Context;

    .line 138
    .line 139
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 140
    .line 141
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->h:I

    .line 142
    .line 143
    invoke-virtual {v1, v4, v5, p1, p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->p(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v0, :cond_8

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->k:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 155
    .line 156
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_a

    .line 161
    .line 162
    move-object v4, p1

    .line 163
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 170
    .line 171
    if-nez v4, :cond_9

    .line 172
    .line 173
    new-instance v4, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 174
    .line 175
    const/4 v10, 0x4

    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v7, 0x2

    .line 178
    const/4 v8, 0x0

    .line 179
    const/4 v9, 0x0

    .line 180
    move-object v6, v4

    .line 181
    invoke-direct/range {v6 .. v11}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    invoke-direct {v5, v1, v2, v4}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v5}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;->k:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 191
    .line 192
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/4 v1, 0x0

    .line 213
    const/4 v2, 0x2

    .line 214
    invoke-static {v0, p1, v1, v2, v3}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1
.end method
