.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    .line 2
    .line 3
    const-string v1, "<v#0>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;

    .line 7
    .line 8
    const-string/jumbo v4, "url"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 20
    .line 21
    aput-object v0, v1, v2

    .line 22
    .line 23
    sput-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;->a:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/moloco/sdk/internal/android_context/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;->a:[Lkotlin/reflect/KProperty;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lkotlin/collections/p0;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public doWork(Lrs/c;)Ljava/lang/Object;
    .locals 17
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->l:I

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
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->l:I

    .line 22
    .line 23
    :goto_0
    move-object v8, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->j:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->l:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    const-string v9, "failure(...)"

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-ne v3, v4, :cond_1

    .line 45
    .line 46
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/Map;

    .line 49
    .line 50
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v6, "Sending request to "

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;->b(Ljava/util/Map;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    const/16 v15, 0xc

    .line 108
    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    const-string v11, "PersistentHttpRequest"

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const-string v6, "body"

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroidx/work/Data;->getByteArray(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-nez v5, :cond_3

    .line 129
    .line 130
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const-string v7, "contentType"

    .line 143
    .line 144
    invoke-virtual {v6, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-eqz v6, :cond_8

    .line 149
    .line 150
    sget-object v7, Lio/ktor/http/a;->f:Lio/ktor/http/a$b;

    .line 151
    .line 152
    invoke-virtual {v7, v6}, Lio/ktor/http/a$b;->b(Ljava/lang/String;)Lio/ktor/http/a;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-nez v6, :cond_4

    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    const-string v10, "contentEncoding"

    .line 165
    .line 166
    invoke-virtual {v7, v10}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;->b(Ljava/util/Map;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    iput-object v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->h:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->i:Ljava/lang/Object;

    .line 177
    .line 178
    iput v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker$a;->l:I

    .line 179
    .line 180
    move-object v4, v10

    .line 181
    invoke-static/range {v3 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e;->b(Lio/ktor/client/HttpClient;Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-ne v3, v2, :cond_5

    .line 186
    .line 187
    return-object v2

    .line 188
    :cond_5
    move-object v2, v1

    .line 189
    move-object v1, v3

    .line 190
    move-object v3, v0

    .line 191
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 198
    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v5, "Request to "

    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/UrlPostRequestWorker;->b(Ljava/util/Map;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, " was successful: "

    .line 217
    .line 218
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    const/16 v15, 0xc

    .line 229
    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    const-string v11, "PersistentHttpRequest"

    .line 233
    .line 234
    const/4 v13, 0x0

    .line 235
    const/4 v14, 0x0

    .line 236
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    if-eqz v1, :cond_6

    .line 240
    .line 241
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string/jumbo v2, "success(...)"

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_6
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    const/4 v2, 0x5

    .line 257
    if-lt v1, v2, :cond_7

    .line 258
    .line 259
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_7
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const-string v2, "retry(...)"

    .line 272
    .line 273
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :goto_3
    return-object v1

    .line 277
    :cond_8
    :goto_4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object v1
.end method
