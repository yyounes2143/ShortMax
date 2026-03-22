.class public final Lio/ktor/client/engine/android/AndroidClientEngineKt;
.super Ljava/lang/Object;
.source "AndroidClientEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwr/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lwr/m;->b:Lwr/m$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwr/m$a;->a()Lwr/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lwr/m$a;->b()Lwr/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v1, v0}, [Lwr/m;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/ktor/client/engine/android/AndroidClientEngineKt;->a:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/engine/android/AndroidClientEngineKt;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lxr/b;Ljava/io/OutputStream;Lkotlin/coroutines/CoroutineContext;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p0    # Lxr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
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
            "Lxr/b;",
            "Ljava/io/OutputStream;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
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
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    instance-of v2, v1, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;

    .line 13
    .line 14
    iget v3, v2, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->j:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->j:I

    .line 24
    .line 25
    :goto_0
    move-object v4, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;-><init>(Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->i:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v2, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->j:I

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    if-eq v2, v5, :cond_2

    .line 47
    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    iget-object v0, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->h:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Ljava/io/Closeable;

    .line 54
    .line 55
    :try_start_0
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v1, v0

    .line 62
    move-object v7, v2

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    iget-object v0, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->h:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v2, v0

    .line 76
    check-cast v2, Ljava/io/Closeable;

    .line 77
    .line 78
    :try_start_1
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :try_start_2
    instance-of v1, v0, Lxr/b$a;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    check-cast v0, Lxr/b$a;

    .line 90
    .line 91
    invoke-virtual {v0}, Lxr/b$a;->d()[B

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    move-object v1, v0

    .line 101
    goto :goto_5

    .line 102
    :cond_4
    instance-of v1, v0, Lxr/b$c;

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    check-cast v0, Lxr/b$c;

    .line 107
    .line 108
    invoke-virtual {v0}, Lxr/b$c;->d()Lio/ktor/utils/io/ByteReadChannel;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v7, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->h:Ljava/lang/Object;

    .line 113
    .line 114
    iput v5, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->j:I

    .line 115
    .line 116
    const-wide/16 v2, 0x0

    .line 117
    .line 118
    const/4 v5, 0x2

    .line 119
    const/4 v6, 0x0

    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/jvm/javaio/WritingKt;->b(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    if-ne v1, v8, :cond_5

    .line 127
    .line 128
    return-object v8

    .line 129
    :cond_5
    move-object v2, v7

    .line 130
    :goto_2
    :try_start_3
    check-cast v1, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    :try_start_4
    instance-of v1, v0, Lxr/b$d;

    .line 137
    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    sget-object v10, Lgt/e1;->a:Lgt/e1;

    .line 141
    .line 142
    new-instance v13, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;

    .line 143
    .line 144
    invoke-direct {v13, v0, v9}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;-><init>(Lxr/b;Lrs/c;)V

    .line 145
    .line 146
    .line 147
    const/4 v14, 0x2

    .line 148
    const/4 v15, 0x0

    .line 149
    const/4 v12, 0x0

    .line 150
    move-object/from16 v11, p2

    .line 151
    .line 152
    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/CoroutinesKt;->f(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/n;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Lio/ktor/utils/io/n;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v7, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->h:Ljava/lang/Object;

    .line 161
    .line 162
    iput v3, v4, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$1;->j:I

    .line 163
    .line 164
    const-wide/16 v2, 0x0

    .line 165
    .line 166
    const/4 v5, 0x2

    .line 167
    const/4 v6, 0x0

    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/jvm/javaio/WritingKt;->b(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v8, :cond_8

    .line 175
    .line 176
    return-object v8

    .line 177
    :cond_7
    instance-of v1, v0, Lxr/b$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    :cond_8
    :goto_3
    move-object v2, v7

    .line 182
    :goto_4
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    .line 184
    invoke-static {v2, v9}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    .line 189
    return-object v0

    .line 190
    :cond_9
    :try_start_6
    new-instance v1, Lio/ktor/client/call/UnsupportedContentTypeException;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Lio/ktor/client/call/UnsupportedContentTypeException;-><init>(Lxr/b;)V

    .line 193
    .line 194
    .line 195
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 197
    :catchall_2
    move-exception v0

    .line 198
    move-object v2, v0

    .line 199
    invoke-static {v7, v1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    throw v2
.end method
