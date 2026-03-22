.class public final Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;
.super Ljava/lang/Object;
.source "RefactoredOkHttp3Client.kt"

# interfaces
.implements Lcom/unity3d/services/core/network/core/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRefactoredOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,118:1\n314#2,11:119\n*S KotlinDebug\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n*L\n56#1:119,11\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_CONNECTION_FAILED:Ljava/lang/String; = "Network request failed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_CONNECTION_TIMEOUT:Ljava/lang/String; = "Network request timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_CLIENT_OKHTTP:Ljava/lang/String; = "refactored-okhttp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final client:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->Companion:Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "client"

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
    iput-object p1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->client:Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcom/unity3d/services/core/network/model/HttpRequest;
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
            "Lcom/unity3d/services/core/network/model/HttpRequest;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->label:I

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
    iput v1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;-><init>(Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->label:I

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
    iget-object p1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$2:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lokhttp3/OkHttpClient;

    .line 41
    .line 42
    iget-object p1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lokhttp3/Request;

    .line 45
    .line 46
    iget-object p1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-static {p1}, Lcom/unity3d/services/core/network/mapper/HttpRequestToOkHttpRequestKt;->toOkHttpProtoRequest(Lcom/unity3d/services/core/network/model/HttpRequest;)Lokhttp3/Request;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v2, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->client:Lokhttp3/OkHttpClient;

    .line 70
    .line 71
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->z()Lokhttp3/OkHttpClient$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getConnectTimeout()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    int-to-long v4, v4

    .line 80
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    .line 82
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getReadTimeout()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    int-to-long v4, v4

    .line 91
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getWriteTimeout()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    int-to-long v4, v4

    .line 100
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object p1, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p2, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$1:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v2, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->L$2:Ljava/lang/Object;

    .line 113
    .line 114
    iput v3, v0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$1;->label:I

    .line 115
    .line 116
    new-instance v4, Lkotlinx/coroutines/e;

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-direct {v4, v5, v3}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lkotlinx/coroutines/e;->H()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p2}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance v2, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$1;

    .line 133
    .line 134
    invoke-direct {v2, p2}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$1;-><init>(Lokhttp3/Call;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v4, v2}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;

    .line 141
    .line 142
    invoke-direct {v2, v4}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;-><init>(Lgt/i;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p2, v2}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-ne p2, v2, :cond_3

    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .line 160
    .line 161
    :cond_3
    if-ne p2, v1, :cond_4

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_4
    :goto_1
    return-object p2

    .line 165
    :catch_0
    new-instance p2, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getBaseURL()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/16 v8, 0x36

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    const-string v1, "Network request failed"

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v5, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    const-string v7, "refactored-okhttp"

    .line 181
    .line 182
    move-object v0, p2

    .line 183
    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    .line 185
    .line 186
    throw p2

    .line 187
    :catch_1
    new-instance p2, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getBaseURL()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const/16 v8, 0x36

    .line 194
    .line 195
    const/4 v9, 0x0

    .line 196
    const-string v1, "Network request timeout"

    .line 197
    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 200
    const/4 v5, 0x0

    .line 201
    const/4 v6, 0x0

    .line 202
    const-string v7, "refactored-okhttp"

    .line 203
    .line 204
    move-object v0, p2

    .line 205
    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    .line 207
    .line 208
    throw p2
.end method

.method public executeBlocking(Lcom/unity3d/services/core/network/model/HttpRequest;)Lcom/unity3d/services/core/network/model/HttpResponse;
    .locals 3
    .param p1    # Lcom/unity3d/services/core/network/model/HttpRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lgt/c0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$executeBlocking$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$executeBlocking$1;-><init>(Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lgt/e;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 23
    .line 24
    return-object p1
.end method
