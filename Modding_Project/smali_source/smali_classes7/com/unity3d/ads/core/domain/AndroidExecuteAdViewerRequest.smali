.class public final Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;
.super Ljava/lang/Object;
.source "AndroidExecuteAdViewerRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpClient:Lcom/unity3d/services/core/network/core/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/GetCachedAsset;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/network/core/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetCachedAsset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ioDispatcher"

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
    const-string v0, "getCachedAsset"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->ioDispatcher:Lgt/c0;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$createRequest(Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;)Lcom/unity3d/services/core/network/model/HttpRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->createRequest(Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;)Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getGetCachedAsset$p(Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;)Lcom/unity3d/ads/core/domain/GetCachedAsset;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHttpClient$p(Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;)Lcom/unity3d/services/core/network/core/HttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 2
    .line 3
    return-object p0
.end method

.method private final createRequest(Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;)Lcom/unity3d/services/core/network/model/HttpRequest;
    .locals 24

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-object v4, v2

    .line 9
    check-cast v4, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v2, v1

    .line 23
    :goto_1
    if-nez v2, :cond_c

    .line 24
    .line 25
    sget-object v2, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x2

    .line 36
    const/16 v7, 0x7530

    .line 37
    .line 38
    if-eq v2, v1, :cond_7

    .line 39
    .line 40
    if-eq v2, v6, :cond_7

    .line 41
    .line 42
    if-ne v2, v5, :cond_6

    .line 43
    .line 44
    invoke-static {v0, v6}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0, v5}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lorg/json/JSONArray;

    .line 55
    .line 56
    invoke-static {v0, v3}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Integer;

    .line 61
    .line 62
    const/4 v5, 0x5

    .line 63
    invoke-static {v0, v5}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Integer;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/JSONArrayExtensionsKt;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    :goto_2
    move-object v8, v2

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    :goto_3
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_2

    .line 85
    :goto_4
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    move v13, v2

    .line 92
    goto :goto_5

    .line 93
    :cond_4
    move v13, v7

    .line 94
    :goto_5
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    move v14, v0

    .line 101
    goto :goto_6

    .line 102
    :cond_5
    move v14, v7

    .line 103
    :goto_6
    new-instance v0, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 104
    .line 105
    move-object v3, v0

    .line 106
    const v21, 0x1f9e2

    .line 107
    .line 108
    .line 109
    const/16 v22, 0x0

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const/16 v17, 0x0

    .line 120
    .line 121
    const/16 v18, 0x0

    .line 122
    .line 123
    const/16 v19, 0x0

    .line 124
    .line 125
    const/16 v20, 0x0

    .line 126
    .line 127
    move-object/from16 v6, p1

    .line 128
    .line 129
    move-object v7, v1

    .line 130
    invoke-direct/range {v3 .. v22}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .line 132
    .line 133
    goto :goto_c

    .line 134
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 135
    .line 136
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_7
    invoke-static {v0, v6}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lorg/json/JSONArray;

    .line 145
    .line 146
    invoke-static {v0, v5}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-static {v0, v3}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Integer;

    .line 157
    .line 158
    new-instance v23, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 159
    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/JSONArrayExtensionsKt;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_8
    :goto_7
    move-object v8, v1

    .line 170
    goto :goto_9

    .line 171
    :cond_9
    :goto_8
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    goto :goto_7

    .line 176
    :goto_9
    if-eqz v2, :cond_a

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    move v13, v1

    .line 183
    goto :goto_a

    .line 184
    :cond_a
    move v13, v7

    .line 185
    :goto_a
    if-eqz v0, :cond_b

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    move v14, v0

    .line 192
    goto :goto_b

    .line 193
    :cond_b
    move v14, v7

    .line 194
    :goto_b
    const v21, 0x1f9ea

    .line 195
    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    const/4 v5, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v9, 0x0

    .line 202
    const/4 v10, 0x0

    .line 203
    const/4 v11, 0x0

    .line 204
    const/4 v12, 0x0

    .line 205
    const/4 v15, 0x0

    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    const/16 v17, 0x0

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    const/16 v19, 0x0

    .line 213
    .line 214
    const/16 v20, 0x0

    .line 215
    .line 216
    move-object/from16 v3, v23

    .line 217
    .line 218
    move-object/from16 v6, p1

    .line 219
    .line 220
    invoke-direct/range {v3 .. v22}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v0, v23

    .line 224
    .line 225
    :goto_c
    return-object v0

    .line 226
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    const-string v1, "Failed requirement."

    .line 229
    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0
.end method


# virtual methods
.method public invoke(Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/unity3d/services/core/network/model/RequestType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
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
            "Lcom/unity3d/services/core/network/model/RequestType;",
            "[",
            "Ljava/lang/Object;",
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
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;->ioDispatcher:Lgt/c0;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$invoke$2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p2, p0, p1, v2}, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$invoke$2;-><init>([Ljava/lang/Object;Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;Lcom/unity3d/services/core/network/model/RequestType;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
