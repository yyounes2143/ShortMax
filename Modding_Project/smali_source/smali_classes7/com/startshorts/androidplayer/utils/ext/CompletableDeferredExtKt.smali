.class public final Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;
.super Ljava/lang/Object;
.source "CompletableDeferredExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->c(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final b(Lgt/p;Ljava/lang/Long;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p0    # Lgt/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgt/p<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "+TT;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->j:I

    .line 32
    .line 33
    const-string v3, "ms,message="

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :catch_1
    move-exception p1

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    iget-object p0, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    new-instance p2, Ljk/c;

    .line 79
    .line 80
    invoke-direct {p2, v6, v7}, Ljk/c;-><init>(J)V

    .line 81
    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    :try_start_1
    iput-object p2, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->h:Ljava/lang/Object;

    .line 86
    .line 87
    iput v5, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->j:I

    .line 88
    .line 89
    invoke-interface {p0, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-ne p0, v1, :cond_5

    .line 94
    .line 95
    return-object v1

    .line 96
    :catch_2
    move-exception p1

    .line 97
    move-object p0, p2

    .line 98
    goto :goto_3

    .line 99
    :catch_3
    move-exception p1

    .line 100
    move-object p0, p2

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    new-instance p1, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$resultValue$1;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-direct {p1, p0, v2}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$resultValue$1;-><init>(Lgt/p;Lrs/c;)V

    .line 110
    .line 111
    .line 112
    iput-object p2, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->h:Ljava/lang/Object;

    .line 113
    .line 114
    iput v4, v0, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt$safeAwait$1;->j:I

    .line 115
    .line 116
    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 120
    if-ne p0, v1, :cond_5

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_5
    move-object v8, p2

    .line 124
    move-object p2, p0

    .line 125
    move-object p0, v8

    .line 126
    :goto_2
    :try_start_2
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 127
    .line 128
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    return-object p0

    .line 141
    :goto_3
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 142
    .line 143
    new-instance p2, Ljava/lang/Throwable;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v1, "safeAwait exception -> cost="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Ljava/lang/Number;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {p2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_5

    .line 194
    :goto_4
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 195
    .line 196
    new-instance p2, Ljava/lang/Throwable;

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v1, "safeAwait timeout -> cost="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Ljava/lang/Number;

    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-direct {p2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    :goto_5
    return-object p0
.end method

.method private static final c(J)J
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr v0, p0

    .line 8
    return-wide v0
.end method

.method public static final d(Lgt/p;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lgt/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgt/p<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
