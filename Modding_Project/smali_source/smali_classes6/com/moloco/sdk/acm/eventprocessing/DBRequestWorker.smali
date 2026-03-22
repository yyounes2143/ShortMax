.class public final Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDBWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBRequestWorker\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,134:1\n503#2,7:135\n*S KotlinDebug\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBRequestWorker\n*L\n95#1:135,7\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/acm/db/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/jvm/functions/Function1;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 22
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "params"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "DBRequestWorker"

    .line 21
    .line 22
    iput-object v2, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->a:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v2, Lcom/moloco/sdk/acm/db/MetricsDb;->a:Lcom/moloco/sdk/acm/db/MetricsDb$a;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lcom/moloco/sdk/acm/db/MetricsDb$a;->b(Landroid/content/Context;)Lcom/moloco/sdk/acm/db/MetricsDb;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/db/MetricsDb;->g()Lcom/moloco/sdk/acm/db/d;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->b:Lcom/moloco/sdk/acm/db/d;

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v2, "url"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "AppKey"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v10, "AppBundle"

    .line 68
    .line 69
    invoke-virtual {v1, v10}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v10, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v11, "AppVersion"

    .line 82
    .line 83
    invoke-virtual {v1, v11}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v11, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v6, "OS"

    .line 96
    .line 97
    invoke-virtual {v1, v6}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v6, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v12, "osv"

    .line 110
    .line 111
    invoke-virtual {v1, v12}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v12, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v13, "SdkVersion"

    .line 124
    .line 125
    invoke-virtual {v1, v13}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v13, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v14, "Mediator"

    .line 138
    .line 139
    invoke-virtual {v1, v14}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v14, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    filled-new-array/range {v3 .. v9}, [Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_1

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v5, :cond_0

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v3, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_1
    iput-object v3, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->d:Ljava/util/Map;

    .line 201
    .line 202
    new-instance v15, Lcom/moloco/sdk/acm/http/b;

    .line 203
    .line 204
    invoke-direct {v15}, Lcom/moloco/sdk/acm/http/b;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    move-object/from16 v16, v1

    .line 212
    .line 213
    check-cast v16, Ljava/lang/String;

    .line 214
    .line 215
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    move-object/from16 v17, v1

    .line 220
    .line 221
    check-cast v17, Ljava/lang/String;

    .line 222
    .line 223
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    move-object/from16 v18, v1

    .line 228
    .line 229
    check-cast v18, Ljava/lang/String;

    .line 230
    .line 231
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v19, v1

    .line 236
    .line 237
    check-cast v19, Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    move-object/from16 v20, v1

    .line 244
    .line 245
    check-cast v20, Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    move-object/from16 v21, v1

    .line 252
    .line 253
    check-cast v21, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual/range {v15 .. v21}, Lcom/moloco/sdk/acm/http/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iput-object v1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->e:Lkotlin/jvm/functions/Function1;

    .line 260
    .line 261
    return-void
.end method


# virtual methods
.method public doWork(Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;-><init>(Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->k:I

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
    iget-object v0, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->c:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    sget-object p1, Lcom/moloco/sdk/acm/http/d;->a:Lcom/moloco/sdk/acm/http/d;

    .line 69
    .line 70
    invoke-static {}, Lcom/moloco/sdk/acm/http/h;->d()Lio/ktor/client/HttpClient;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, p0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v2, v4}, Lcom/moloco/sdk/acm/http/d;->b(Lio/ktor/client/HttpClient;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/moloco/sdk/acm/eventprocessing/k;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/http/d;->a()Lcom/moloco/sdk/acm/http/j;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v4, p0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->b:Lcom/moloco/sdk/acm/db/d;

    .line 86
    .line 87
    new-instance v5, Lcom/moloco/sdk/acm/eventprocessing/e;

    .line 88
    .line 89
    new-instance v6, Lcom/moloco/sdk/acm/services/g;

    .line 90
    .line 91
    invoke-direct {v6}, Lcom/moloco/sdk/acm/services/g;-><init>()V

    .line 92
    .line 93
    .line 94
    const-wide/16 v7, 0x2d0

    .line 95
    .line 96
    invoke-direct {v5, v6, v7, v8}, Lcom/moloco/sdk/acm/eventprocessing/e;-><init>(Lcom/moloco/sdk/acm/services/f;J)V

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->e:Lkotlin/jvm/functions/Function1;

    .line 100
    .line 101
    invoke-direct {v2, p1, v4, v5, v6}, Lcom/moloco/sdk/acm/eventprocessing/k;-><init>(Lcom/moloco/sdk/acm/http/j;Lcom/moloco/sdk/acm/db/d;Lcom/moloco/sdk/acm/eventprocessing/e;Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    iput-object p0, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->h:Ljava/lang/Object;

    .line 105
    .line 106
    iput v3, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker$a;->k:I

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Lcom/moloco/sdk/acm/eventprocessing/k;->a(Lrs/c;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    if-ne p1, v1, :cond_3

    .line 113
    .line 114
    return-object v1

    .line 115
    :catch_1
    move-exception p1

    .line 116
    move-object v0, p0

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move-object v0, p0

    .line 119
    :goto_1
    :try_start_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 120
    .line 121
    .line 122
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    goto :goto_3

    .line 124
    :goto_2
    sget-object v1, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 125
    .line 126
    iget-object v2, v0, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;->a:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "Work Manager failure: "

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const/16 v6, 0xc

    .line 150
    .line 151
    const/4 v7, 0x0

    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_3
    return-object p1
.end method
