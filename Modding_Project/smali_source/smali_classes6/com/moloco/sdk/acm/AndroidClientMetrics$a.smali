.class public final Lcom/moloco/sdk/acm/AndroidClientMetrics$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/AndroidClientMetrics;->q(Lcom/moloco/sdk/acm/d;Lcom/moloco/sdk/acm/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.acm.AndroidClientMetrics$initialize$1"
    f = "AndroidClientMetrics.kt"
    l = {
        0x102,
        0x7c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidClientMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$initialize$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,252:1\n120#2,10:253\n*S KotlinDebug\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$initialize$1\n*L\n120#1:253,10\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Lcom/moloco/sdk/acm/d;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/d;Lcom/moloco/sdk/acm/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/d;",
            "Lcom/moloco/sdk/acm/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/AndroidClientMetrics$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->j:Lcom/moloco/sdk/acm/d;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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

    .line 1
    new-instance p1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->j:Lcom/moloco/sdk/acm/d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;-><init>(Lcom/moloco/sdk/acm/d;Lcom/moloco/sdk/acm/a;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->i:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v4, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->h:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Lqt/a;

    .line 22
    .line 23
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    iget-object v2, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->h:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lqt/a;

    .line 42
    .line 43
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object v9, v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catch_1
    move-exception v0

    .line 53
    move-object v6, v0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :try_start_2
    sget-object v2, Lcom/moloco/sdk/acm/db/MetricsDb;->a:Lcom/moloco/sdk/acm/db/MetricsDb$a;

    .line 60
    .line 61
    iget-object v6, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->j:Lcom/moloco/sdk/acm/d;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/moloco/sdk/acm/d;->c()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v2, v6}, Lcom/moloco/sdk/acm/db/MetricsDb$a;->b(Landroid/content/Context;)Lcom/moloco/sdk/acm/db/MetricsDb;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/MetricsDb;->g()Lcom/moloco/sdk/acm/db/d;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v6, Lcom/moloco/sdk/acm/services/g;

    .line 76
    .line 77
    invoke-direct {v6}, Lcom/moloco/sdk/acm/services/g;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v14, Lcom/moloco/sdk/acm/eventprocessing/c;

    .line 81
    .line 82
    sget-object v7, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->p()Lcom/moloco/sdk/acm/h;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iget-object v9, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->j:Lcom/moloco/sdk/acm/d;

    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/moloco/sdk/acm/d;->c()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-direct {v14, v8, v9}, Lcom/moloco/sdk/acm/eventprocessing/c;-><init>(Lcom/moloco/sdk/acm/h;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    new-instance v15, Lcom/moloco/sdk/acm/eventprocessing/m;

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->p()Lcom/moloco/sdk/acm/h;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->d()Lgt/g0;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const/4 v12, 0x4

    .line 108
    const/4 v13, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    move-object v7, v15

    .line 111
    move-object v8, v14

    .line 112
    invoke-direct/range {v7 .. v13}, Lcom/moloco/sdk/acm/eventprocessing/m;-><init>(Lcom/moloco/sdk/acm/eventprocessing/b;Lcom/moloco/sdk/acm/h;Ljava/util/concurrent/ScheduledExecutorService;Lgt/g0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v15}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->n(Lcom/moloco/sdk/acm/eventprocessing/g;)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Lcom/moloco/sdk/acm/services/c;

    .line 119
    .line 120
    sget-object v8, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 121
    .line 122
    invoke-virtual {v8}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-interface {v8}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    new-instance v9, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;

    .line 131
    .line 132
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->d()Lgt/g0;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-direct {v9, v14, v10}, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;-><init>(Lcom/moloco/sdk/acm/eventprocessing/b;Lgt/g0;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v7, v8, v9}, Lcom/moloco/sdk/acm/services/c;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->k(Lcom/moloco/sdk/acm/services/c;)V

    .line 143
    .line 144
    .line 145
    new-instance v7, Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 146
    .line 147
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->h()Lcom/moloco/sdk/acm/eventprocessing/g;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez v8, :cond_3

    .line 152
    .line 153
    const-string v8, "requestScheduler"

    .line 154
    .line 155
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object v8, v5

    .line 159
    :cond_3
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a()Lcom/moloco/sdk/acm/services/c;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    if-nez v9, :cond_4

    .line 164
    .line 165
    const-string v9, "applicationLifecycleTracker"

    .line 166
    .line 167
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v9, v5

    .line 171
    :cond_4
    invoke-direct {v7, v2, v6, v8, v9}, Lcom/moloco/sdk/acm/eventprocessing/i;-><init>(Lcom/moloco/sdk/acm/db/d;Lcom/moloco/sdk/acm/services/f;Lcom/moloco/sdk/acm/eventprocessing/g;Lcom/moloco/sdk/acm/services/b;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v7}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->l(Lcom/moloco/sdk/acm/eventprocessing/f;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->i()Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget-object v6, Lcom/moloco/sdk/acm/f;->a:Lcom/moloco/sdk/acm/f;

    .line 182
    .line 183
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->b()Lqt/a;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iput-object v2, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->h:Ljava/lang/Object;

    .line 191
    .line 192
    iput v4, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->i:I

    .line 193
    .line 194
    invoke-interface {v2, v5, v1}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    if-ne v4, v0, :cond_5

    .line 199
    .line 200
    return-object v0

    .line 201
    :cond_5
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->e()Lcom/moloco/sdk/acm/g;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    if-eqz v4, :cond_7

    .line 206
    .line 207
    sget-object v6, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 208
    .line 209
    invoke-static {v5}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->m(Lcom/moloco/sdk/acm/g;)V

    .line 210
    .line 211
    .line 212
    sget-object v7, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 213
    .line 214
    const-string v8, "AndroidClientMetrics"

    .line 215
    .line 216
    const-string v9, "Updating config with pending config"

    .line 217
    .line 218
    const/4 v11, 0x4

    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v10, 0x0

    .line 221
    invoke-static/range {v7 .. v12}, Lcom/moloco/sdk/acm/services/e;->f(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iput-object v2, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->h:Ljava/lang/Object;

    .line 225
    .line 226
    iput v3, v1, Lcom/moloco/sdk/acm/AndroidClientMetrics$a;->i:I

    .line 227
    .line 228
    invoke-static {v6, v4, v1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->o(Lcom/moloco/sdk/acm/AndroidClientMetrics;Lcom/moloco/sdk/acm/g;Lrs/c;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-ne v3, v0, :cond_6

    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_6
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .line 237
    :cond_7
    :try_start_4
    invoke-interface {v2, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    sget-object v0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 241
    .line 242
    invoke-static {v0}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->j(Lcom/moloco/sdk/acm/AndroidClientMetrics;)V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :goto_2
    invoke-interface {v2, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 250
    :goto_3
    sget-object v6, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 251
    .line 252
    const/16 v11, 0x8

    .line 253
    .line 254
    const/4 v12, 0x0

    .line 255
    const-string v7, "AndroidClientMetrics"

    .line 256
    .line 257
    const-string v8, "Initialization error"

    .line 258
    .line 259
    const/4 v10, 0x0

    .line 260
    invoke-static/range {v6 .. v12}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->i()Ljava/util/concurrent/atomic/AtomicReference;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sget-object v2, Lcom/moloco/sdk/acm/f;->c:Lcom/moloco/sdk/acm/f;

    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :goto_4
    sget-object v3, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 274
    .line 275
    const/16 v8, 0x8

    .line 276
    .line 277
    const/4 v9, 0x0

    .line 278
    const-string v4, "MetricsDb"

    .line 279
    .line 280
    const-string v5, "Unable to create metrics db"

    .line 281
    .line 282
    const/4 v7, 0x0

    .line 283
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/acm/services/e;->e(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->i()Ljava/util/concurrent/atomic/AtomicReference;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sget-object v2, Lcom/moloco/sdk/acm/f;->c:Lcom/moloco/sdk/acm/f;

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    return-object v0
.end method
