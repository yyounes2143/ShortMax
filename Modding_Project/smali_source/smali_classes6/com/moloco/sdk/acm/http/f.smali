.class public final Lcom/moloco/sdk/acm/http/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/acm/http/j;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPostMetricsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostMetricsRequest.kt\ncom/moloco/sdk/acm/http/PostMetricsRequestImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,111:1\n343#2:112\n233#2:113\n109#2,2:131\n22#2:133\n16#3,4:114\n21#3,10:121\n17#4,3:118\n*S KotlinDebug\n*F\n+ 1 PostMetricsRequest.kt\ncom/moloco/sdk/acm/http/PostMetricsRequestImpl\n*L\n74#1:112\n74#1:113\n74#1:131,2\n74#1:133\n78#1:114,4\n78#1:121,10\n78#1:118,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "httpClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/acm/http/f;->a:Lio/ktor/client/HttpClient;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/acm/http/f;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "PostMetricsRequest"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/acm/http/f;->c:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic c(Lcom/moloco/sdk/acm/http/f;JLcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/moloco/sdk/acm/http/f;->b(JLcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(JLio/ktor/client/plugins/HttpTimeout$a;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$timeout"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Lio/ktor/client/plugins/HttpTimeout$a;->g(Ljava/lang/Long;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lcom/moloco/sdk/acm/http/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "(",
            "Lcom/moloco/sdk/acm/http/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lwr/g;",
            "Lkotlin/Unit;",
            ">;",
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
    instance-of v0, p3, Lcom/moloco/sdk/acm/http/f$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/moloco/sdk/acm/http/f$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/acm/http/f$a;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/acm/http/f$a;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/moloco/sdk/acm/http/f$a;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lcom/moloco/sdk/acm/http/f$a;-><init>(Lcom/moloco/sdk/acm/http/f;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v6, Lcom/moloco/sdk/acm/http/f$a;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/moloco/sdk/acm/http/f$a;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p3, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

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
    iput v2, v6, Lcom/moloco/sdk/acm/http/f$a;->j:I

    .line 62
    .line 63
    const-wide/16 v2, 0x1388

    .line 64
    .line 65
    move-object v1, p0

    .line 66
    move-object v4, p1

    .line 67
    move-object v5, p2

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/moloco/sdk/acm/http/f;->b(JLcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final b(JLcom/moloco/sdk/acm/http/i;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/moloco/sdk/acm/http/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lwr/g;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/moloco/sdk/acm/http/f$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/moloco/sdk/acm/http/f$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/acm/http/f$b;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/acm/http/f$b;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/acm/http/f$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/moloco/sdk/acm/http/f$b;-><init>(Lcom/moloco/sdk/acm/http/f;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/moloco/sdk/acm/http/f$b;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/acm/http/f$b;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lcom/moloco/sdk/acm/http/f$b;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lwr/o;

    .line 45
    .line 46
    iget-object p2, v0, Lcom/moloco/sdk/acm/http/f$b;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Lcom/moloco/sdk/acm/http/f;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    iget-object p1, v0, Lcom/moloco/sdk/acm/http/f$b;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/moloco/sdk/acm/http/f;

    .line 69
    .line 70
    :try_start_1
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    move-object p2, p1

    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :catch_1
    move-exception p2

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_3
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :try_start_2
    iget-object p5, p0, Lcom/moloco/sdk/acm/http/f;->a:Lio/ktor/client/HttpClient;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/moloco/sdk/acm/http/f;->b:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v6, Lio/ktor/client/request/HttpRequestBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v2}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/moloco/sdk/acm/http/k;

    .line 95
    .line 96
    invoke-direct {v2, p1, p2}, Lcom/moloco/sdk/acm/http/k;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v2}, Lio/ktor/client/plugins/d;->e(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lio/ktor/http/a$a;->a:Lio/ktor/http/a$a;

    .line 103
    .line 104
    invoke-virtual {p1}, Lio/ktor/http/a$a;->b()Lio/ktor/http/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v6, p1}, Lio/ktor/http/d;->e(Lwr/l;Lio/ktor/http/a;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v6, p4}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p3}, Lcom/moloco/sdk/acm/http/f;->e(Lcom/moloco/sdk/acm/http/i;)[B

    .line 115
    .line 116
    .line 117
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    const-class p2, [B

    .line 119
    .line 120
    if-nez p1, :cond_4

    .line 121
    .line 122
    :try_start_3
    sget-object p1, Lxr/a;->a:Lxr/a;

    .line 123
    .line 124
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p3, p2, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_2
    move-exception p2

    .line 148
    move-object p1, p0

    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_4
    instance-of p3, p1, Lxr/b;

    .line 152
    .line 153
    if-eqz p3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v4}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-static {p3, p2, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    sget-object p1, Lwr/m;->b:Lwr/m$a;

    .line 185
    .line 186
    invoke-virtual {p1}, Lwr/m$a;->c()Lwr/m;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v6, p1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    .line 194
    .line 195
    invoke-direct {p1, v6, p5}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 196
    .line 197
    .line 198
    iput-object p0, v0, Lcom/moloco/sdk/acm/http/f$b;->h:Ljava/lang/Object;

    .line 199
    .line 200
    iput v5, v0, Lcom/moloco/sdk/acm/http/f$b;->l:I

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 206
    if-ne p5, v1, :cond_6

    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_6
    move-object p2, p0

    .line 210
    :goto_2
    :try_start_4
    check-cast p5, Ltr/c;

    .line 211
    .line 212
    invoke-virtual {p5}, Ltr/c;->e()Lwr/o;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p2, v0, Lcom/moloco/sdk/acm/http/f$b;->h:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object p1, v0, Lcom/moloco/sdk/acm/http/f$b;->i:Ljava/lang/Object;

    .line 219
    .line 220
    iput v3, v0, Lcom/moloco/sdk/acm/http/f$b;->l:I

    .line 221
    .line 222
    invoke-static {p5, v4, v0, v5, v4}, Lio/ktor/client/statement/HttpResponseKt;->c(Ltr/c;Ljava/nio/charset/Charset;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    if-ne p5, v1, :cond_7

    .line 227
    .line 228
    return-object v1

    .line 229
    :cond_7
    :goto_3
    :try_start_5
    check-cast p5, Ljava/lang/String;

    .line 230
    .line 231
    sget-object p3, Lwr/o;->c:Lwr/o$a;

    .line 232
    .line 233
    invoke-virtual {p3}, Lwr/o$a;->B()Lwr/o;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    if-eqz p3, :cond_8

    .line 242
    .line 243
    sget-object v0, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 244
    .line 245
    iget-object v1, p2, Lcom/moloco/sdk/acm/http/f;->c:Ljava/lang/String;

    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string p3, "Post Metrics Request Success: "

    .line 253
    .line 254
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    const/4 v4, 0x4

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v3, 0x0

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/acm/services/e;->m(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-static {p5}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    goto :goto_6

    .line 275
    :cond_8
    sget-object v0, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 276
    .line 277
    iget-object v1, p2, Lcom/moloco/sdk/acm/http/f;->c:Ljava/lang/String;

    .line 278
    .line 279
    new-instance p3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string p4, "Post Metrics Request Error: "

    .line 285
    .line 286
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    const/16 v5, 0xc

    .line 297
    .line 298
    const/4 v6, 0x0

    .line 299
    const/4 v3, 0x0

    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    sget-object p3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 305
    .line 306
    new-instance p3, Ljava/lang/Exception;

    .line 307
    .line 308
    new-instance p4, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string p5, "PostMetricsRequest Error: "

    .line 314
    .line 315
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {p3}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 336
    goto :goto_6

    .line 337
    :catch_3
    move-exception p1

    .line 338
    move-object v7, p2

    .line 339
    move-object p2, p1

    .line 340
    move-object p1, v7

    .line 341
    :goto_4
    move-object v7, p2

    .line 342
    move-object p2, p1

    .line 343
    move-object p1, v7

    .line 344
    :goto_5
    sget-object v0, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 345
    .line 346
    iget-object v1, p2, Lcom/moloco/sdk/acm/http/f;->c:Ljava/lang/String;

    .line 347
    .line 348
    const/16 v5, 0x8

    .line 349
    .line 350
    const/4 v6, 0x0

    .line 351
    const-string v2, "Post Metrics Request Exception"

    .line 352
    .line 353
    const/4 v4, 0x0

    .line 354
    move-object v3, p1

    .line 355
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 359
    .line 360
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    :goto_6
    return-object p1
.end method

.method public final e(Lcom/moloco/sdk/acm/http/i;)[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest;->newBuilder()Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/http/i;->a()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$a;->a(Ljava/lang/Iterable;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/http/i;->b()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$a;->b(Ljava/lang/Iterable;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "build(...)"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string/jumbo v0, "toByteArray(...)"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method
