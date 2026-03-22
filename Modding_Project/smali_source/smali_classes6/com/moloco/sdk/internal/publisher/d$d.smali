.class public final Lcom/moloco/sdk/internal/publisher/d$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/d;->i(Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;)V
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
    c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1"
    f = "AdLoad.kt"
    l = {
        0xb7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/d;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:J

.field public final synthetic m:Lcom/moloco/sdk/internal/publisher/s0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/d;",
            "Ljava/lang/String;",
            "J",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/d$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/d$d;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/internal/publisher/d$d;->l:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/d$d;->m:Lcom/moloco/sdk/internal/publisher/s0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/d$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance v7, Lcom/moloco/sdk/internal/publisher/d$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/d$d;->l:J

    .line 8
    .line 9
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/d$d;->m:Lcom/moloco/sdk/internal/publisher/s0;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/d$d;-><init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v7, Lcom/moloco/sdk/internal/publisher/d$d;->i:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->h:I

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d;->i:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lgt/g0;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lgt/g0;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v1, v4}, Lcom/moloco/sdk/internal/publisher/d;->h(Lcom/moloco/sdk/internal/publisher/d;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->n(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/d$d;->k:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/d$d;->k:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v4}, Lcom/moloco/sdk/internal/publisher/d;->f(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lcom/moloco/sdk/internal/publisher/d;->k(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->q(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/d$d;->k:Ljava/lang/String;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->i:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/d$d;->h:I

    .line 87
    .line 88
    invoke-interface {v1, v4, p0}, Lcom/moloco/sdk/internal/ortb/a;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-ne v1, v0, :cond_3

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_3
    move-object v0, p1

    .line 96
    move-object p1, v1

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d;->m:Lcom/moloco/sdk/internal/publisher/s0;

    .line 100
    .line 101
    iget-wide v4, p0, Lcom/moloco/sdk/internal/publisher/d$d;->l:J

    .line 102
    .line 103
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlinx/coroutines/i;->g(Lgt/g0;)V

    .line 106
    .line 107
    .line 108
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/moloco/sdk/internal/ortb/model/e;

    .line 119
    .line 120
    invoke-static {v1, p1}, Lcom/moloco/sdk/internal/publisher/d;->k(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/4 v6, 0x2

    .line 128
    invoke-static {v0, v3, v6, v3}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v1, v6}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    move-object v1, v3

    .line 154
    :goto_1
    invoke-interface {v2, v0, v4, v5, v1}, Lcom/moloco/sdk/internal/publisher/s0;->a(Lcom/moloco/sdk/publisher/MolocoAd;JLcom/moloco/sdk/internal/ortb/model/r;)V

    .line 155
    .line 156
    .line 157
    move-object v1, p1

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 160
    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 164
    .line 165
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    move-object v7, p1

    .line 172
    check-cast v7, Ljava/lang/Throwable;

    .line 173
    .line 174
    const/16 v9, 0x8

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    const-string v5, "AdLoad"

    .line 178
    .line 179
    const-string/jumbo v6, "startLoadJob failed to parse BID json string."

    .line 180
    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    move-object v1, v3

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 189
    .line 190
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 195
    .line 196
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 197
    .line 198
    invoke-static {p1, v1}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    goto :goto_3

    .line 203
    :cond_8
    move-object p1, v3

    .line 204
    :goto_3
    if-nez p1, :cond_a

    .line 205
    .line 206
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->m:Lcom/moloco/sdk/internal/publisher/s0;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    sget-object v2, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 215
    .line 216
    sget-object v4, Lcom/moloco/sdk/internal/o;->c:Lcom/moloco/sdk/internal/o;

    .line 217
    .line 218
    invoke-static {v1, v2, v4}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v0, v2}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_9

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    :cond_9
    invoke-interface {p1, v1, v3}, Lcom/moloco/sdk/internal/publisher/s0;->c(Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 243
    .line 244
    .line 245
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    return-object p1

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->r(Lcom/moloco/sdk/internal/publisher/d;)Lkotlin/jvm/functions/Function1;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;

    .line 259
    .line 260
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 261
    .line 262
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->t(Lcom/moloco/sdk/internal/publisher/d;)Lkotlin/jvm/functions/Function1;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-wide v2, p0, Lcom/moloco/sdk/internal/publisher/d$d;->l:J

    .line 267
    .line 268
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Lkotlin/time/b;

    .line 277
    .line 278
    invoke-virtual {v1}, Lkotlin/time/b;->M()J

    .line 279
    .line 280
    .line 281
    move-result-wide v1

    .line 282
    new-instance v3, Lcom/moloco/sdk/internal/publisher/d$d$a;

    .line 283
    .line 284
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/d$d;->j:Lcom/moloco/sdk/internal/publisher/d;

    .line 285
    .line 286
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/d$d;->m:Lcom/moloco/sdk/internal/publisher/s0;

    .line 287
    .line 288
    invoke-direct {v3, v4, v5, p1}, Lcom/moloco/sdk/internal/publisher/d$d$a;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/ortb/model/c;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, v1, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;->h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V

    .line 292
    .line 293
    .line 294
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 295
    .line 296
    return-object p1
.end method
