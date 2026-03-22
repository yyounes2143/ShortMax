.class public final Lio/ktor/utils/io/jvm/nio/WritingKt;
.super Ljava/lang/Object;
.source "Writing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/nio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/channels/WritableByteChannel;
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
            "Ljava/nio/channels/WritableByteChannel;",
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
    instance-of v0, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->m:I

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
    iput v1, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->m:I

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
    iget-wide p0, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->k:J

    .line 39
    .line 40
    iget-object p2, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->j:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object p3, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 47
    .line 48
    iget-object v2, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    .line 51
    .line 52
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object p4, p3

    .line 56
    move-object v6, v2

    .line 57
    move-object v2, p2

    .line 58
    move-wide p2, p0

    .line 59
    move-object p0, v6

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    cmp-long p4, p2, v4

    .line 75
    .line 76
    if-ltz p4, :cond_b

    .line 77
    .line 78
    instance-of p4, p1, Ljava/nio/channels/SelectableChannel;

    .line 79
    .line 80
    if-eqz p4, :cond_4

    .line 81
    .line 82
    move-object p4, p1

    .line 83
    check-cast p4, Ljava/nio/channels/SelectableChannel;

    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-eqz p4, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string p1, "Non-blocking channels are not supported"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_4
    :goto_1
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->l()Z

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-eqz p4, :cond_6

    .line 105
    .line 106
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->h()Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-nez p0, :cond_5

    .line 111
    .line 112
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_5
    throw p0

    .line 118
    :cond_6
    new-instance p4, Lkotlin/jvm/internal/Ref$LongRef;

    .line 119
    .line 120
    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v2, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;

    .line 124
    .line 125
    invoke-direct {v2, p2, p3, p4, p1}, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/WritableByteChannel;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-wide v4, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 129
    .line 130
    cmp-long p1, v4, p2

    .line 131
    .line 132
    if-gez p1, :cond_9

    .line 133
    .line 134
    iput-object p0, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p4, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->i:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v2, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->j:Ljava/lang/Object;

    .line 139
    .line 140
    iput-wide p2, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->k:J

    .line 141
    .line 142
    iput v3, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->m:I

    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    invoke-interface {p0, p1, v2, v0}, Lio/ktor/utils/io/ByteReadChannel;->d(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-ne p1, v1, :cond_8

    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_8
    :goto_2
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->l()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    :cond_9
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->h()Ljava/lang/Throwable;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    if-nez p0, :cond_a

    .line 163
    .line 164
    iget-wide p0, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 165
    .line 166
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_a
    throw p0

    .line 172
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string p1, "Limit shouldn\'t be negative: "

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1
.end method

.method public static synthetic b(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
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
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt;->a(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
