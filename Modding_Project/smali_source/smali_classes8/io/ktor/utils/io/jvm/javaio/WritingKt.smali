.class public final Lio/ktor/utils/io/jvm/javaio/WritingKt;
.super Ljava/lang/Object;
.source "Writing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/javaio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLrs/c;)Ljava/lang/Object;
    .locals 18
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
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
            "Ljava/io/OutputStream;",
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
    move-wide/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    instance-of v3, v2, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    .line 11
    .line 12
    iget v4, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->o:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->o:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->n:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->o:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v7, :cond_1

    .line 42
    .line 43
    iget-wide v0, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->m:J

    .line 44
    .line 45
    iget-wide v8, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->l:J

    .line 46
    .line 47
    iget-wide v10, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->k:J

    .line 48
    .line 49
    iget-object v5, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->j:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, [B

    .line 52
    .line 53
    iget-object v12, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v12, Ljava/io/OutputStream;

    .line 56
    .line 57
    iget-object v13, v3, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    move-wide v14, v8

    .line 65
    move-object v8, v5

    .line 66
    move-object v5, v3

    .line 67
    move-wide/from16 v16, v0

    .line 68
    .line 69
    move-object v1, v12

    .line 70
    move-object v0, v13

    .line 71
    move-wide/from16 v12, v16

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    cmp-long v2, v0, v8

    .line 91
    .line 92
    if-ltz v2, :cond_7

    .line 93
    .line 94
    invoke-static {}, Ljs/a;->a()Lio/ktor/utils/io/pool/b;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v5, v2

    .line 103
    check-cast v5, [B

    .line 104
    .line 105
    :try_start_1
    array-length v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    int-to-long v10, v2

    .line 107
    move-wide v12, v8

    .line 108
    move-object v8, v5

    .line 109
    move-object v5, v3

    .line 110
    move-wide v2, v0

    .line 111
    move-object/from16 v0, p0

    .line 112
    .line 113
    move-object/from16 v1, p1

    .line 114
    .line 115
    :goto_1
    cmp-long v9, v12, v2

    .line 116
    .line 117
    if-gez v9, :cond_6

    .line 118
    .line 119
    sub-long v14, v2, v12

    .line 120
    .line 121
    :try_start_2
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v14

    .line 125
    long-to-int v9, v14

    .line 126
    iput-object v0, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v1, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->i:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v8, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->j:Ljava/lang/Object;

    .line 131
    .line 132
    iput-wide v2, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->k:J

    .line 133
    .line 134
    iput-wide v12, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->l:J

    .line 135
    .line 136
    iput-wide v10, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->m:J

    .line 137
    .line 138
    iput v7, v5, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->o:I

    .line 139
    .line 140
    invoke-interface {v0, v8, v6, v9, v5}, Lio/ktor/utils/io/ByteReadChannel;->e([BIILrs/c;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    if-ne v9, v4, :cond_3

    .line 145
    .line 146
    return-object v4

    .line 147
    :cond_3
    move-wide v14, v12

    .line 148
    move-wide v12, v10

    .line 149
    move-wide v10, v2

    .line 150
    move-object v2, v9

    .line 151
    :goto_2
    check-cast v2, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v3, -0x1

    .line 158
    if-eq v2, v3, :cond_5

    .line 159
    .line 160
    if-lez v2, :cond_4

    .line 161
    .line 162
    invoke-virtual {v1, v8, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    .line 164
    .line 165
    int-to-long v2, v2

    .line 166
    add-long/2addr v2, v14

    .line 167
    move-wide/from16 v16, v10

    .line 168
    .line 169
    move-wide v10, v12

    .line 170
    move-wide v12, v2

    .line 171
    move-wide/from16 v2, v16

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    move-object v5, v8

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move-wide v2, v10

    .line 178
    move-wide v10, v12

    .line 179
    move-wide v12, v14

    .line 180
    goto :goto_1

    .line 181
    :cond_5
    move-object v5, v8

    .line 182
    move-wide v12, v14

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    move-object v5, v8

    .line 185
    :goto_3
    :try_start_3
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    invoke-static {}, Ljs/a;->a()Lio/ktor/utils/io/pool/b;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v1, v5}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :goto_4
    invoke-static {}, Ljs/a;->a()Lio/ktor/utils/io/pool/b;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v1, v5}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "Limit shouldn\'t be negative: "

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1
.end method

.method public static synthetic b(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-wide p2, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/javaio/WritingKt;->a(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
