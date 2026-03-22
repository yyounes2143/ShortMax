.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->D0(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
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
    c = "com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$onViewDetachedFromWindow$2"
    f = "DiscoverModuleAdapter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->R(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->i0()Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->f0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Z)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v2, 0x0

    .line 41
    :try_start_0
    new-array v3, v0, [I

    .line 42
    .line 43
    new-array v4, v0, [I

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 49
    .line 50
    .line 51
    aget p1, v3, v2

    .line 52
    .line 53
    aget v3, v3, v1

    .line 54
    .line 55
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    aget v3, v4, v2

    .line 60
    .line 61
    aget v4, v4, v1

    .line 62
    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    new-array v4, v0, [Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    aput-object p1, v4, v2

    .line 74
    .line 75
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    aput-object p1, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    new-array v4, v0, [Ljava/lang/Integer;

    .line 83
    .line 84
    const/4 p1, -0x1

    .line 85
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, v4, v2

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    aput-object p1, v4, v1

    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getModuleStartPosition()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getModuleEndPosition()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    filled-new-array {p1, v0}, [Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v5, "areaVisible(["

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    aget-object v5, v4, v2

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 v5, 0x2c

    .line 143
    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    aget-object v6, v4, v1

    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v6, "]) areaModule(["

    .line 157
    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    aget-object v6, p1, v2

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    aget-object v5, p1, v1

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v5, "])"

    .line 183
    .line 184
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    aget-object v0, v4, v2

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    aget-object v3, p1, v2

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v0, v3}, Lkotlin/ranges/e;->e(II)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    aget-object v3, v4, v1

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    aget-object p1, p1, v1

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-static {v3, p1}, Lkotlin/ranges/e;->j(II)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-le v0, p1, :cond_2

    .line 227
    .line 228
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 229
    .line 230
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->U(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->k:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 244
    .line 245
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->V(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->k:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$onViewDetachedFromWindow$2;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 255
    .line 256
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->f0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Z)V

    .line 257
    .line 258
    .line 259
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p1

    .line 262
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 263
    .line 264
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 265
    .line 266
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1
.end method
