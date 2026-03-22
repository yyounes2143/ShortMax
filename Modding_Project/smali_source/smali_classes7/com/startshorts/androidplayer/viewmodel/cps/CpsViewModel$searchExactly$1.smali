.class final Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CpsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;->B(Landroid/content/Context;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.cps.CpsViewModel$searchExactly$1"
    f = "CpsViewModel.kt"
    l = {
        0x2c,
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

.field final synthetic m:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;Landroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->k:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->l:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->m:Landroid/content/Context;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->l:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->m:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;Landroid/content/Context;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->j:I

    .line 8
    .line 9
    const-string v9, "type"

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    const/4 v11, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v11, :cond_1

    .line 16
    .line 17
    if-ne v0, v10, :cond_0

    .line 18
    .line 19
    iget-object v0, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->i:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v0, p1

    .line 40
    .line 41
    check-cast v0, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 52
    .line 53
    iget-object v1, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->k:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v2, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->Companion:Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportTypes()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportConditionCodes()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iput v11, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->j:I

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    const/4 v3, 0x1

    .line 69
    move-object/from16 v6, p0

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->i(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-ne v0, v8, :cond_3

    .line 76
    .line 77
    return-object v8

    .line 78
    :cond_3
    :goto_0
    iget-object v1, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->l:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 79
    .line 80
    iget-object v2, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->m:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_8

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 98
    .line 99
    new-instance v14, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "have_result"

    .line 105
    .line 106
    invoke-virtual {v14, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    const/16 v17, 0x4

    .line 112
    .line 113
    const/16 v18, 0x0

    .line 114
    .line 115
    const-string v13, "search_result_show"

    .line 116
    .line 117
    const-wide/16 v15, 0x0

    .line 118
    .line 119
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getCollectShort()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_4

    .line 131
    .line 132
    sget-object v4, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->a:Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayId()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->b(I)V

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    if-eq v4, v10, :cond_5

    .line 156
    .line 157
    const/4 v5, 0x3

    .line 158
    if-eq v4, v5, :cond_5

    .line 159
    .line 160
    const/4 v5, 0x5

    .line 161
    if-eq v4, v5, :cond_6

    .line 162
    .line 163
    const/4 v5, 0x6

    .line 164
    if-eq v4, v5, :cond_5

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/4 v5, 0x0

    .line 172
    invoke-virtual {v1, v2, v4, v5}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;->C(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Ljava/util/Collection;

    .line 189
    .line 190
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    xor-int/2addr v5, v11

    .line 195
    invoke-virtual {v1, v2, v4, v5}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;->C(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    .line 196
    .line 197
    .line 198
    :goto_1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1$1$2;

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1$1$2;-><init>(Lrs/c;)V

    .line 206
    .line 207
    .line 208
    iput-object v0, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->h:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v3, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->i:Ljava/lang/Object;

    .line 211
    .line 212
    iput v10, v7, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;->j:I

    .line 213
    .line 214
    invoke-static {v1, v2, v7}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ne v0, v8, :cond_7

    .line 219
    .line 220
    return-object v8

    .line 221
    :cond_7
    move-object v0, v3

    .line 222
    :goto_2
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 223
    .line 224
    new-instance v12, Landroid/os/Bundle;

    .line 225
    .line 226
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 227
    .line 228
    .line 229
    sget-object v1, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->Companion:Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;->getEquityListStr(Ljava/util/List;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v12, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;->getStatusStr(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    const-string v1, "valid"

    .line 259
    .line 260
    invoke-virtual {v12, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 264
    .line 265
    const/4 v15, 0x4

    .line 266
    const/16 v16, 0x0

    .line 267
    .line 268
    const-string v11, "rights_popup_display"

    .line 269
    .line 270
    const-wide/16 v13, 0x0

    .line 271
    .line 272
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 276
    .line 277
    return-object v0
.end method
