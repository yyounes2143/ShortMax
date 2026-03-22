.class public final Lcom/moloco/sdk/internal/services/bidtoken/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/e;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBidTokenApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidTokenApi.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenApiImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n*L\n1#1,175:1\n343#2:176\n233#2:177\n109#2,2:195\n22#2:197\n16#3,4:178\n21#3,10:185\n17#4,3:182\n17#4,3:199\n156#5:198\n*S KotlinDebug\n*F\n+ 1 BidTokenApi.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenApiImpl\n*L\n137#1:176\n137#1:177\n137#1:195,2\n137#1:197\n143#1:178,4\n143#1:185,10\n143#1:182,3\n159#1:199,3\n159#1:198\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/bidtoken/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/bidtoken/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/ktor/client/HttpClient;Lcom/moloco/sdk/internal/services/bidtoken/l;Lcom/moloco/sdk/internal/services/bidtoken/j;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/bidtoken/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/services/bidtoken/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sdkVersion"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "httpClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "httpRequestInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "deviceRequestInfo"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->b:Lio/ktor/client/HttpClient;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->c:Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->d:Lcom/moloco/sdk/internal/services/bidtoken/j;

    .line 31
    .line 32
    const-string p1, "BidTokenApi"

    .line 33
    .line 34
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->e:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/services/bidtoken/c;)Lcom/moloco/sdk/internal/services/bidtoken/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->c:Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/services/bidtoken/c;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c;->d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lcom/moloco/sdk/internal/services/bidtoken/c;Lwr/g;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "$this$headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->d:Lcom/moloco/sdk/internal/services/bidtoken/j;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/j;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p1

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/r;->b(Lwr/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lcom/moloco/sdk/internal/q;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/c$a;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/moloco/sdk/internal/services/bidtoken/c$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/c;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lcom/moloco/sdk/internal/q;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/internal/services/bidtoken/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c$b;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/c;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const-class v6, [B

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 63
    .line 64
    :try_start_1
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :catch_1
    move-exception p2

    .line 70
    :goto_1
    move-object v3, p2

    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :catch_2
    move-exception p2

    .line 74
    :goto_2
    move-object v3, p2

    .line 75
    goto/16 :goto_a

    .line 76
    .line 77
    :catch_3
    move-exception p2

    .line 78
    :goto_3
    move-object v3, p2

    .line 79
    goto/16 :goto_b

    .line 80
    .line 81
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :try_start_2
    iget-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->b:Lio/ktor/client/HttpClient;

    .line 85
    .line 86
    new-instance v2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {v2, p1}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/moloco/sdk/internal/services/bidtoken/f;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/services/bidtoken/f;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/c;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p1}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

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
    invoke-static {v2, p1}, Lio/ktor/http/d;->e(Lwr/l;Lio/ktor/http/a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/c;->f()[B

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    sget-object p1, Lxr/a;->a:Lxr/a;

    .line 118
    .line 119
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v7, v8, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_4
    move-exception p2

    .line 143
    move-object p1, p0

    .line 144
    goto :goto_1

    .line 145
    :catch_5
    move-exception p2

    .line 146
    move-object p1, p0

    .line 147
    goto :goto_2

    .line 148
    :catch_6
    move-exception p2

    .line 149
    move-object p1, p0

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    instance-of v7, p1, Lxr/b;

    .line 152
    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v7, v8, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 182
    .line 183
    .line 184
    :goto_4
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/c;->c:Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/l;->c()J

    .line 187
    .line 188
    .line 189
    move-result-wide v7

    .line 190
    invoke-static {v2, v7, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;->b(Lio/ktor/client/request/HttpRequestBuilder;J)V

    .line 191
    .line 192
    .line 193
    sget-object p1, Lwr/m;->b:Lwr/m$a;

    .line 194
    .line 195
    invoke-virtual {p1}, Lwr/m$a;->c()Lwr/m;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 200
    .line 201
    .line 202
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    .line 203
    .line 204
    invoke-direct {p1, v2, p2}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 205
    .line 206
    .line 207
    iput-object p0, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->h:Ljava/lang/Object;

    .line 208
    .line 209
    iput v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->k:I

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2
    :try_end_2
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 215
    if-ne p2, v1, :cond_6

    .line 216
    .line 217
    return-object v1

    .line 218
    :cond_6
    move-object p1, p0

    .line 219
    :goto_5
    :try_start_3
    check-cast p2, Ltr/c;
    :try_end_3
    .catch Lio/ktor/client/plugins/HttpRequestTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 220
    .line 221
    invoke-virtual {p2}, Ltr/c;->e()Lwr/o;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    sget-object v2, Lwr/o;->c:Lwr/o$a;

    .line 226
    .line 227
    invoke-virtual {v2}, Lwr/o$a;->B()Lwr/o;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    :try_start_4
    invoke-virtual {p2}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {p2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v2, v5, p2}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iput-object v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->h:Ljava/lang/Object;

    .line 258
    .line 259
    iput v4, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$b;->k:I

    .line 260
    .line 261
    invoke-virtual {p1, p2, v0}, Lio/ktor/client/call/HttpClientCall;->a(Les/a;Lrs/c;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    if-ne p2, v1, :cond_7

    .line 266
    .line 267
    return-object v1

    .line 268
    :cond_7
    :goto_6
    if-eqz p2, :cond_8

    .line 269
    .line 270
    check-cast p2, [B

    .line 271
    .line 272
    invoke-static {p2}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3;->parseFrom([B)Lcom/moloco/sdk/BidToken$BidTokenResponseV3;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    new-instance p2, Lcom/moloco/sdk/internal/g0$b;

    .line 277
    .line 278
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3;->getBidToken()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const-string v2, "getBidToken(...)"

    .line 285
    .line 286
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3;->getPk()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    const-string v3, "getPk(...)"

    .line 294
    .line 295
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/bidtoken/g;->b(Lcom/moloco/sdk/BidToken$BidTokenResponseV3;)Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-direct {v0, v1, v2, p1}, Lcom/moloco/sdk/internal/services/bidtoken/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;)V

    .line 306
    .line 307
    .line 308
    invoke-direct {p2, v0}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 313
    .line 314
    const-string p2, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 315
    .line 316
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p1
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0

    .line 320
    :goto_7
    new-instance p2, Lcom/moloco/sdk/internal/g0$a;

    .line 321
    .line 322
    new-instance v0, Lcom/moloco/sdk/internal/q;

    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v2, "Bidtoken parsing failed. Reason: "

    .line 330
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    sget-object v1, Lwr/o;->c:Lwr/o$a;

    .line 342
    .line 343
    invoke-virtual {v1}, Lwr/o$a;->d()Lwr/o;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-direct {v0, p1, v1}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p2, v0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_9
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 359
    .line 360
    new-instance v0, Lcom/moloco/sdk/internal/q;

    .line 361
    .line 362
    invoke-virtual {p2}, Ltr/c;->e()Lwr/o;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-virtual {p2}, Lwr/o;->e0()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    const-string v1, "bidtoken request failed"

    .line 371
    .line 372
    invoke-direct {v0, v1, p2}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    invoke-direct {p1, v0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    move-object p2, p1

    .line 379
    :goto_8
    return-object p2

    .line 380
    :goto_9
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 381
    .line 382
    iget-object v1, p1, Lcom/moloco/sdk/internal/services/bidtoken/c;->e:Ljava/lang/String;

    .line 383
    .line 384
    const/16 v5, 0x8

    .line 385
    .line 386
    const/4 v6, 0x0

    .line 387
    const-string v2, "Bid Token API Request exception"

    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 394
    .line 395
    new-instance p2, Lcom/moloco/sdk/internal/q;

    .line 396
    .line 397
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/b;->b:Lcom/moloco/sdk/internal/services/bidtoken/b;

    .line 398
    .line 399
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/b;->c()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    const-string v1, "bidtoken request failed due to unknown exception"

    .line 404
    .line 405
    invoke-direct {p2, v1, v0}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 406
    .line 407
    .line 408
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    return-object p1

    .line 412
    :goto_a
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 413
    .line 414
    iget-object v1, p1, Lcom/moloco/sdk/internal/services/bidtoken/c;->e:Ljava/lang/String;

    .line 415
    .line 416
    const/16 v5, 0x8

    .line 417
    .line 418
    const/4 v6, 0x0

    .line 419
    const-string v2, "Unknown Host Request exception"

    .line 420
    .line 421
    const/4 v4, 0x0

    .line 422
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 426
    .line 427
    new-instance p2, Lcom/moloco/sdk/internal/q;

    .line 428
    .line 429
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/b;->d:Lcom/moloco/sdk/internal/services/bidtoken/b;

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/b;->c()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    const-string v1, "bidtoken request failed due to not being able to connect to host"

    .line 436
    .line 437
    invoke-direct {p2, v1, v0}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    return-object p1

    .line 444
    :goto_b
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 445
    .line 446
    iget-object v1, p1, Lcom/moloco/sdk/internal/services/bidtoken/c;->e:Ljava/lang/String;

    .line 447
    .line 448
    const/16 v5, 0x8

    .line 449
    .line 450
    const/4 v6, 0x0

    .line 451
    const-string v2, "Request timeout exception"

    .line 452
    .line 453
    const/4 v4, 0x0

    .line 454
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 458
    .line 459
    new-instance p2, Lcom/moloco/sdk/internal/q;

    .line 460
    .line 461
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/b;->c:Lcom/moloco/sdk/internal/services/bidtoken/b;

    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/b;->c()I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    const-string v1, "bidtoken request failed due to timeout"

    .line 468
    .line 469
    invoke-direct {p2, v1, v0}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    return-object p1
.end method

.method public final f()[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/BidToken$BidTokenRequestV3;->newBuilder()Lcom/moloco/sdk/BidToken$BidTokenRequestV3$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/moloco/sdk/BidToken$BidTokenRequestV3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "toByteArray(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
