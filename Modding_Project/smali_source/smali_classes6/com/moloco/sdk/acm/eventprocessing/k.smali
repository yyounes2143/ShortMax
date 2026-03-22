.class public final Lcom/moloco/sdk/acm/eventprocessing/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/moloco/sdk/acm/http/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/acm/db/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/acm/eventprocessing/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lwr/g;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/http/j;Lcom/moloco/sdk/acm/db/d;Lcom/moloco/sdk/acm/eventprocessing/e;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/acm/http/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/acm/db/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/eventprocessing/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/http/j;",
            "Lcom/moloco/sdk/acm/db/d;",
            "Lcom/moloco/sdk/acm/eventprocessing/e;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lwr/g;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "metricsRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "metricsDAO"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dataAgeChecker"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "headers"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->a:Lcom/moloco/sdk/acm/http/j;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->b:Lcom/moloco/sdk/acm/db/d;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->c:Lcom/moloco/sdk/acm/eventprocessing/e;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->d:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    const-string p1, "RequestAndPurgeDB"

    .line 33
    .line 34
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->e:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/acm/eventprocessing/k$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/eventprocessing/k$a;-><init>(Lcom/moloco/sdk/acm/eventprocessing/k;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/moloco/sdk/acm/eventprocessing/k;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast p1, Lkotlin/Result;

    .line 49
    .line 50
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    iget-object v2, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->h:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lcom/moloco/sdk/acm/eventprocessing/k;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k;->b:Lcom/moloco/sdk/acm/db/d;

    .line 76
    .line 77
    iput-object p0, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput v4, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 80
    .line 81
    invoke-interface {p1, v0}, Lcom/moloco/sdk/acm/db/d;->a(Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    move-object v2, p0

    .line 89
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 90
    .line 91
    sget-object v4, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 92
    .line 93
    iget-object v5, v2, Lcom/moloco/sdk/acm/eventprocessing/k;->e:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, " events processed."

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const/4 v8, 0x4

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    invoke-static/range {v4 .. v9}, Lcom/moloco/sdk/acm/services/e;->m(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Lcom/moloco/sdk/acm/eventprocessing/a;

    .line 123
    .line 124
    iget-object v5, v2, Lcom/moloco/sdk/acm/eventprocessing/k;->c:Lcom/moloco/sdk/acm/eventprocessing/e;

    .line 125
    .line 126
    invoke-direct {v4, v5}, Lcom/moloco/sdk/acm/eventprocessing/a;-><init>(Lcom/moloco/sdk/acm/eventprocessing/e;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, p1}, Lcom/moloco/sdk/acm/eventprocessing/a;->a(Ljava/util/List;)Lcom/moloco/sdk/acm/http/i;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/http/i;->a()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_5

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/http/i;->b()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    const-string p1, "No metrics to process"

    .line 154
    .line 155
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1

    .line 160
    :cond_5
    iget-object v4, v2, Lcom/moloco/sdk/acm/eventprocessing/k;->a:Lcom/moloco/sdk/acm/http/j;

    .line 161
    .line 162
    iget-object v5, v2, Lcom/moloco/sdk/acm/eventprocessing/k;->d:Lkotlin/jvm/functions/Function1;

    .line 163
    .line 164
    iput-object v2, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->h:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, v0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 167
    .line 168
    invoke-interface {v4, p1, v5, v0}, Lcom/moloco/sdk/acm/http/j;->a(Lcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-ne p1, v1, :cond_6

    .line 173
    .line 174
    return-object v1

    .line 175
    :cond_6
    move-object v0, v2

    .line 176
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    move-object v1, p1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 184
    .line 185
    sget-object v2, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 186
    .line 187
    iget-object v3, v0, Lcom/moloco/sdk/acm/eventprocessing/k;->e:Ljava/lang/String;

    .line 188
    .line 189
    const/4 v6, 0x4

    .line 190
    const/4 v7, 0x0

    .line 191
    const-string v4, "Request Success"

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/acm/services/e;->m(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_7
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v1, :cond_8

    .line 202
    .line 203
    sget-object v2, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 204
    .line 205
    iget-object v3, v0, Lcom/moloco/sdk/acm/eventprocessing/k;->e:Ljava/lang/String;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v4, "Request failure: "

    .line 213
    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const/16 v7, 0xc

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    const/4 v5, 0x0

    .line 232
    const/4 v6, 0x0

    .line 233
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    return-object p1
.end method
