.class public final Lio/ktor/utils/io/ByteReadChannelJVMKt;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic a(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/utils/io/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/e;",
            "J",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eq p0, p1, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p2, v0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v0, p0, Lio/ktor/utils/io/ByteBufferChannel;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    instance-of v0, p1, Lio/ktor/utils/io/ByteBufferChannel;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    check-cast v1, Lio/ktor/utils/io/ByteBufferChannel;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    move-wide v3, p2

    .line 30
    move-object v6, p4

    .line 31
    invoke-virtual/range {v1 .. v6}, Lio/ktor/utils/io/ByteBufferChannel;->I(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/c;Lrs/c;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    instance-of v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 45
    .line 46
    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 47
    .line 48
    const-wide p2, 0x7fffffffffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->b(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p1, "Failed requirement."

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method private static final c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/e;",
            "J",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    .line 9
    .line 10
    iget v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->p:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->p:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->o:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->p:I

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v7, :cond_2

    .line 42
    .line 43
    if-ne v3, v6, :cond_1

    .line 44
    .line 45
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->n:I

    .line 46
    .line 47
    iget-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->l:J

    .line 48
    .line 49
    iget v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->m:I

    .line 50
    .line 51
    iget-wide v11, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->k:J

    .line 52
    .line 53
    iget-object v13, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->j:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v13, Lis/a;

    .line 56
    .line 57
    iget-object v14, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v14, Lio/ktor/utils/io/e;

    .line 60
    .line 61
    iget-object v15, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    .line 64
    .line 65
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    move-object v4, v1

    .line 69
    move-object v1, v14

    .line 70
    move-object v0, v15

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_2
    iget-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->l:J

    .line 85
    .line 86
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->m:I

    .line 87
    .line 88
    iget-wide v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->k:J

    .line 89
    .line 90
    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->j:Ljava/lang/Object;

    .line 91
    .line 92
    move-object v13, v12

    .line 93
    check-cast v13, Lis/a;

    .line 94
    .line 95
    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->i:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v14, v12

    .line 98
    check-cast v14, Lio/ktor/utils/io/e;

    .line 99
    .line 100
    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->h:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    .line 103
    .line 104
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 112
    .line 113
    invoke-virtual {v0}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lis/a;

    .line 122
    .line 123
    invoke-interface/range {p1 .. p1}, Lio/ktor/utils/io/e;->g()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    xor-int/2addr v3, v7

    .line 128
    move-wide/from16 v8, p2

    .line 129
    .line 130
    move-object v13, v0

    .line 131
    move v10, v3

    .line 132
    move-wide v11, v4

    .line 133
    move-object/from16 v0, p0

    .line 134
    .line 135
    move-object v3, v1

    .line 136
    move-object/from16 v1, p1

    .line 137
    .line 138
    :goto_1
    sub-long v14, v8, v11

    .line 139
    .line 140
    cmp-long v16, v14, v4

    .line 141
    .line 142
    if-eqz v16, :cond_8

    .line 143
    .line 144
    :try_start_2
    invoke-virtual {v13}, Lhs/a;->e()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    int-to-long v4, v4

    .line 149
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    long-to-int v4, v4

    .line 154
    invoke-virtual {v13, v4}, Lhs/a;->s(I)V

    .line 155
    .line 156
    .line 157
    iput-object v0, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->h:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v1, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->i:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v13, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->j:Ljava/lang/Object;

    .line 162
    .line 163
    iput-wide v8, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->k:J

    .line 164
    .line 165
    iput v10, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->m:I

    .line 166
    .line 167
    iput-wide v11, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->l:J

    .line 168
    .line 169
    iput v7, v3, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->p:I

    .line 170
    .line 171
    invoke-interface {v0, v13, v3}, Lio/ktor/utils/io/ByteReadChannel;->f(Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    if-ne v4, v2, :cond_4

    .line 176
    .line 177
    return-object v2

    .line 178
    :cond_4
    move-object v14, v1

    .line 179
    move-object v1, v3

    .line 180
    move v3, v10

    .line 181
    move-wide/from16 v17, v11

    .line 182
    .line 183
    move-object v12, v0

    .line 184
    move-object v0, v4

    .line 185
    move-wide v10, v8

    .line 186
    move-wide/from16 v8, v17

    .line 187
    .line 188
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    const/4 v4, -0x1

    .line 195
    if-eq v0, v4, :cond_7

    .line 196
    .line 197
    iput-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->h:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v14, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->i:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v13, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->j:Ljava/lang/Object;

    .line 202
    .line 203
    iput-wide v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->k:J

    .line 204
    .line 205
    iput v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->m:I

    .line 206
    .line 207
    iput-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->l:J

    .line 208
    .line 209
    iput v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->n:I

    .line 210
    .line 211
    iput v6, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->p:I

    .line 212
    .line 213
    invoke-interface {v14, v13, v1}, Lio/ktor/utils/io/e;->m(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    if-ne v4, v2, :cond_5

    .line 218
    .line 219
    return-object v2

    .line 220
    :cond_5
    move-object v4, v1

    .line 221
    move-object v1, v14

    .line 222
    move/from16 v17, v3

    .line 223
    .line 224
    move v3, v0

    .line 225
    move-object v0, v12

    .line 226
    move-wide v11, v10

    .line 227
    move/from16 v10, v17

    .line 228
    .line 229
    :goto_3
    int-to-long v14, v3

    .line 230
    add-long/2addr v8, v14

    .line 231
    if-eqz v10, :cond_6

    .line 232
    .line 233
    :try_start_4
    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->c()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_6

    .line 238
    .line 239
    invoke-interface {v1}, Lio/ktor/utils/io/e;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    move-object v14, v1

    .line 245
    goto :goto_6

    .line 246
    :cond_6
    :goto_4
    move-object v3, v4

    .line 247
    const-wide/16 v4, 0x0

    .line 248
    .line 249
    move-wide/from16 v17, v8

    .line 250
    .line 251
    move-wide v8, v11

    .line 252
    move-wide/from16 v11, v17

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_7
    move-wide v11, v8

    .line 256
    goto :goto_5

    .line 257
    :cond_8
    move-object v14, v1

    .line 258
    :goto_5
    :try_start_5
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 263
    .line 264
    invoke-virtual {v1}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v13, v1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    :goto_6
    :try_start_6
    invoke-interface {v14, v0}, Lio/ktor/utils/io/e;->a(Ljava/lang/Throwable;)Z

    .line 273
    .line 274
    .line 275
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    :catchall_2
    move-exception v0

    .line 277
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 278
    .line 279
    invoke-virtual {v1}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v13, v1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 284
    .line 285
    .line 286
    throw v0
.end method
