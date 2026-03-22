.class public final Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;
.super Ljava/lang/Object;
.source "RefactoredOkHttp3Client.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $continuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgt/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 12
    .line 13
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "toString()"

    .line 2
    .line 3
    const-string v1, "call"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "response"

    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 20
    .line 21
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 22
    .line 23
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Network request failed with code "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/16 v9, 0x3a

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const-string v8, "refactored-okhttp"

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    invoke-direct/range {v1 .. v10}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 86
    .line 87
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 88
    .line 89
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    .line 90
    .line 91
    const-string v2, "Empty response"

    .line 92
    .line 93
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v8, "refactored-okhttp"

    .line 102
    .line 103
    const/16 v9, 0x3a

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v1, v0

    .line 111
    invoke-direct/range {v1 .. v10}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_0
    move-exception p1

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 129
    .line 130
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {p2}, Lokhttp3/Response;->u()Lokhttp3/Headers;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lokhttp3/Headers;->h()Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {p2}, Lokhttp3/Response;->W()Lokhttp3/Request;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Lokio/BufferedSource;->readByteArray()[B

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p2}, Lokhttp3/Response;->R()Lokhttp3/Protocol;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    new-instance p1, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 171
    .line 172
    const-string p2, "readByteArray()"

    .line 173
    .line 174
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p2, "toMultimap()"

    .line 178
    .line 179
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v8, "refactored-okhttp"

    .line 189
    .line 190
    const/16 v11, 0x40

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    const-wide/16 v9, 0x0

    .line 194
    .line 195
    move-object v2, p1

    .line 196
    invoke-direct/range {v2 .. v12}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-interface {v1, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :goto_0
    iget-object p2, p0, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$execute$2$2;->$continuation:Lgt/i;

    .line 208
    .line 209
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 210
    .line 211
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :goto_1
    return-void
.end method
