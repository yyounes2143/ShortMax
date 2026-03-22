.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverCategoryViewPagerItemAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->S(Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;)V
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
    c = "com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1"
    f = "DiscoverCategoryViewPagerItemAdapter.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverCategoryViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,475:1\n125#2,13:476\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1\n*L\n108#1:476,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

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
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, ""

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->h:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lkotlin/Result;

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->y(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShowNum()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    move-object v7, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v7, v1

    .line 73
    :goto_0
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v8, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    move-object v8, v3

    .line 85
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->formatTitleForEvent()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :goto_3
    move v10, v1

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    const/4 v1, 0x0

    .line 114
    goto :goto_3

    .line 115
    :goto_4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->h:Ljava/lang/Object;

    .line 116
    .line 117
    iput v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->i:I

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    move-object v11, p0

    .line 121
    invoke-virtual/range {v4 .. v11}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-ne v1, v0, :cond_6

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_6
    move-object v0, p1

    .line 129
    move-object p1, v1

    .line 130
    :goto_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_d

    .line 139
    .line 140
    move-object v4, p1

    .line 141
    check-cast v4, Ljava/util/List;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->D(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryConfigItemVOList()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_b

    .line 152
    .line 153
    new-instance v6, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-nez v7, :cond_8

    .line 162
    .line 163
    :cond_7
    move-object v7, v3

    .line 164
    :cond_8
    if-eqz v0, :cond_a

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-nez v0, :cond_9

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_9
    move-object v3, v0

    .line 174
    :cond_a
    :goto_6
    invoke-direct {v6, v7, v3, v4}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_b
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->C(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;

    .line 185
    .line 186
    check-cast v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-nez v4, :cond_c

    .line 193
    .line 194
    new-instance v4, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    :cond_c
    invoke-direct {v1, v2, v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;Ljava/util/List;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a;

    .line 208
    .line 209
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_10

    .line 214
    .line 215
    instance-of v2, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 216
    .line 217
    if-eqz v2, :cond_e

    .line 218
    .line 219
    move-object v2, p1

    .line 220
    check-cast v2, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_e
    const/4 v2, 0x0

    .line 224
    :goto_7
    if-nez v2, :cond_f

    .line 225
    .line 226
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v2, "onResponseFailure exception -> "

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string p1, ", exception must not be null"

    .line 246
    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const-string v1, "ApiBuilder"

    .line 255
    .line 256
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_f
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->C(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;

    .line 265
    .line 266
    check-cast v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$a$a;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_10
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 279
    .line 280
    return-object p1
.end method
