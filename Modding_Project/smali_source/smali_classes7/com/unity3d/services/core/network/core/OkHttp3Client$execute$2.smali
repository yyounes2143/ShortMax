.class final Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OkHttp3Client.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/network/core/OkHttp3Client;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lcom/unity3d/services/core/network/model/HttpResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.core.network.core.OkHttp3Client$execute$2"
    f = "OkHttp3Client.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $request:Lcom/unity3d/services/core/network/model/HttpRequest;

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/network/core/OkHttp3Client;Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/network/core/OkHttp3Client;",
            "Lcom/unity3d/services/core/network/model/HttpRequest;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;-><init>(Lcom/unity3d/services/core/network/core/OkHttp3Client;Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const-string v10, "toString()"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    iget v0, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->label:I

    .line 10
    .line 11
    const/4 v12, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-ne v0, v12, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v0, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object v0, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 34
    .line 35
    iget-object v1, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getConnectTimeout()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-long v2, v2

    .line 42
    iget-object v4, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/unity3d/services/core/network/model/HttpRequest;->getReadTimeout()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    int-to-long v4, v4

    .line 49
    iget-object v6, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/unity3d/services/core/network/model/HttpRequest;->getWriteTimeout()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    int-to-long v6, v6

    .line 56
    iput v12, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->label:I

    .line 57
    .line 58
    move-object/from16 v8, p0

    .line 59
    .line 60
    invoke-static/range {v0 .. v8}, Lcom/unity3d/services/core/network/core/OkHttp3Client;->access$makeRequest(Lcom/unity3d/services/core/network/core/OkHttp3Client;Lcom/unity3d/services/core/network/model/HttpRequest;JJJLrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-ne v0, v11, :cond_2

    .line 65
    .line 66
    return-object v11

    .line 67
    :cond_2
    :goto_0
    check-cast v0, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;->component1()Lokhttp3/Response;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;->component2()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/unity3d/services/core/network/core/OkHttp3Client;->access$isAlternativeFlowReader$p(Lcom/unity3d/services/core/network/core/OkHttp3Client;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;->invoke()Z

    .line 84
    .line 85
    .line 86
    move-result v2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    const-string v3, ""

    .line 88
    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    :try_start_2
    instance-of v2, v0, Ljava/io/File;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    check-cast v0, Ljava/io/File;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v2, v12, v2}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    instance-of v2, v0, [B

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    new-instance v2, Ljava/lang/String;

    .line 108
    .line 109
    check-cast v0, [B

    .line 110
    .line 111
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 114
    .line 115
    .line 116
    move-object v0, v2

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move-object v0, v3

    .line 119
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lokhttp3/Response;->o()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-virtual {v1}, Lokhttp3/Response;->u()Lokhttp3/Headers;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lokhttp3/Headers;->h()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-virtual {v1}, Lokhttp3/Response;->W()Lokhttp3/Request;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    move-object v12, v3

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move-object v12, v0

    .line 148
    :goto_2
    invoke-virtual {v1}, Lokhttp3/Response;->R()Lokhttp3/Protocol;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 157
    .line 158
    const-string v2, "toMultimap()"

    .line 159
    .line 160
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v17, "okhttp"

    .line 170
    .line 171
    const/16 v20, 0x40

    .line 172
    .line 173
    const/16 v21, 0x0

    .line 174
    .line 175
    const-wide/16 v18, 0x0

    .line 176
    .line 177
    move-object v11, v1

    .line 178
    move-object/from16 v16, v0

    .line 179
    .line 180
    invoke-direct/range {v11 .. v21}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :catch_0
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    .line 185
    .line 186
    iget-object v1, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getBaseURL()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v26

    .line 192
    const/16 v30, 0x36

    .line 193
    .line 194
    const/16 v31, 0x0

    .line 195
    .line 196
    const-string v23, "Network request failed"

    .line 197
    .line 198
    const/16 v24, 0x0

    .line 199
    .line 200
    const/16 v25, 0x0

    .line 201
    .line 202
    const/16 v27, 0x0

    .line 203
    .line 204
    const/16 v28, 0x0

    .line 205
    .line 206
    const-string v29, "okhttp"

    .line 207
    .line 208
    move-object/from16 v22, v0

    .line 209
    .line 210
    invoke-direct/range {v22 .. v31}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :catch_1
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 215
    .line 216
    iget-object v1, v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$execute$2;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/unity3d/services/core/network/model/HttpRequest;->getBaseURL()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    const/16 v18, 0x36

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const-string v11, "Network request timeout"

    .line 227
    .line 228
    const/4 v12, 0x0

    .line 229
    const/4 v13, 0x0

    .line 230
    const/4 v15, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    const-string v17, "okhttp"

    .line 234
    .line 235
    move-object v10, v0

    .line 236
    invoke-direct/range {v10 .. v19}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    .line 238
    .line 239
    throw v0
.end method
