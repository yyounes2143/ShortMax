.class public final Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;
.super Ljava/lang/Object;
.source "QueryDeferredDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Long;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->m:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;-><init>(Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->j:Ljava/lang/Object;

    .line 40
    .line 41
    move-object p2, p1

    .line 42
    check-cast p2, Ljava/lang/Long;

    .line 43
    .line 44
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 51
    .line 52
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast p3, Lkotlin/Result;

    .line 56
    .line 57
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;

    .line 74
    .line 75
    if-nez p3, :cond_4

    .line 76
    .line 77
    sget-object p2, Lid/a;->a:Lid/a;

    .line 78
    .line 79
    invoke-virtual {p2}, Lid/a;->c()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_3

    .line 84
    .line 85
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " from="

    .line 103
    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, ",queryDeferred == null, call fetchRemoteConfig first"

    .line 111
    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_4
    iput-object p0, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->h:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->i:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p2, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->j:Ljava/lang/Object;

    .line 128
    .line 129
    iput v4, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate$awaitQueryResult$1;->m:I

    .line 130
    .line 131
    invoke-static {p3, p2, v0}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->b(Lgt/p;Ljava/lang/Long;Lrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    if-ne p3, v1, :cond_5

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_5
    move-object v0, p0

    .line 139
    :goto_1
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 140
    .line 141
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {p3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const-string v4, ",max_wait_timeout="

    .line 149
    .line 150
    const-string v5, " waitQueryEnd -> from="

    .line 151
    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    move-object v2, p3

    .line 155
    check-cast v2, Lkotlin/Pair;

    .line 156
    .line 157
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 168
    .line 169
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 170
    .line 171
    iget-object v7, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v9, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v9, ", cost="

    .line 196
    .line 197
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Ljava/lang/Number;

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v9, "ms,fetchResult="

    .line 214
    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v6, v7, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-static {p3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 245
    .line 246
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 247
    .line 248
    iget-object v6, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 249
    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    iget-object v0, v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p1, ", message="

    .line 273
    .line 274
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string p1, ",fetchResult=false"

    .line 285
    .line 286
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {v3, v6, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    invoke-static {p3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    iget-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 300
    .line 301
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    return-object p1
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " onQueryFailed -> errMsg="

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->d(Lgt/p;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, " onQueryRunningStart-> query running now, should not call onQueryRunningStart"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, " onQueryRunningStart-> start now"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-static {v0, v1, v0}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    :goto_0
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " onQuerySucceed"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, " -> "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b:Lgt/p;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->d(Lgt/p;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->c:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public final g(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
