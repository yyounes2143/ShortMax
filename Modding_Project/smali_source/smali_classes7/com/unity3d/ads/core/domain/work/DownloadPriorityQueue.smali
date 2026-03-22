.class public final Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;
.super Ljava/lang/Object;
.source "DownloadPriorityQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadPriorityQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadPriorityQueue.kt\ncom/unity3d/ads/core/domain/work/DownloadPriorityQueue\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,41:1\n107#2,10:42\n107#2,10:52\n*S KotlinDebug\n*F\n+ 1 DownloadPriorityQueue.kt\ncom/unity3d/ads/core/domain/work/DownloadPriorityQueue\n*L\n22#1:42,10\n34#1:52,10\n*E\n"
    }
.end annotation


# instance fields
.field private final mutex:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nextTurn:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lqt/d;->a(Z)Lqt/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->mutex:Lqt/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->nextTurn:Lkt/e;

    .line 17
    .line 18
    new-instance v0, Ljava/util/PriorityQueue;

    .line 19
    .line 20
    new-instance v1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$special$$inlined$compareBy$1;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$special$$inlined$compareBy$1;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x32

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_6

    .line 39
    .line 40
    if-eq v2, v6, :cond_5

    .line 41
    .line 42
    if-eq v2, v5, :cond_4

    .line 43
    .line 44
    if-eq v2, v4, :cond_2

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lqt/a;

    .line 51
    .line 52
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 59
    .line 60
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 76
    .line 77
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p2, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 80
    .line 81
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-object v2, p2

    .line 85
    :cond_3
    move-object p2, p1

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_4
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 91
    .line 92
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 99
    .line 100
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$3:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lqt/a;

    .line 107
    .line 108
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p2, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 111
    .line 112
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v6, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 119
    .line 120
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-object v9, p2

    .line 124
    move-object p2, p1

    .line 125
    move-object p1, v9

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance p3, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 131
    .line 132
    invoke-direct {p3, p1}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;-><init>(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->mutex:Lqt/a;

    .line 136
    .line 137
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object p3, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$3:Ljava/lang/Object;

    .line 144
    .line 145
    iput v6, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 146
    .line 147
    invoke-interface {p1, v7, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-ne v2, v1, :cond_7

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_7
    move-object v6, p0

    .line 155
    move-object v2, p2

    .line 156
    move-object p2, p1

    .line 157
    move-object p1, p3

    .line 158
    :goto_1
    :try_start_0
    iget-object p3, v6, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 159
    .line 160
    invoke-virtual {p3, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    iget-object p3, v6, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->nextTurn:Lkt/e;

    .line 164
    .line 165
    iget-object v8, v6, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-interface {p3, v8}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    .line 176
    invoke-interface {p2, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, v6, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->nextTurn:Lkt/e;

    .line 180
    .line 181
    new-instance p3, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;

    .line 182
    .line 183
    invoke-direct {p3, p1, v7}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;-><init>(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;Lrs/c;)V

    .line 184
    .line 185
    .line 186
    iput-object v6, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v7, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$3:Ljava/lang/Object;

    .line 193
    .line 194
    iput v5, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 195
    .line 196
    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    if-ne p2, v1, :cond_8

    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_8
    move-object p2, v2

    .line 204
    move-object v2, v6

    .line 205
    :goto_2
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v7, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 210
    .line 211
    iput v4, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 212
    .line 213
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    if-ne p2, v1, :cond_3

    .line 218
    .line 219
    return-object v1

    .line 220
    :goto_3
    iget-object p1, v2, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->mutex:Lqt/a;

    .line 221
    .line 222
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$0:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$1:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->L$2:Ljava/lang/Object;

    .line 227
    .line 228
    iput v3, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$1;->label:I

    .line 229
    .line 230
    invoke-interface {p1, v7, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    if-ne p3, v1, :cond_9

    .line 235
    .line 236
    return-object v1

    .line 237
    :cond_9
    move-object v0, v2

    .line 238
    :goto_4
    :try_start_1
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 239
    .line 240
    invoke-virtual {p3, p2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->nextTurn:Lkt/e;

    .line 244
    .line 245
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 246
    .line 247
    invoke-virtual {p3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    invoke-interface {p2, p3}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .line 256
    invoke-interface {p1, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p1

    .line 262
    :catchall_0
    move-exception p2

    .line 263
    invoke-interface {p1, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    throw p2

    .line 267
    :catchall_1
    move-exception p1

    .line 268
    invoke-interface {p2, v7}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    throw p1
.end method
