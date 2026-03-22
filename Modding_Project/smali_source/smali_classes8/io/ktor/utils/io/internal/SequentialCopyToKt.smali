.class public final Lio/ktor/utils/io/internal/SequentialCopyToKt;
.super Ljava/lang/Object;
.source "SequentialCopyTo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic a(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->c(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;
    .locals 18
    .param p0    # Lio/ktor/utils/io/ByteChannelSequentialBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/utils/io/ByteChannelSequentialBase;
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
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
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
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    .line 11
    .line 12
    iget v3, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

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
    iput v3, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->m:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const-wide/16 v8, 0x0

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    if-eq v4, v7, :cond_3

    .line 45
    .line 46
    if-eq v4, v6, :cond_2

    .line 47
    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->l:J

    .line 51
    .line 52
    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 53
    .line 54
    iget-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 55
    .line 56
    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 59
    .line 60
    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 78
    .line 79
    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 80
    .line 81
    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 84
    .line 85
    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_3
    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 95
    .line 96
    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 97
    .line 98
    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 101
    .line 102
    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-wide v14, v12

    .line 110
    move-wide v12, v10

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object/from16 v1, p0

    .line 116
    .line 117
    if-eq v1, v0, :cond_e

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->a(Ljava/lang/Throwable;)Z

    .line 130
    .line 131
    .line 132
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    :cond_5
    move-wide/from16 v10, p2

    .line 138
    .line 139
    move-wide v12, v10

    .line 140
    :cond_6
    :goto_1
    cmp-long v4, v10, v8

    .line 141
    .line 142
    if-lez v4, :cond_d

    .line 143
    .line 144
    iput-object v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 147
    .line 148
    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 149
    .line 150
    iput-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 151
    .line 152
    iput v7, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->u(Lrs/c;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-ne v4, v3, :cond_7

    .line 159
    .line 160
    return-object v3

    .line 161
    :cond_7
    move-wide v14, v12

    .line 162
    move-wide v12, v10

    .line 163
    move-object/from16 v16, v4

    .line 164
    .line 165
    move-object v4, v1

    .line 166
    move-object/from16 v1, v16

    .line 167
    .line 168
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_8

    .line 175
    .line 176
    move-wide v10, v12

    .line 177
    move-wide v12, v14

    .line 178
    goto :goto_6

    .line 179
    :cond_8
    invoke-virtual {v4, v0, v12, v13}, Lio/ktor/utils/io/ByteChannelSequentialBase;->K(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v10

    .line 183
    cmp-long v1, v10, v8

    .line 184
    .line 185
    if-nez v1, :cond_b

    .line 186
    .line 187
    iput-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 190
    .line 191
    iput-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 192
    .line 193
    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 194
    .line 195
    iput v6, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 196
    .line 197
    invoke-static {v4, v0, v12, v13, v2}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->c(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-ne v1, v3, :cond_9

    .line 202
    .line 203
    return-object v3

    .line 204
    :cond_9
    move-wide v10, v12

    .line 205
    move-wide v12, v14

    .line 206
    :goto_3
    check-cast v1, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 209
    .line 210
    .line 211
    move-result-wide v14

    .line 212
    cmp-long v1, v14, v8

    .line 213
    .line 214
    if-nez v1, :cond_a

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_a
    move-object v1, v4

    .line 218
    goto :goto_5

    .line 219
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->B()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_c

    .line 224
    .line 225
    iput-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->h:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->i:Ljava/lang/Object;

    .line 228
    .line 229
    iput-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->j:J

    .line 230
    .line 231
    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->k:J

    .line 232
    .line 233
    iput-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->l:J

    .line 234
    .line 235
    iput v5, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 236
    .line 237
    invoke-virtual {v0, v7, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->t(ILrs/c;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-ne v1, v3, :cond_c

    .line 242
    .line 243
    return-object v3

    .line 244
    :cond_c
    :goto_4
    move-object v1, v4

    .line 245
    move-wide/from16 v16, v12

    .line 246
    .line 247
    move-wide v12, v14

    .line 248
    move-wide v14, v10

    .line 249
    move-wide/from16 v10, v16

    .line 250
    .line 251
    :goto_5
    sub-long/2addr v10, v14

    .line 252
    cmp-long v4, v14, v8

    .line 253
    .line 254
    if-lez v4, :cond_6

    .line 255
    .line 256
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_d
    :goto_6
    sub-long/2addr v12, v10

    .line 261
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 267
    .line 268
    const-string v1, "Failed requirement."

    .line 269
    .line 270
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0
.end method

.method private static final c(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->j:I

    .line 42
    .line 43
    iget-object p1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lis/a;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    iget-object p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->i:Ljava/lang/Object;

    .line 64
    .line 65
    move-object p1, p0

    .line 66
    check-cast p1, Lis/a;

    .line 67
    .line 68
    iget-object p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 71
    .line 72
    :try_start_1
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    move-object v7, p1

    .line 76
    move-object p1, p0

    .line 77
    move-object p0, p4

    .line 78
    move-object p4, v7

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p4, Lis/a;->j:Lis/a$d;

    .line 84
    .line 85
    invoke-virtual {p4}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-interface {p4}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    check-cast p4, Lis/a;

    .line 94
    .line 95
    :try_start_2
    invoke-virtual {p4}, Lhs/a;->e()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-long v5, v2

    .line 100
    invoke-static {p2, p3, v5, v6}, Lkotlin/ranges/e;->k(JJ)J

    .line 101
    .line 102
    .line 103
    move-result-wide p2

    .line 104
    long-to-int p2, p2

    .line 105
    invoke-virtual {p4, p2}, Lhs/a;->s(I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->h:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->i:Ljava/lang/Object;

    .line 111
    .line 112
    iput v4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->l:I

    .line 113
    .line 114
    invoke-virtual {p0, p4, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->f(Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-ne p0, v1, :cond_4

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    const/4 p2, -0x1

    .line 128
    if-ne p0, p2, :cond_5

    .line 129
    .line 130
    sget-object p0, Lis/a;->j:Lis/a$d;

    .line 131
    .line 132
    invoke-virtual {p0}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p4, p1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 137
    .line 138
    .line 139
    const-wide/16 p1, 0x0

    .line 140
    .line 141
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    invoke-virtual {p0}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p4, p0}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 150
    .line 151
    .line 152
    return-object p1

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    move-object p1, p4

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    :try_start_3
    iput-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->h:Ljava/lang/Object;

    .line 157
    .line 158
    const/4 p2, 0x0

    .line 159
    iput-object p2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->i:Ljava/lang/Object;

    .line 160
    .line 161
    iput p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->j:I

    .line 162
    .line 163
    iput v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->l:I

    .line 164
    .line 165
    invoke-virtual {p1, p4, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->m(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-ne p1, v1, :cond_6

    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_6
    move-object p1, p4

    .line 173
    :goto_2
    int-to-long p2, p0

    .line 174
    :try_start_4
    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    sget-object p2, Lis/a;->j:Lis/a$d;

    .line 179
    .line 180
    invoke-virtual {p2}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :goto_3
    sget-object p2, Lis/a;->j:Lis/a$d;

    .line 189
    .line 190
    invoke-virtual {p2}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 195
    .line 196
    .line 197
    throw p0
.end method
