.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
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
    c = "com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1"
    f = "DiscoverModuleAdapter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1\n*L\n2017#1:2304,3\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

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
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->j:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->h:I

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v3

    .line 34
    :goto_0
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->j:Ljava/util/List;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 39
    .line 40
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    :try_start_0
    new-instance v7, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v7, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    new-instance v7, Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v1, -0x1

    .line 71
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v7, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v7}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v7}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-gt v1, v8, :cond_4

    .line 103
    .line 104
    invoke-virtual {v7}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ge v1, v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v7}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-ltz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v7}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v7}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    invoke-interface {v2, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Iterable;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_4

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    add-int/lit8 v8, v2, 0x1

    .line 172
    .line 173
    if-gez v2, :cond_1

    .line 174
    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 176
    .line 177
    .line 178
    :cond_1
    move-object v10, v6

    .line 179
    check-cast v10, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 180
    .line 181
    sget-object v9, Lag/a;->a:Lag/a;

    .line 182
    .line 183
    invoke-virtual {v7}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    add-int v11, v6, v2

    .line 194
    .line 195
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 204
    .line 205
    if-eqz v2, :cond_2

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    move-object v15, v2

    .line 212
    goto :goto_3

    .line 213
    :cond_2
    move-object v15, v3

    .line 214
    :goto_3
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 219
    .line 220
    if-eqz v2, :cond_3

    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    move-object/from16 v16, v2

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_3
    move-object/from16 v16, v3

    .line 230
    .line 231
    :goto_4
    const/16 v18, 0x94

    .line 232
    .line 233
    const/16 v19, 0x0

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    const/4 v14, 0x0

    .line 237
    const/16 v17, 0x0

    .line 238
    .line 239
    invoke-static/range {v9 .. v19}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    move v2, v8

    .line 243
    goto :goto_2

    .line 244
    :cond_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 245
    .line 246
    return-object v1

    .line 247
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v1
.end method
