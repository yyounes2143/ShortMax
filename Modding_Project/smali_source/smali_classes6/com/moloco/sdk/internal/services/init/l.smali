.class public final Lcom/moloco/sdk/internal/services/init/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/init/j;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/init/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/init/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/moloco/sdk/Init$SDKInitResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/init/d;Lcom/moloco/sdk/internal/services/init/g;Lgt/g0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/init/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/init/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initApi"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initCache"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scope"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/l;->a:Lcom/moloco/sdk/internal/services/init/d;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/l;->b:Lcom/moloco/sdk/internal/services/init/g;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/l;->c:Lgt/g0;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/services/init/l;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/services/init/l;->d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/init/l;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/l;->b:Lcom/moloco/sdk/internal/services/init/g;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/services/init/g;->a(Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/moloco/sdk/internal/services/init/l$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/init/l$d;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/init/l$d;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/services/init/l$d;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/init/l$d;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/moloco/sdk/internal/services/init/l$d;-><init>(Lcom/moloco/sdk/internal/services/init/l;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/moloco/sdk/internal/services/init/l$d;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/init/l$d;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/init/l$d;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/moloco/sdk/acm/e;

    .line 41
    .line 42
    iget-object p2, v0, Lcom/moloco/sdk/internal/services/init/l$d;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Lcom/moloco/sdk/acm/recorder/a;

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p3, Lcom/moloco/sdk/acm/recorder/a;->Companion:Lcom/moloco/sdk/acm/recorder/a$a;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p3, v2}, Lcom/moloco/sdk/acm/recorder/a$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/acm/recorder/a;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/d;->c:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {p3, v2}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object p3, v0, Lcom/moloco/sdk/internal/services/init/l$d;->h:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v2, v0, Lcom/moloco/sdk/internal/services/init/l$d;->i:Ljava/lang/Object;

    .line 84
    .line 85
    iput v3, v0, Lcom/moloco/sdk/internal/services/init/l$d;->l:I

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/moloco/sdk/internal/services/init/l;->d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v1, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    move-object p2, p3

    .line 95
    move-object p3, p1

    .line 96
    move-object p1, v2

    .line 97
    :goto_1
    check-cast p3, Lcom/moloco/sdk/internal/services/init/c;

    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->b()Lcom/moloco/sdk/internal/g0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    instance-of v1, v0, Lcom/moloco/sdk/internal/g0$a;

    .line 104
    .line 105
    const-string/jumbo v2, "state"

    .line 106
    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 111
    .line 112
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->d:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, "failure"

    .line 128
    .line 129
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->a()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v2, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p2, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    instance-of v0, v0, Lcom/moloco/sdk/internal/g0$b;

    .line 165
    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 169
    .line 170
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->d:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const-string/jumbo v4, "success"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->a()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->a()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p1, v2, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p2, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 220
    .line 221
    .line 222
    :goto_2
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/init/c;->b()Lcom/moloco/sdk/internal/g0;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    return-object p1

    .line 227
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 228
    .line 229
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw p1
.end method

