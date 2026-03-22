.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->i(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1"
    f = "VastAdLoad.kt"
    l = {
        0x50,
        0x5e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->l:J

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->l:J

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;JLrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v5, v0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lgt/k0;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lgt/g0;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->b()Lcom/moloco/sdk/internal/g0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v1, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_4
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a$b;

    .line 71
    .line 72
    iget-wide v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->l:J

    .line 73
    .line 74
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 75
    .line 76
    invoke-direct {v8, v5, v6, v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a$b;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    const/4 v9, 0x3

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    move-object v5, p1

    .line 84
    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 89
    .line 90
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/d;->e()Lcom/moloco/sdk/internal/ortb/model/p;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/p;->f()Lcom/moloco/sdk/internal/ortb/model/j;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    invoke-static {v5}, Lcom/moloco/sdk/internal/p;->a(Lcom/moloco/sdk/internal/ortb/model/j;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    move-object v9, v5

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    move-object v9, v3

    .line 119
    :goto_0
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a$a;

    .line 120
    .line 121
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->l:J

    .line 122
    .line 123
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    move-object v6, v12

    .line 127
    invoke-direct/range {v6 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a$a;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lrs/c;)V

    .line 128
    .line 129
    .line 130
    const/4 v9, 0x3

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    move-object v5, p1

    .line 135
    move-object v8, v12

    .line 136
    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :try_start_1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

    .line 141
    .line 142
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->h:I

    .line 143
    .line 144
    invoke-interface {v1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    if-ne v1, v0, :cond_6

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_6
    move-object v13, v1

    .line 152
    move-object v1, p1

    .line 153
    move-object p1, v13

    .line 154
    :goto_1
    :try_start_2
    check-cast p1, Lcom/moloco/sdk/internal/g0;
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .line 156
    instance-of v3, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 157
    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 167
    .line 168
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->i:Ljava/lang/Object;

    .line 169
    .line 170
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->h:I

    .line 171
    .line 172
    invoke-interface {v1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-ne v1, v0, :cond_7

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_7
    move-object v5, p1

    .line 180
    move-object p1, v1

    .line 181
    :goto_2
    move-object v10, p1

    .line 182
    check-cast v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 183
    .line 184
    const/16 v11, 0xf

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v8, 0x0

    .line 190
    const/4 v9, 0x0

    .line 191
    invoke-static/range {v5 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 196
    .line 197
    new-instance v1, Lcom/moloco/sdk/internal/g0$b;

    .line 198
    .line 199
    invoke-direct {v1, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->d(Lcom/moloco/sdk/internal/g0;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lkt/e;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 219
    .line 220
    if-eqz p1, :cond_9

    .line 221
    .line 222
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 227
    .line 228
    if-eqz v0, :cond_a

    .line 229
    .line 230
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 231
    .line 232
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 233
    .line 234
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 241
    .line 242
    invoke-static {v0, v1, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lgt/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    return-object p1

    .line 248
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 249
    .line 250
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :catch_0
    move-object v1, p1

    .line 255
    :catch_1
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 256
    .line 257
    const/4 v9, 0x4

    .line 258
    const/4 v10, 0x0

    .line 259
    const-string v6, "VastAdLoad"

    .line 260
    .line 261
    const-string v7, "main VAST ad didn\'t load due to timeout"

    .line 262
    .line 263
    const/4 v8, 0x0

    .line 264
    invoke-static/range {v5 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v3, v4, v3}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 271
    .line 272
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 273
    .line 274
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 275
    .line 276
    invoke-direct {v1, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->d(Lcom/moloco/sdk/internal/g0;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 283
    .line 284
    if-eqz v0, :cond_b

    .line 285
    .line 286
    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 287
    .line 288
    .line 289
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 290
    .line 291
    return-object p1
.end method
