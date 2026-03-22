.class final Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->J()V
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
    c = "com.startshorts.androidplayer.viewmodel.subs.SubsViewModel$loadSkuList$1"
    f = "SubsViewModel.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1863#2,2:279\n*S KotlinDebug\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1\n*L\n156#1:279,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->o(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_c

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;->getProductList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object v4, v3

    .line 64
    :goto_1
    move-object v5, v4

    .line 65
    check-cast v5, Ljava/util/Collection;

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    sget-object v5, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    :goto_2
    sget-object v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    invoke-static {v5, v6, v6, v7, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->E1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_3
    const-string v5, "1"

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    move-object v7, v4

    .line 100
    check-cast v7, Ljava/lang/Iterable;

    .line 101
    .line 102
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_7

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 117
    .line 118
    invoke-virtual {v8, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v9, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 122
    .line 123
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-virtual {v8, v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->S(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;->getActiveSubscribeSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_8
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 159
    .line 160
    .line 161
    :cond_9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->G()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Ljava/util/Collection;

    .line 172
    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_a
    move v2, v6

    .line 183
    :cond_b
    :goto_5
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;-><init>(Z)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 190
    .line 191
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_d

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 210
    .line 211
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1
.end method
