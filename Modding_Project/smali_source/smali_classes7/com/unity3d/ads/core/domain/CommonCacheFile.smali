.class public final Lcom/unity3d/ads/core/domain/CommonCacheFile;
.super Ljava/lang/Object;
.source "CommonCacheFile.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/CacheFile;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/CacheRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/CacheRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sendDiagnosticEvent"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonCacheFile;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonCacheFile;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lorg/json/JSONArray;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/CommonCacheFile;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->J$0:J

    .line 43
    .line 44
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lcom/unity3d/ads/core/domain/CommonCacheFile;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object v13, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 69
    .line 70
    invoke-virtual {v1}, Lkotlin/time/h;->b()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/CommonCacheFile;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    .line 75
    .line 76
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    move-object/from16 v4, p2

    .line 79
    .line 80
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    iput-wide v6, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->J$0:J

    .line 83
    .line 84
    iput v5, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile$invoke$1;->label:I

    .line 85
    .line 86
    move-object/from16 v5, p1

    .line 87
    .line 88
    move-object/from16 v8, p3

    .line 89
    .line 90
    move/from16 v9, p4

    .line 91
    .line 92
    invoke-interface {v1, v5, v8, v9, v2}, Lcom/unity3d/ads/core/data/repository/CacheRepository;->getFile(Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v3, :cond_3

    .line 97
    .line 98
    return-object v3

    .line 99
    :cond_3
    move-object v2, v0

    .line 100
    move-object v13, v4

    .line 101
    move-wide v3, v6

    .line 102
    :goto_1
    check-cast v1, Lcom/unity3d/ads/core/data/model/CacheResult;

    .line 103
    .line 104
    instance-of v5, v1, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    .line 105
    .line 106
    const-string v6, "cache_source"

    .line 107
    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 111
    .line 112
    invoke-static {v3, v4}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    move-object v2, v1

    .line 125
    check-cast v2, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getSource()Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v6, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/CachedFile;->getProtocol()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const-string v5, "protocol"

    .line 148
    .line 149
    invoke-static {v5, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    filled-new-array {v3, v4}, [Lkotlin/Pair;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CachedFile;->getContentLength()J

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    const/16 v4, 0x400

    .line 170
    .line 171
    int-to-long v4, v4

    .line 172
    div-long/2addr v2, v4

    .line 173
    long-to-int v2, v2

    .line 174
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "size_kb"

    .line 179
    .line 180
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v2}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    const/16 v15, 0x20

    .line 189
    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const-string v9, "native_load_cache_success_time"

    .line 193
    .line 194
    const/4 v14, 0x0

    .line 195
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_4
    instance-of v5, v1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 200
    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/CommonCacheFile;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 204
    .line 205
    invoke-static {v3, v4}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 210
    .line 211
    .line 212
    move-result-wide v2

    .line 213
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    move-object v2, v1

    .line 218
    check-cast v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->getSource()Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v6, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->getError()Lcom/unity3d/ads/core/data/model/CacheError;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    const-string v5, "reason"

    .line 241
    .line 242
    invoke-static {v5, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->getReason()Ljava/lang/Throwable;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_5

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-nez v2, :cond_6

    .line 257
    .line 258
    :cond_5
    const-string v2, ""

    .line 259
    .line 260
    :cond_6
    const-string v5, "reason_debug"

    .line 261
    .line 262
    invoke-static {v5, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    filled-new-array {v3, v4, v2}, [Lkotlin/Pair;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    const/16 v15, 0x28

    .line 275
    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    const-string v9, "native_load_cache_failure_time"

    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    const/4 v14, 0x0

    .line 282
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_2
    return-object v1
.end method
