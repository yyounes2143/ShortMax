.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$getMediaFile$2"
    f = "MediaCacheRepository.kt"
    l = {
        0x175,
        0xa1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMediaCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$getMediaFile$2\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,364:1\n72#2,2:365\n1#3:367\n116#4,10:368\n*S KotlinDebug\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$getMediaFile$2\n*L\n113#1:365,2\n113#1:367\n114#1:368,10\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->m:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

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
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->m:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;-><init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

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
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->l:I

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
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->k:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/io/File;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->j:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/io/File;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->i:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->h:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lqt/a;

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    move-object v6, v4

    .line 38
    move-object v4, v3

    .line 39
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->j:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->i:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

    .line 64
    .line 65
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lqt/a;

    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->m:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$k;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$k;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->m:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-static {v7, v4, v5}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {v2, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_4

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    move-object v7, v2

    .line 114
    :cond_5
    :goto_0
    check-cast v7, Lqt/a;

    .line 115
    .line 116
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

    .line 120
    .line 121
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->m:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->h:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->i:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->j:Ljava/lang/Object;

    .line 128
    .line 129
    iput v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->l:I

    .line 130
    .line 131
    invoke-interface {v7, v5, v1}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-ne v4, v0, :cond_6

    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_6
    move-object v4, v2

    .line 139
    move-object v2, v6

    .line 140
    move-object v6, v7

    .line 141
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->j()Lcom/moloco/sdk/internal/g0;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    instance-of v8, v7, Lcom/moloco/sdk/internal/g0$a;

    .line 146
    .line 147
    if-eqz v8, :cond_7

    .line 148
    .line 149
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 150
    .line 151
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "Failed to retrieve storageDir with error code: "

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-object v3, v7

    .line 166
    check-cast v3, Lcom/moloco/sdk/internal/g0$a;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lcom/moloco/sdk/internal/q;

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/q;->b()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    const/16 v14, 0xc

    .line 186
    .line 187
    const/4 v15, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    check-cast v7, Lcom/moloco/sdk/internal/g0$a;

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lcom/moloco/sdk/internal/q;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/q;->b()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    packed-switch v0, :pswitch_data_0

    .line 206
    .line 207
    .line 208
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$d;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$d;

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    goto/16 :goto_9

    .line 213
    .line 214
    :catch_1
    move-exception v0

    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :pswitch_0
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$a;

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :pswitch_1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$b;

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :pswitch_2
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    .line 225
    :goto_2
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_7
    :try_start_2
    instance-of v8, v7, Lcom/moloco/sdk/internal/g0$b;

    .line 230
    .line 231
    if-eqz v8, :cond_e

    .line 232
    .line 233
    check-cast v7, Lcom/moloco/sdk/internal/g0$b;

    .line 234
    .line 235
    invoke-virtual {v7}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    check-cast v7, Ljava/io/File;

    .line 240
    .line 241
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    new-instance v9, Ljava/io/File;

    .line 246
    .line 247
    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_9

    .line 255
    .line 256
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/a;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-interface {v10, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/a;->b(Ljava/io/File;)Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_8

    .line 265
    .line 266
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 267
    .line 268
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    const-string v13, "Media file was partially downloaded by ChunkedMediaDownloader. Deleting the file and redownloading"

    .line 273
    .line 274
    const/16 v16, 0xc

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/4 v14, 0x0

    .line 279
    const/4 v15, 0x0

    .line 280
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_8
    sget-object v18, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 288
    .line 289
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v19

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v3, "Found asset in cache: "

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v20

    .line 310
    const/16 v23, 0xc

    .line 311
    .line 312
    const/16 v24, 0x0

    .line 313
    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    const/16 v22, 0x0

    .line 317
    .line 318
    invoke-static/range {v18 .. v24}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 322
    .line 323
    invoke-direct {v0, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    .line 325
    .line 326
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    return-object v0

    .line 330
    :cond_9
    :goto_3
    :try_start_3
    new-instance v10, Ljava/io/File;

    .line 331
    .line 332
    sget-object v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$a;

    .line 333
    .line 334
    invoke-static {v11, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$a;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-direct {v10, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 342
    .line 343
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    new-instance v7, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string v8, "Asset not found in cache. Downloading to tmp file[already exists == "

    .line 353
    .line 354
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const/16 v8, 0x5d

    .line 365
    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    const/4 v15, 0x4

    .line 374
    const/16 v16, 0x0

    .line 375
    .line 376
    const/4 v14, 0x0

    .line 377
    invoke-static/range {v11 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    if-eqz v7, :cond_a

    .line 385
    .line 386
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 387
    .line 388
    .line 389
    :cond_a
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->h:Ljava/lang/Object;

    .line 394
    .line 395
    iput-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->i:Ljava/lang/Object;

    .line 396
    .line 397
    iput-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->j:Ljava/lang/Object;

    .line 398
    .line 399
    iput-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->k:Ljava/lang/Object;

    .line 400
    .line 401
    iput v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j$b;->l:I

    .line 402
    .line 403
    invoke-virtual {v4, v2, v10, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->d(Ljava/lang/String;Ljava/io/File;Lrs/c;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    if-ne v3, v0, :cond_b

    .line 408
    .line 409
    return-object v0

    .line 410
    :cond_b
    move-object v4, v2

    .line 411
    move-object v2, v9

    .line 412
    move-object v0, v10

    .line 413
    :goto_4
    :try_start_4
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 414
    .line 415
    instance-of v7, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 416
    .line 417
    if-eqz v7, :cond_d

    .line 418
    .line 419
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 420
    .line 421
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    const-string v10, "Renaming tmp file to dst file"

    .line 426
    .line 427
    const/4 v12, 0x4

    .line 428
    const/4 v13, 0x0

    .line 429
    const/4 v11, 0x0

    .line 430
    move-object v8, v3

    .line 431
    invoke-static/range {v8 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_c

    .line 439
    .line 440
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v7, "Renaming to dst file failed, dstFile exists: "

    .line 450
    .line 451
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    const/16 v13, 0xc

    .line 466
    .line 467
    const/4 v14, 0x0

    .line 468
    const/4 v11, 0x0

    .line 469
    const/4 v12, 0x0

    .line 470
    move-object v8, v3

    .line 471
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$p;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$p;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 475
    .line 476
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    return-object v0

    .line 480
    :catchall_2
    move-exception v0

    .line 481
    move-object v4, v6

    .line 482
    goto :goto_8

    .line 483
    :catch_2
    move-exception v0

    .line 484
    move-object v3, v4

    .line 485
    move-object v4, v6

    .line 486
    goto :goto_5

    .line 487
    :cond_c
    :try_start_5
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 488
    .line 489
    invoke-direct {v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 490
    .line 491
    .line 492
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    return-object v0

    .line 496
    :cond_d
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    return-object v3

    .line 500
    :goto_5
    move-object v2, v3

    .line 501
    goto :goto_7

    .line 502
    :cond_e
    :try_start_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 503
    .line 504
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 505
    .line 506
    .line 507
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 508
    :goto_6
    move-object v4, v6

    .line 509
    :goto_7
    :try_start_7
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 510
    .line 511
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;->g()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    const-string v6, "Failed to fetch media from url: "

    .line 521
    .line 522
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    const/16 v12, 0x8

    .line 533
    .line 534
    const/4 v13, 0x0

    .line 535
    const/4 v11, 0x0

    .line 536
    move-object v10, v0

    .line 537
    invoke-static/range {v7 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/r;->a(Ljava/lang/Exception;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 541
    .line 542
    .line 543
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 544
    invoke-interface {v4, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    return-object v0

    .line 548
    :goto_8
    move-object v6, v4

    .line 549
    :goto_9
    invoke-interface {v6, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
