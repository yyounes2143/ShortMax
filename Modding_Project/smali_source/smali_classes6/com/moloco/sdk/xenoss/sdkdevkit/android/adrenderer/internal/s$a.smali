.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1"
    f = "MraidAdLoad.kt"
    l = {
        0x3c,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

.field public final synthetic l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

.field public final synthetic m:J


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->m:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->m:J

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;JLrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

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
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lgt/k0;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lgt/g0;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->b()Lcom/moloco/sdk/internal/g0;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    instance-of v1, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 68
    .line 69
    .line 70
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_4
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a$b;

    .line 74
    .line 75
    iget-wide v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->m:J

    .line 76
    .line 77
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 78
    .line 79
    invoke-direct {v8, v5, v6, v1, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a$b;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;Lrs/c;)V

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x3

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    move-object v5, p1

    .line 87
    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 92
    .line 93
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/d;->e()Lcom/moloco/sdk/internal/ortb/model/p;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/p;->f()Lcom/moloco/sdk/internal/ortb/model/j;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    invoke-static {v5}, Lcom/moloco/sdk/internal/p;->a(Lcom/moloco/sdk/internal/ortb/model/j;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object v9, v5

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    move-object v9, v4

    .line 124
    :goto_0
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a$a;

    .line 125
    .line 126
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->m:J

    .line 127
    .line 128
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 129
    .line 130
    const/4 v11, 0x0

    .line 131
    move-object v6, v12

    .line 132
    invoke-direct/range {v6 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a$a;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;Lrs/c;)V

    .line 133
    .line 134
    .line 135
    const/4 v9, 0x3

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    move-object v5, p1

    .line 140
    move-object v8, v12

    .line 141
    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :try_start_1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 146
    .line 147
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->i:I

    .line 148
    .line 149
    invoke-interface {v1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    if-ne v1, v0, :cond_6

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_6
    move-object v13, v1

    .line 157
    move-object v1, p1

    .line 158
    move-object p1, v13

    .line 159
    :goto_1
    :try_start_2
    check-cast p1, Lcom/moloco/sdk/internal/g0;
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    .line 161
    if-nez p1, :cond_7

    .line 162
    .line 163
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 164
    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 168
    .line 169
    invoke-interface {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    instance-of v5, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 174
    .line 175
    if-eqz v5, :cond_9

    .line 176
    .line 177
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 188
    .line 189
    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    instance-of v4, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 197
    .line 198
    if-eqz v4, :cond_c

    .line 199
    .line 200
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 201
    .line 202
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;

    .line 209
    .line 210
    iput-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->j:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->h:Ljava/lang/Object;

    .line 213
    .line 214
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->i:I

    .line 215
    .line 216
    invoke-interface {v1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-ne v1, v0, :cond_a

    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_a
    move-object v0, p1

    .line 224
    move-object p1, v1

    .line 225
    move-object v1, v4

    .line 226
    :goto_2
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-instance v0, Lcom/moloco/sdk/internal/g0$b;

    .line 233
    .line 234
    invoke-direct {v0, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->d(Lcom/moloco/sdk/internal/g0;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->g(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;)Lkt/e;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 254
    .line 255
    if-eqz p1, :cond_b

    .line 256
    .line 257
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 258
    .line 259
    .line 260
    :cond_b
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 264
    .line 265
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :catch_0
    move-object v1, p1

    .line 270
    :catch_1
    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 274
    .line 275
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 276
    .line 277
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 278
    .line 279
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;

    .line 280
    .line 281
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;->d(Lcom/moloco/sdk/internal/g0;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s$a;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 288
    .line 289
    if-eqz v0, :cond_d

    .line 290
    .line 291
    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 292
    .line 293
    .line 294
    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 295
    .line 296
    return-object p1
.end method