.method public final d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/init/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcom/moloco/sdk/internal/services/init/l$a;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/moloco/sdk/internal/services/init/l$a;

    .line 15
    .line 16
    iget v5, v4, Lcom/moloco/sdk/internal/services/init/l$a;->n:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/moloco/sdk/internal/services/init/l$a;->n:I

    .line 26
    .line 27
    :goto_0
    move-object v10, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v4, Lcom/moloco/sdk/internal/services/init/l$a;

    .line 30
    .line 31
    invoke-direct {v4, v0, v3}, Lcom/moloco/sdk/internal/services/init/l$a;-><init>(Lcom/moloco/sdk/internal/services/init/l;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v3, v10, Lcom/moloco/sdk/internal/services/init/l$a;->l:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v5, v10, Lcom/moloco/sdk/internal/services/init/l$a;->n:I

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    const/4 v7, 0x1

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    if-eq v5, v7, :cond_2

    .line 48
    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    iget-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->h:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lcom/moloco/sdk/internal/services/init/l;

    .line 54
    .line 55
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    iget-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->k:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lcom/moloco/sdk/acm/recorder/a;

    .line 71
    .line 72
    iget-object v2, v10, Lcom/moloco/sdk/internal/services/init/l$a;->j:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 75
    .line 76
    iget-object v5, v10, Lcom/moloco/sdk/internal/services/init/l$a;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v7, v10, Lcom/moloco/sdk/internal/services/init/l$a;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v7, Lcom/moloco/sdk/internal/services/init/l;

    .line 83
    .line 84
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v15, v1

    .line 88
    move-object v14, v2

    .line 89
    move-object v13, v5

    .line 90
    move-object v12, v7

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/init/l;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 100
    .line 101
    const/16 v16, 0xc

    .line 102
    .line 103
    const/16 v17, 0x0

    .line 104
    .line 105
    const-string v12, "InitService"

    .line 106
    .line 107
    const-string v13, "Returning current session init response"

    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/moloco/sdk/internal/services/init/c;

    .line 115
    .line 116
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 117
    .line 118
    invoke-direct {v2, v3}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const-string v3, "in_memory"

    .line 122
    .line 123
    invoke-direct {v1, v2, v3}, Lcom/moloco/sdk/internal/services/init/c;-><init>(Lcom/moloco/sdk/internal/g0;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_4
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/init/l;->b:Lcom/moloco/sdk/internal/services/init/g;

    .line 128
    .line 129
    new-instance v5, Lcom/moloco/sdk/internal/services/init/a;

    .line 130
    .line 131
    invoke-direct {v5, v1}, Lcom/moloco/sdk/internal/services/init/a;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v10, Lcom/moloco/sdk/internal/services/init/l$a;->h:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->i:Ljava/lang/Object;

    .line 137
    .line 138
    move-object/from16 v8, p2

    .line 139
    .line 140
    iput-object v8, v10, Lcom/moloco/sdk/internal/services/init/l$a;->j:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v2, v10, Lcom/moloco/sdk/internal/services/init/l$a;->k:Ljava/lang/Object;

    .line 143
    .line 144
    iput v7, v10, Lcom/moloco/sdk/internal/services/init/l$a;->n:I

    .line 145
    .line 146
    invoke-interface {v3, v5, v2, v10}, Lcom/moloco/sdk/internal/services/init/g;->c(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-ne v3, v4, :cond_5

    .line 151
    .line 152
    return-object v4

    .line 153
    :cond_5
    move-object v12, v0

    .line 154
    move-object v13, v1

    .line 155
    move-object v15, v2

    .line 156
    move-object v14, v8

    .line 157
    :goto_2
    check-cast v3, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 158
    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 162
    .line 163
    const/16 v21, 0xc

    .line 164
    .line 165
    const/16 v22, 0x0

    .line 166
    .line 167
    const-string v17, "InitService"

    .line 168
    .line 169
    const-string v18, "Returning cached init response"

    .line 170
    .line 171
    const/16 v19, 0x0

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    invoke-static/range {v16 .. v22}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-object v3, v12, Lcom/moloco/sdk/internal/services/init/l;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 179
    .line 180
    iget-object v4, v12, Lcom/moloco/sdk/internal/services/init/l;->c:Lgt/g0;

    .line 181
    .line 182
    new-instance v7, Lcom/moloco/sdk/internal/services/init/l$b;

    .line 183
    .line 184
    const/16 v16, 0x0

    .line 185
    .line 186
    move-object v11, v7

    .line 187
    invoke-direct/range {v11 .. v16}, Lcom/moloco/sdk/internal/services/init/l$b;-><init>(Lcom/moloco/sdk/internal/services/init/l;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 188
    .line 189
    .line 190
    const/4 v8, 0x3

    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v5, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-static/range {v4 .. v9}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/moloco/sdk/internal/services/init/c;

    .line 198
    .line 199
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 200
    .line 201
    invoke-direct {v2, v3}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    const-string v3, "cache"

    .line 205
    .line 206
    invoke-direct {v1, v2, v3}, Lcom/moloco/sdk/internal/services/init/c;-><init>(Lcom/moloco/sdk/internal/g0;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_6
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 211
    .line 212
    const/16 v21, 0xc

    .line 213
    .line 214
    const/16 v22, 0x0

    .line 215
    .line 216
    const-string v17, "InitService"

    .line 217
    .line 218
    const-string v18, "No cached response, fetching from server"

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    const/16 v20, 0x0

    .line 223
    .line 224
    invoke-static/range {v16 .. v22}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iput-object v12, v10, Lcom/moloco/sdk/internal/services/init/l$a;->h:Ljava/lang/Object;

    .line 228
    .line 229
    const/4 v1, 0x0

    .line 230
    iput-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->i:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->j:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v1, v10, Lcom/moloco/sdk/internal/services/init/l$a;->k:Ljava/lang/Object;

    .line 235
    .line 236
    iput v6, v10, Lcom/moloco/sdk/internal/services/init/l$a;->n:I

    .line 237
    .line 238
    const/4 v9, 0x0

    .line 239
    move-object v5, v12

    .line 240
    move-object v6, v13

    .line 241
    move-object v7, v14

    .line 242
    move-object v8, v15

    .line 243
    invoke-virtual/range {v5 .. v10}, Lcom/moloco/sdk/internal/services/init/l;->e(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;ZLrs/c;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-ne v3, v4, :cond_7

    .line 248
    .line 249
    return-object v4

    .line 250
    :cond_7
    move-object v1, v12

    .line 251
    :goto_3
    check-cast v3, Lcom/moloco/sdk/internal/g0;

    .line 252
    .line 253
    instance-of v2, v3, Lcom/moloco/sdk/internal/g0$b;

    .line 254
    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    move-object v2, v3

    .line 258
    check-cast v2, Lcom/moloco/sdk/internal/g0$b;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 265
    .line 266
    iput-object v2, v1, Lcom/moloco/sdk/internal/services/init/l;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_8
    instance-of v1, v3, Lcom/moloco/sdk/internal/g0$a;

    .line 270
    .line 271
    if-eqz v1, :cond_9

    .line 272
    .line 273
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 274
    .line 275
    const/16 v9, 0xc

    .line 276
    .line 277
    const/4 v10, 0x0

    .line 278
    const-string v5, "InitService"

    .line 279
    .line 280
    const-string v6, "Fetching init response failed"

    .line 281
    .line 282
    const/4 v7, 0x0

    .line 283
    const/4 v8, 0x0

    .line 284
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :goto_4
    new-instance v1, Lcom/moloco/sdk/internal/services/init/c;

    .line 288
    .line 289
    const-string v2, "network"

    .line 290
    .line 291
    invoke-direct {v1, v3, v2}, Lcom/moloco/sdk/internal/services/init/c;-><init>(Lcom/moloco/sdk/internal/g0;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-object v1

    .line 295
    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 296
    .line 297
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 298
    .line 299
    .line 300
    throw v1
.end method

.method public final e(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;ZLrs/c;)Ljava/lang/Object;
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/moloco/sdk/internal/services/init/l$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/moloco/sdk/internal/services/init/l$c;

    iget v2, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/moloco/sdk/internal/services/init/l$c;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/moloco/sdk/internal/services/init/l$c;-><init>(Lcom/moloco/sdk/internal/services/init/l;Lrs/c;)V

    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/l$c;->r:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    const-string v5, "async"

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const-string v11, "result"

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->p:I

    iget v13, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    iget-boolean v14, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iget-object v15, v1, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    check-cast v6, Lcom/moloco/sdk/acm/recorder/a;

    iget-object v7, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    check-cast v7, Lcom/moloco/sdk/publisher/MediationInfo;

    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    check-cast v8, Lcom/moloco/sdk/internal/services/init/l;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move-object v2, v1

    move-object/from16 p5, v5

    move-object v1, v7

    move-object v12, v8

    move-object v0, v9

    move v5, v10

    move v10, v13

    move v7, v14

    const/4 v9, 0x5

    const/16 v17, 0x3

    move-object v14, v6

    const/4 v6, 0x0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    iget v3, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    iget-boolean v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iget-object v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    check-cast v6, Lcom/moloco/sdk/Init$SDKInitResponse;

    iget-object v1, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/moloco/sdk/acm/recorder/a;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    iget v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    iget-boolean v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iget-object v7, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    check-cast v7, Lcom/moloco/sdk/internal/services/init/g;

    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    check-cast v8, Lcom/moloco/sdk/internal/services/init/a;

    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    check-cast v9, Lcom/moloco/sdk/Init$SDKInitResponse;

    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    check-cast v10, Lcom/moloco/sdk/acm/recorder/a;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_5

    :cond_5
    iget v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->q:I

    iget v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->p:I

    iget v7, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    iget-boolean v8, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/l$c;->m:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v14, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    check-cast v14, Lcom/moloco/sdk/acm/recorder/a;

    iget-object v15, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    check-cast v15, Lcom/moloco/sdk/publisher/MediationInfo;

    iget-object v12, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    check-cast v10, Lcom/moloco/sdk/internal/services/init/l;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move-object/from16 v29, v13

    move v13, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v15

    move-object/from16 v15, v29

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v4, 0x0

    move/from16 v6, p4

    move-object v9, v0

    move-object v7, v1

    move-object v12, v2

    move v8, v4

    const/4 v10, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    :goto_1
    if-ge v8, v10, :cond_16

    .line 3
    iget-object v13, v12, Lcom/moloco/sdk/internal/services/init/l;->a:Lcom/moloco/sdk/internal/services/init/d;

    iput-object v12, v7, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    iput-object v0, v7, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    iput-object v1, v7, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    iput-object v4, v7, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    iput-object v9, v7, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    iput-object v9, v7, Lcom/moloco/sdk/internal/services/init/l$c;->m:Ljava/lang/Object;

    iput-boolean v6, v7, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iput v10, v7, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    iput v8, v7, Lcom/moloco/sdk/internal/services/init/l$c;->p:I

    iput v8, v7, Lcom/moloco/sdk/internal/services/init/l$c;->q:I

    const/4 v14, 0x1

    iput v14, v7, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    invoke-interface {v13, v0, v1, v4, v7}, Lcom/moloco/sdk/internal/services/init/d;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_7

    return-object v3

    :cond_7
    move-object v14, v4

    move v4, v8

    move-object v15, v9

    move-object v8, v12

    move-object v12, v0

    move-object v0, v13

    move v13, v10

    move-object v10, v1

    move-object v1, v7

    move v7, v6

    move v6, v4

    .line 4
    :goto_2
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    check-cast v0, Lcom/moloco/sdk/internal/g0;

    .line 6
    :goto_3
    instance-of v9, v0, Lcom/moloco/sdk/internal/g0$b;

    if-eqz v9, :cond_c

    .line 7
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_9

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    check-cast v0, Lcom/moloco/sdk/internal/g0;

    :goto_4
    const-string v6, "null cannot be cast to non-null type com.moloco.sdk.internal.Result.Success<com.moloco.sdk.Init.SDKInitResponse, com.moloco.sdk.internal.services.init.InitFailure>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/moloco/sdk/internal/g0$b;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 8
    sget-object v6, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init, successful in attempt(#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0xc

    const/16 v25, 0x0

    const-string v20, "InitService"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v6

    invoke-static/range {v19 .. v25}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 9
    new-instance v9, Lcom/moloco/sdk/internal/services/init/a;

    invoke-direct {v9, v12}, Lcom/moloco/sdk/internal/services/init/a;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v8, v8, Lcom/moloco/sdk/internal/services/init/l;->b:Lcom/moloco/sdk/internal/services/init/g;

    .line 11
    const-string v20, "InitService"

    const-string v21, "Clearing cache for old init response"

    invoke-static/range {v19 .. v25}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 12
    iput-object v14, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    iput-object v0, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    iput-object v9, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    iput-object v8, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    iput-object v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->m:Ljava/lang/Object;

    iput-boolean v7, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iput v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    const/4 v6, 0x2

    iput v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    invoke-interface {v8, v9, v14, v1}, Lcom/moloco/sdk/internal/services/init/g;->b(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_a

    return-object v3

    :cond_a
    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    move-object v0, v1

    move-object v1, v14

    .line 13
    :goto_5
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const-string v11, "InitService"

    const-string v12, "Updating cache to new init response"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 14
    iput-object v1, v0, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    iput-object v9, v0, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    iput-object v10, v0, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    iput v4, v0, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    const/4 v10, 0x3

    iput v10, v0, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    invoke-interface {v7, v8, v1, v9, v0}, Lcom/moloco/sdk/internal/services/init/g;->d(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/Init$SDKInitResponse;Lrs/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move v3, v4

    move v4, v6

    move-object v6, v9

    .line 15
    :goto_6
    new-instance v0, Lcom/moloco/sdk/acm/b;

    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/a;->e:Lcom/moloco/sdk/internal/client_metrics_data/a;

    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "success"

    invoke-virtual {v0, v7, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 17
    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 18
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 19
    invoke-interface {v1, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 20
    new-instance v0, Lcom/moloco/sdk/internal/g0$b;

    invoke-direct {v0, v6}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_c
    const/4 v9, 0x2

    const/16 v17, 0x3

    .line 21
    instance-of v0, v0, Lcom/moloco/sdk/internal/g0$a;

    if-eqz v0, :cond_15

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_d

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    check-cast v0, Lcom/moloco/sdk/internal/g0;

    :goto_7
    const-string v9, "null cannot be cast to non-null type com.moloco.sdk.internal.Result.Failure<com.moloco.sdk.Init.SDKInitResponse, com.moloco.sdk.internal.services.init.InitFailure>"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/moloco/sdk/internal/g0$a;

    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/moloco/sdk/internal/services/init/i;

    .line 23
    instance-of v2, v9, Lcom/moloco/sdk/internal/services/init/i$a;

    if-eqz v2, :cond_e

    check-cast v9, Lcom/moloco/sdk/internal/services/init/i$a;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    move-result-object v2

    goto :goto_8

    .line 24
    :cond_e
    instance-of v2, v9, Lcom/moloco/sdk/internal/services/init/i$b;

    if-eqz v2, :cond_14

    check-cast v9, Lcom/moloco/sdk/internal/services/init/i$b;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    :goto_8
    new-instance v9, Lcom/moloco/sdk/acm/b;

    sget-object v20, Lcom/moloco/sdk/internal/client_metrics_data/a;->e:Lcom/moloco/sdk/internal/client_metrics_data/a;

    move/from16 v21, v6

    invoke-virtual/range {v20 .. v20}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v13

    const-string v13, "failure"

    invoke-virtual {v9, v6, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v6

    .line 27
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v6

    .line 28
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v6

    .line 29
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v6

    .line 30
    invoke-interface {v14, v6}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 31
    sget-object v6, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Init attempt(#"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") failed with error: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0xc

    const/16 v28, 0x0

    .line 33
    const-string v23, "InitService"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v6

    invoke-static/range {v22 .. v28}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 34
    invoke-static {v0}, Lcom/moloco/sdk/internal/services/init/k;->b(Lcom/moloco/sdk/internal/g0$a;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 35
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/moloco/sdk/internal/services/init/i$b;

    if-eqz v2, :cond_f

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init response is non-retryable server failure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/internal/services/init/i$b;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", clearing cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0xc

    const/16 v28, 0x0

    .line 37
    const-string v23, "InitService"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v6

    invoke-static/range {v22 .. v28}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 38
    iget-object v0, v8, Lcom/moloco/sdk/internal/services/init/l;->b:Lcom/moloco/sdk/internal/services/init/g;

    new-instance v2, Lcom/moloco/sdk/internal/services/init/a;

    invoke-direct {v2, v12}, Lcom/moloco/sdk/internal/services/init/a;-><init>(Ljava/lang/String;)V

    iput-object v15, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    iput-object v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    iput-object v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    iput-object v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    iput-object v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->m:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    invoke-interface {v0, v2, v14, v1}, Lcom/moloco/sdk/internal/services/init/g;->b(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_10

    return-object v3

    .line 39
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init response is non-retryable server or client failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0xc

    const/16 v28, 0x0

    .line 40
    const-string v23, "InitService"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v6

    invoke-static/range {v22 .. v28}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_10
    move-object v1, v15

    .line 41
    :goto_9
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_a

    :cond_11
    move-object v12, v0

    check-cast v12, Lcom/moloco/sdk/internal/g0;

    :goto_a
    return-object v12

    :cond_12
    const/4 v4, 0x4

    .line 42
    iput-object v8, v1, Lcom/moloco/sdk/internal/services/init/l$c;->h:Ljava/lang/Object;

    iput-object v12, v1, Lcom/moloco/sdk/internal/services/init/l$c;->i:Ljava/lang/Object;

    iput-object v10, v1, Lcom/moloco/sdk/internal/services/init/l$c;->j:Ljava/lang/Object;

    iput-object v14, v1, Lcom/moloco/sdk/internal/services/init/l$c;->k:Ljava/lang/Object;

    iput-object v15, v1, Lcom/moloco/sdk/internal/services/init/l$c;->l:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/moloco/sdk/internal/services/init/l$c;->m:Ljava/lang/Object;

    iput-boolean v7, v1, Lcom/moloco/sdk/internal/services/init/l$c;->n:Z

    move/from16 v0, v20

    iput v0, v1, Lcom/moloco/sdk/internal/services/init/l$c;->o:I

    move/from16 v2, v21

    iput v2, v1, Lcom/moloco/sdk/internal/services/init/l$c;->p:I

    const/4 v9, 0x5

    iput v9, v1, Lcom/moloco/sdk/internal/services/init/l$c;->t:I

    move-object/from16 p5, v5

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_13

    return-object v3

    :cond_13
    move v4, v2

    const/4 v5, 0x1

    move-object v2, v1

    move-object v1, v10

    move v10, v0

    move-object v0, v12

    move-object v12, v8

    :goto_b
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v5, p5

    move v6, v7

    move-object v4, v14

    move-object v9, v15

    move-object v7, v2

    move-object/from16 v2, p0

    goto/16 :goto_1

    .line 43
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 44
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_16
    const/4 v6, 0x0

    .line 45
    sget-object v12, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moloco SDK Init failed after all retries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_17

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_c

    :cond_17
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0xc

    const/16 v18, 0x0

    const-string v13, "InitService"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 46
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_18

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v6

    goto :goto_d

    :cond_18
    move-object v12, v0

    check-cast v12, Lcom/moloco/sdk/internal/g0;

    :goto_d
    return-object v12
.end method
