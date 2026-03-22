.class final Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannelUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/utils/ByteChannelUtilsKt;->a(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lat/n;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/o;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.utils.ByteChannelUtilsKt$observable$1"
    f = "ByteChannelUtils.kt"
    l = {
        0x17,
        0x18,
        0x1a,
        0x1f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteChannelUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,35:1\n159#2,5:36\n*S KotlinDebug\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n*L\n19#1:36,5\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:J

.field n:J

.field o:I

.field p:I

.field private synthetic q:Ljava/lang/Object;

.field final synthetic r:Ljava/lang/Long;

.field final synthetic s:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic t:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Long;Lio/ktor/utils/io/ByteReadChannel;Lat/n;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lat/n<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->r:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->s:Lio/ktor/utils/io/ByteReadChannel;

    .line 4
    .line 5
    iput-object p3, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->t:Lat/n;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 4
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
    new-instance v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->r:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->s:Lio/ktor/utils/io/ByteReadChannel;

    .line 6
    .line 7
    iget-object v3, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->t:Lat/n;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;-><init>(Ljava/lang/Long;Lio/ktor/utils/io/ByteReadChannel;Lat/n;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/o;
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
            "Lio/ktor/utils/io/o;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/utils/io/o;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    iget v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->p:I

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    if-eq v2, v8, :cond_3

    .line 16
    .line 17
    if-eq v2, v7, :cond_2

    .line 18
    .line 19
    if-eq v2, v6, :cond_1

    .line 20
    .line 21
    if-ne v2, v5, :cond_0

    .line 22
    .line 23
    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v3, v0

    .line 28
    check-cast v3, Lio/ktor/utils/io/pool/b;

    .line 29
    .line 30
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    iget-wide v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 47
    .line 48
    iget-wide v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 49
    .line 50
    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, [B

    .line 53
    .line 54
    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v14, Lat/n;

    .line 59
    .line 60
    iget-object v15, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    .line 63
    .line 64
    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Lio/ktor/utils/io/pool/b;

    .line 67
    .line 68
    iget-object v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lio/ktor/utils/io/o;

    .line 71
    .line 72
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    move v8, v6

    .line 76
    move-wide/from16 v16, v9

    .line 77
    .line 78
    move-object v9, v2

    .line 79
    move-object v2, v13

    .line 80
    move-object/from16 v18, v14

    .line 81
    .line 82
    move-object v14, v3

    .line 83
    move-object v3, v5

    .line 84
    move-wide v4, v11

    .line 85
    move-object/from16 v11, v18

    .line 86
    .line 87
    move-object v12, v15

    .line 88
    move v15, v7

    .line 89
    move-wide/from16 v6, v16

    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object v3, v5

    .line 95
    move-object v2, v13

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_2
    iget v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->o:I

    .line 99
    .line 100
    iget-wide v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 101
    .line 102
    iget-wide v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 103
    .line 104
    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v5, [B

    .line 107
    .line 108
    iget-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v12, Lat/n;

    .line 113
    .line 114
    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    .line 117
    .line 118
    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v14, Lio/ktor/utils/io/pool/b;

    .line 121
    .line 122
    iget-object v15, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v15, Lio/ktor/utils/io/o;

    .line 125
    .line 126
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    .line 128
    .line 129
    move-object v6, v14

    .line 130
    move-object v14, v15

    .line 131
    move v15, v7

    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :catchall_2
    move-exception v0

    .line 135
    move-object v2, v11

    .line 136
    move-object v3, v14

    .line 137
    goto/16 :goto_6

    .line 138
    .line 139
    :cond_3
    iget-wide v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 140
    .line 141
    iget-wide v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 142
    .line 143
    iget-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v9, [B

    .line 146
    .line 147
    iget-object v10, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v11, Lat/n;

    .line 152
    .line 153
    iget-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    .line 156
    .line 157
    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v13, Lio/ktor/utils/io/pool/b;

    .line 160
    .line 161
    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v14, Lio/ktor/utils/io/o;

    .line 164
    .line 165
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 166
    .line 167
    .line 168
    move-wide v6, v2

    .line 169
    move-object v2, v10

    .line 170
    move-object v3, v13

    .line 171
    move-object/from16 v10, p1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catchall_3
    move-exception v0

    .line 175
    move-object v2, v10

    .line 176
    move-object v3, v13

    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Lio/ktor/utils/io/o;

    .line 185
    .line 186
    invoke-static {}, Ljs/a;->a()Lio/ktor/utils/io/pool/b;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget-object v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->r:Ljava/lang/Long;

    .line 191
    .line 192
    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->s:Lio/ktor/utils/io/ByteReadChannel;

    .line 193
    .line 194
    iget-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->t:Lat/n;

    .line 195
    .line 196
    invoke-interface {v3}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    :try_start_4
    move-object v11, v10

    .line 201
    check-cast v11, [B

    .line 202
    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 206
    .line 207
    .line 208
    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 209
    goto :goto_0

    .line 210
    :catchall_4
    move-exception v0

    .line 211
    move-object v2, v10

    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_5
    const-wide/16 v12, -0x1

    .line 215
    .line 216
    :goto_0
    move-object v14, v2

    .line 217
    move-object v2, v10

    .line 218
    const-wide/16 v6, 0x0

    .line 219
    .line 220
    move-wide/from16 v16, v12

    .line 221
    .line 222
    move-object v12, v5

    .line 223
    move-wide/from16 v4, v16

    .line 224
    .line 225
    move-object/from16 v18, v11

    .line 226
    .line 227
    move-object v11, v9

    .line 228
    move-object/from16 v9, v18

    .line 229
    .line 230
    :goto_1
    :try_start_5
    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->l()Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_9

    .line 235
    .line 236
    iput-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 241
    .line 242
    iput-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 247
    .line 248
    iput-wide v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 249
    .line 250
    iput-wide v6, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 251
    .line 252
    iput v8, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->p:I

    .line 253
    .line 254
    invoke-static {v12, v9, v1}, Lio/ktor/utils/io/ByteReadChannelKt;->d(Lio/ktor/utils/io/ByteReadChannel;[BLrs/c;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    if-ne v10, v0, :cond_6

    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_6
    :goto_2
    check-cast v10, Ljava/lang/Number;

    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    invoke-interface {v14}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    iput-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 278
    .line 279
    iput-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 282
    .line 283
    iput-wide v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 284
    .line 285
    iput-wide v6, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 286
    .line 287
    iput v10, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->o:I

    .line 288
    .line 289
    const/4 v15, 0x2

    .line 290
    iput v15, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->p:I

    .line 291
    .line 292
    const/4 v13, 0x0

    .line 293
    invoke-interface {v8, v9, v13, v10, v1}, Lio/ktor/utils/io/e;->b([BIILrs/c;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    if-ne v8, v0, :cond_7

    .line 298
    .line 299
    return-object v0

    .line 300
    :cond_7
    move-object v13, v12

    .line 301
    move-object v12, v11

    .line 302
    move-object v11, v2

    .line 303
    move v2, v10

    .line 304
    move-wide/from16 v16, v6

    .line 305
    .line 306
    move-object v6, v3

    .line 307
    move-wide/from16 v18, v4

    .line 308
    .line 309
    move-object v5, v9

    .line 310
    move-wide/from16 v9, v18

    .line 311
    .line 312
    move-wide/from16 v3, v16

    .line 313
    .line 314
    :goto_3
    int-to-long v7, v2

    .line 315
    add-long v2, v3, v7

    .line 316
    .line 317
    :try_start_6
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    iput-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v6, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 336
    .line 337
    iput-wide v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->m:J

    .line 338
    .line 339
    iput-wide v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->n:J

    .line 340
    .line 341
    const/4 v8, 0x3

    .line 342
    iput v8, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->p:I

    .line 343
    .line 344
    invoke-interface {v12, v4, v7, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 348
    if-ne v4, v0, :cond_8

    .line 349
    .line 350
    return-object v0

    .line 351
    :cond_8
    move-wide/from16 v16, v9

    .line 352
    .line 353
    move-object v9, v5

    .line 354
    move-wide/from16 v4, v16

    .line 355
    .line 356
    move-wide/from16 v18, v2

    .line 357
    .line 358
    move-object v3, v6

    .line 359
    move-wide/from16 v6, v18

    .line 360
    .line 361
    move-object v2, v11

    .line 362
    move-object v11, v12

    .line 363
    move-object v12, v13

    .line 364
    :goto_4
    const/4 v8, 0x1

    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :catchall_5
    move-exception v0

    .line 368
    move-object v3, v6

    .line 369
    move-object v2, v11

    .line 370
    goto :goto_6

    .line 371
    :cond_9
    :try_start_7
    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->h()Ljava/lang/Throwable;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-interface {v14}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-interface {v9, v8}, Lio/ktor/utils/io/e;->a(Ljava/lang/Throwable;)Z

    .line 380
    .line 381
    .line 382
    if-nez v8, :cond_a

    .line 383
    .line 384
    const-wide/16 v8, 0x0

    .line 385
    .line 386
    cmp-long v8, v6, v8

    .line 387
    .line 388
    if-nez v8, :cond_a

    .line 389
    .line 390
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    iput-object v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->q:Ljava/lang/Object;

    .line 399
    .line 400
    iput-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->h:Ljava/lang/Object;

    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    iput-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->i:Ljava/lang/Object;

    .line 404
    .line 405
    iput-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->j:Ljava/lang/Object;

    .line 406
    .line 407
    iput-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->k:Ljava/lang/Object;

    .line 408
    .line 409
    iput-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->l:Ljava/lang/Object;

    .line 410
    .line 411
    const/4 v5, 0x4

    .line 412
    iput v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->p:I

    .line 413
    .line 414
    invoke-interface {v11, v6, v4, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    if-ne v4, v0, :cond_a

    .line 419
    .line 420
    return-object v0

    .line 421
    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 422
    .line 423
    invoke-interface {v3, v2}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 427
    .line 428
    return-object v0

    .line 429
    :goto_6
    invoke-interface {v3, v2}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    throw v0
.end method
