.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->m(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$streamedLoad$1"
    f = "VastAdLoad.kt"
    l = {
        0x76,
        0x85,
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

.field public final synthetic l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

.field public final synthetic m:J


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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->m:J

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->m:J

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;JLrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->i:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->h:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v5, v0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lgt/k0;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lcom/moloco/sdk/internal/g0;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lgt/g0;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    move-object v5, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v1, p1

    .line 68
    check-cast v1, Lgt/g0;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->b()Lcom/moloco/sdk/internal/g0;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    instance-of p1, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 85
    .line 86
    .line 87
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_6
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 97
    .line 98
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 107
    .line 108
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6}, Lcom/moloco/sdk/internal/ortb/model/f;->a(Lcom/moloco/sdk/internal/ortb/model/c;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iput-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 117
    .line 118
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->i:I

    .line 119
    .line 120
    invoke-interface {p1, v5, v6, v4, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;->b(Ljava/lang/String;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_3

    .line 125
    .line 126
    return-object v0

    .line 127
    :goto_0
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/d;->e()Lcom/moloco/sdk/internal/ortb/model/p;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/p;->f()Lcom/moloco/sdk/internal/ortb/model/j;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    invoke-static {v1}, Lcom/moloco/sdk/internal/p;->a(Lcom/moloco/sdk/internal/ortb/model/j;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_1
    move-object v9, v1

    .line 158
    goto :goto_2

    .line 159
    :cond_7
    const/4 v1, 0x0

    .line 160
    goto :goto_1

    .line 161
    :goto_2
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b$a;

    .line 162
    .line 163
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->m:J

    .line 164
    .line 165
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 166
    .line 167
    const/4 v11, 0x0

    .line 168
    move-object v6, v1

    .line 169
    invoke-direct/range {v6 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b$a;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lrs/c;)V

    .line 170
    .line 171
    .line 172
    const/4 v9, 0x3

    .line 173
    const/4 v10, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    move-object v8, v1

    .line 177
    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    instance-of v5, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 182
    .line 183
    if-eqz v5, :cond_e

    .line 184
    .line 185
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 186
    .line 187
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    move-object v6, p1

    .line 192
    check-cast v6, Lcom/moloco/sdk/internal/g0$b;

    .line 193
    .line 194
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 199
    .line 200
    iget-wide v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->m:J

    .line 201
    .line 202
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->h:Ljava/lang/Object;

    .line 205
    .line 206
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->i:I

    .line 207
    .line 208
    invoke-interface {v5, v6, v7, v8, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;JLrs/c;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-ne v3, v0, :cond_8

    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_8
    move-object v13, v3

    .line 216
    move-object v3, p1

    .line 217
    move-object p1, v13

    .line 218
    :goto_3
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 219
    .line 220
    instance-of v5, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 221
    .line 222
    if-eqz v5, :cond_b

    .line 223
    .line 224
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 225
    .line 226
    check-cast v3, Lcom/moloco/sdk/internal/g0$b;

    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 233
    .line 234
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->j:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->h:Ljava/lang/Object;

    .line 237
    .line 238
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->i:I

    .line 239
    .line 240
    invoke-interface {v1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    if-ne v1, v0, :cond_9

    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_9
    move-object v5, v3

    .line 248
    move-object v13, v1

    .line 249
    move-object v1, p1

    .line 250
    move-object p1, v13

    .line 251
    :goto_4
    move-object v10, p1

    .line 252
    check-cast v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 253
    .line 254
    const/16 v11, 0xf

    .line 255
    .line 256
    const/4 v12, 0x0

    .line 257
    const/4 v6, 0x0

    .line 258
    const/4 v7, 0x0

    .line 259
    const/4 v8, 0x0

    .line 260
    const/4 v9, 0x0

    .line 261
    invoke-static/range {v5 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance v0, Lcom/moloco/sdk/internal/g0$b;

    .line 266
    .line 267
    invoke-direct {v0, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->d(Lcom/moloco/sdk/internal/g0;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 274
    .line 275
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)Lkt/e;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 287
    .line 288
    if-eqz p1, :cond_a

    .line 289
    .line 290
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    .line 291
    .line 292
    .line 293
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 294
    .line 295
    return-object p1

    .line 296
    :cond_b
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 297
    .line 298
    if-eqz v0, :cond_d

    .line 299
    .line 300
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 301
    .line 302
    const/4 v6, 0x4

    .line 303
    const/4 v7, 0x0

    .line 304
    const-string v3, "VastAdLoad"

    .line 305
    .line 306
    const-string v4, "main VAST ad didn\'t load due to failure or timeout"

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;->d()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_c

    .line 325
    .line 326
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 327
    .line 328
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 329
    .line 330
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 335
    .line 336
    invoke-static {v0, v1, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lgt/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 341
    .line 342
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 349
    .line 350
    invoke-static {v0, v1, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lgt/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 351
    .line 352
    .line 353
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 354
    .line 355
    return-object p1

    .line 356
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 357
    .line 358
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 359
    .line 360
    .line 361
    throw p1

    .line 362
    :cond_e
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 363
    .line 364
    if-eqz v0, :cond_f

    .line 365
    .line 366
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 367
    .line 368
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 369
    .line 370
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 377
    .line 378
    invoke-static {v0, v1, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;Lgt/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 379
    .line 380
    .line 381
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 382
    .line 383
    return-object p1

    .line 384
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 385
    .line 386
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 387
    .line 388
    .line 389
    throw p1
.end method
