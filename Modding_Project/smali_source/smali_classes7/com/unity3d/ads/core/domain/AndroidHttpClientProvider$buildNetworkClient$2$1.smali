.class final Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;
.super Ljava/lang/Object;
.source "AndroidHttpClientProvider.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $continuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;Lgt/i;Lcom/unity3d/services/core/domain/ISDKDispatchers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;",
            "Landroid/content/Context;",
            "Lgt/i<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$continuation:Lgt/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 12
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "Errored without message."

    .line 11
    .line 12
    const-string v2, "reason"

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasCachedAssetsConfiguration()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getMaxCachedAssetSizeMb()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long v3, p1

    .line 51
    const/16 p1, 0x400

    .line 52
    .line 53
    int-to-long v5, p1

    .line 54
    mul-long/2addr v3, v5

    .line 55
    mul-long/2addr v3, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-wide/32 v3, 0x1400000

    .line 58
    .line 59
    .line 60
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getCronetEngineBuilderFactory$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;->createCronetEngineBuilder(Landroid/content/Context;)Lorg/chromium/net/CronetEngine$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$context:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0, v5}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$buildCronetCachePath(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x3

    .line 85
    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "gateway.unityads.unity3d.com"

    .line 95
    .line 96
    const/16 v3, 0x1bb

    .line 97
    .line 98
    invoke-virtual {p1, v0, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "cdn-creatives-cf-prd.acquire.unity3dusercontent.com"

    .line 103
    .line 104
    invoke-virtual {p1, v0, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$continuation:Lgt/i;

    .line 113
    .line 114
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 115
    .line 116
    new-instance v3, Lcom/unity3d/services/core/network/core/CronetClient;

    .line 117
    .line 118
    const-string v4, "cronetEngine"

    .line 119
    .line 120
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 124
    .line 125
    invoke-direct {v3, p1, v4}, Lcom/unity3d/services/core/network/core/CronetClient;-><init>(Lorg/chromium/net/CronetEngine;Lcom/unity3d/services/core/domain/ISDKDispatchers;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :catchall_0
    move-exception p1

    .line 138
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-nez p1, :cond_1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    move-object v1, p1

    .line 152
    :goto_1
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const/16 v10, 0x3a

    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    const-string v4, "native_cronet_engine_error"

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    invoke-static/range {v3 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$continuation:Lgt/i;

    .line 173
    .line 174
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 175
    .line 176
    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 179
    .line 180
    new-instance v3, Lokhttp3/OkHttpClient;

    .line 181
    .line 182
    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 183
    .line 184
    .line 185
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$context:Landroid/content/Context;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getCleanupDirectory$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 200
    .line 201
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getAlternativeFlowReader$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    move-object v1, v0

    .line 206
    invoke-direct/range {v1 .. v7}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_4

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-nez p1, :cond_3

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    move-object v1, p1

    .line 237
    :cond_4
    :goto_2
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const/16 v10, 0x3a

    .line 246
    .line 247
    const/4 v11, 0x0

    .line 248
    const-string v4, "native_cronet_install_error"

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    const/4 v7, 0x0

    .line 252
    const/4 v8, 0x0

    .line 253
    const/4 v9, 0x0

    .line 254
    invoke-static/range {v3 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$continuation:Lgt/i;

    .line 258
    .line 259
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 260
    .line 261
    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 264
    .line 265
    new-instance v3, Lokhttp3/OkHttpClient;

    .line 266
    .line 267
    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 268
    .line 269
    .line 270
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->$context:Landroid/content/Context;

    .line 271
    .line 272
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 273
    .line 274
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getCleanupDirectory$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 285
    .line 286
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getAlternativeFlowReader$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    move-object v1, v0

    .line 291
    invoke-direct/range {v1 .. v7}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :goto_3
    return-void
.end method
