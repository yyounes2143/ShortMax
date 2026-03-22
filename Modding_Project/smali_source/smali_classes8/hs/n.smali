.class public abstract Lhs/n;
.super Ljava/lang/Object;
.source "Output.kt"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 6 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 9 Input.kt\nio/ktor/utils/io/core/Input\n+ 10 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,576:1\n371#1,3:622\n374#1:653\n376#1,3:655\n55#1:708\n35#2,6:577\n41#2,3:584\n69#3:583\n69#3:588\n69#3:658\n69#3:659\n59#3:660\n74#3:661\n74#3:662\n59#3:663\n1#4:587\n1#4:654\n6#5,2:589\n99#6:591\n99#6:603\n99#6:634\n37#7,2:592\n37#7,2:597\n37#7,2:628\n319#8,3:594\n322#8,4:599\n326#8,18:604\n319#8,3:625\n322#8,4:630\n326#8,18:635\n77#9:664\n77#9:686\n8#10,21:665\n8#10,21:687\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n*L\n176#1:622,3\n176#1:653\n176#1:655,3\n355#1:708\n65#1:577,6\n65#1:584,3\n66#1:583\n100#1:588\n237#1:658\n238#1:659\n242#1:660\n242#1:661\n260#1:662\n260#1:663\n176#1:654\n100#1:589,2\n137#1:591\n166#1:603\n177#1:634\n137#1:592,2\n166#1:597,2\n177#1:628,2\n166#1:594,3\n166#1:599,4\n166#1:604,18\n177#1:625,3\n177#1:630,4\n177#1:635,18\n308#1:664\n328#1:686\n313#1:665,21\n333#1:687,21\n*E\n"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# instance fields
.field private final a:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lis/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lis/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    sget-object v0, Lis/a;->j:Lis/a$d;

    invoke-virtual {v0}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lhs/n;-><init>(Lio/ktor/utils/io/pool/b;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/b;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 3
    sget-object p1, Lfs/c;->a:Lfs/c$a;

    invoke-virtual {p1}, Lfs/c$a;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lhs/n;->d:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final c0(Lis/a;Lis/a;Lio/ktor/utils/io/pool/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "Lis/a;",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lhs/n;->e:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lhs/a;->b(I)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p2}, Lhs/a;->j()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p2}, Lhs/a;->h()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-static {}, Lhs/p;->a()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    if-ge v1, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lhs/a;->e()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    sub-int/2addr v4, v5

    .line 40
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    sub-int/2addr v5, v6

    .line 49
    add-int/2addr v4, v5

    .line 50
    if-gt v1, v4, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v3

    .line 54
    :goto_0
    if-ge v0, v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p2}, Lhs/a;->i()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-gt v0, v2, :cond_1

    .line 61
    .line 62
    invoke-static {p2}, Lis/b;->a(Lis/a;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v0, v3

    .line 70
    :goto_1
    if-ne v1, v3, :cond_2

    .line 71
    .line 72
    if-ne v0, v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lhs/n;->p(Lis/a;)V

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    if-eq v0, v3, :cond_6

    .line 79
    .line 80
    if-gt v1, v0, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    if-eq v1, v3, :cond_5

    .line 84
    .line 85
    if-ge v0, v1, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p3, "prep = "

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p3, ", app = "

    .line 104
    .line 105
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p1}, Lhs/n;->d0(Lis/a;Lis/a;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sub-int/2addr v0, v1

    .line 132
    invoke-virtual {p1}, Lhs/a;->e()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    sub-int/2addr v1, v2

    .line 141
    add-int/2addr v0, v1

    .line 142
    invoke-static {p1, p2, v0}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lhs/n;->k()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lis/a;->w()Lis/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lhs/n;->p(Lis/a;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p2, p3}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    return-void
.end method

.method private final d0(Lis/a;Lis/a;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lhs/b;->c(Lhs/a;Lhs/a;)I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhs/n;->b:Lis/a;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lhs/n;->b:Lis/a;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lis/a;->x()Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    if-eq v1, p2, :cond_1

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, p1}, Lis/a;->C(Lis/a;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lhs/h;->a(Lis/a;)Lis/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lhs/n;->c:Lis/a;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "head should\'t be null since it is already handled in the fast-path"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private final q(Lis/a;Lis/a;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhs/n;->c:Lis/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lhs/n;->b:Lis/a;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lhs/n;->h:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lis/a;->C(Lis/a;)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lhs/n;->e:I

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lhs/a;->b(I)Z

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lhs/n;->h:I

    .line 20
    .line 21
    iget v1, p0, Lhs/n;->g:I

    .line 22
    .line 23
    sub-int/2addr p1, v1

    .line 24
    add-int/2addr v0, p1

    .line 25
    iput v0, p0, Lhs/n;->h:I

    .line 26
    .line 27
    :goto_0
    iput-object p2, p0, Lhs/n;->c:Lis/a;

    .line 28
    .line 29
    iget p1, p0, Lhs/n;->h:I

    .line 30
    .line 31
    add-int/2addr p1, p3

    .line 32
    iput p1, p0, Lhs/n;->h:I

    .line 33
    .line 34
    invoke-virtual {p2}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lhs/n;->d:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    invoke-virtual {p2}, Lhs/a;->j()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lhs/n;->e:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lhs/a;->h()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lhs/n;->g:I

    .line 51
    .line 52
    invoke-virtual {p2}, Lhs/a;->f()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lhs/n;->f:I

    .line 57
    .line 58
    return-void
.end method

.method private final r(C)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lhs/n;->W(I)Lis/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v5, 0x80

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    if-ge p1, v5, :cond_0

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move v0, v4

    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    const/16 v6, 0x800

    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    if-gt v5, p1, :cond_1

    .line 35
    .line 36
    if-ge p1, v6, :cond_1

    .line 37
    .line 38
    shr-int/lit8 v0, p1, 0x6

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    or-int/lit16 v0, v0, 0xc0

    .line 43
    .line 44
    int-to-byte v0, v0

    .line 45
    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    add-int/2addr v3, v4

    .line 49
    and-int/lit8 p1, p1, 0x3f

    .line 50
    .line 51
    or-int/2addr p1, v5

    .line 52
    int-to-byte p1, p1

    .line 53
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move v0, v7

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/high16 v4, 0x10000

    .line 59
    .line 60
    if-gt v6, p1, :cond_2

    .line 61
    .line 62
    if-ge p1, v4, :cond_2

    .line 63
    .line 64
    shr-int/lit8 v4, p1, 0xc

    .line 65
    .line 66
    and-int/lit8 v4, v4, 0xf

    .line 67
    .line 68
    or-int/lit16 v4, v4, 0xe0

    .line 69
    .line 70
    int-to-byte v4, v4

    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v4, v3, 0x1

    .line 75
    .line 76
    shr-int/lit8 v6, p1, 0x6

    .line 77
    .line 78
    and-int/lit8 v6, v6, 0x3f

    .line 79
    .line 80
    or-int/2addr v6, v5

    .line 81
    int-to-byte v6, v6

    .line 82
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    add-int/2addr v3, v7

    .line 86
    and-int/lit8 p1, p1, 0x3f

    .line 87
    .line 88
    or-int/2addr p1, v5

    .line 89
    int-to-byte p1, p1

    .line 90
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    if-gt v4, p1, :cond_4

    .line 95
    .line 96
    const/high16 v4, 0x110000

    .line 97
    .line 98
    if-ge p1, v4, :cond_4

    .line 99
    .line 100
    shr-int/lit8 v4, p1, 0x12

    .line 101
    .line 102
    and-int/lit8 v4, v4, 0x7

    .line 103
    .line 104
    or-int/lit16 v4, v4, 0xf0

    .line 105
    .line 106
    int-to-byte v4, v4

    .line 107
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    add-int/lit8 v4, v3, 0x1

    .line 111
    .line 112
    shr-int/lit8 v6, p1, 0xc

    .line 113
    .line 114
    and-int/lit8 v6, v6, 0x3f

    .line 115
    .line 116
    or-int/2addr v6, v5

    .line 117
    int-to-byte v6, v6

    .line 118
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v4, v3, 0x2

    .line 122
    .line 123
    shr-int/lit8 v6, p1, 0x6

    .line 124
    .line 125
    and-int/lit8 v6, v6, 0x3f

    .line 126
    .line 127
    or-int/2addr v6, v5

    .line 128
    int-to-byte v6, v6

    .line 129
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    add-int/2addr v3, v0

    .line 133
    and-int/lit8 p1, p1, 0x3f

    .line 134
    .line 135
    or-int/2addr p1, v5

    .line 136
    int-to-byte p1, p1

    .line 137
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x4

    .line 141
    :goto_0
    invoke-virtual {v1, v0}, Lhs/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    if-ltz v0, :cond_3

    .line 145
    .line 146
    invoke-virtual {p0}, Lhs/n;->k()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    :try_start_1
    const-string p1, "The returned value shouldn\'t be negative"

    .line 151
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_4
    invoke-static {p1}, Lis/e;->j(I)Ljava/lang/Void;

    .line 159
    .line 160
    .line 161
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 162
    .line 163
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 164
    .line 165
    .line 166
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_1
    invoke-virtual {p0}, Lhs/n;->k()V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method private final s()Lis/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lis/a;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lhs/a;->o(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lhs/n;->t(Lis/a;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private final w()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lhs/n;->Y()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    move-object v1, v0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lhs/a;->h()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1}, Lhs/a;->h()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    sub-int/2addr v4, v5

    .line 26
    invoke-virtual {p0, v2, v3, v4}, Lhs/n;->v(Ljava/nio/ByteBuffer;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lis/a;->x()Lis/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lhs/h;->b(Lis/a;Lio/ktor/utils/io/pool/b;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    iget-object v2, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 43
    .line 44
    invoke-static {v0, v2}, Lhs/h;->b(Lis/a;Lio/ktor/utils/io/pool/b;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method


# virtual methods
.method protected final F()Lio/ktor/utils/io/pool/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/n;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final R()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/n;->e:I

    .line 2
    .line 3
    return v0
.end method

.method protected final T()I
    .locals 3

    .line 1
    iget v0, p0, Lhs/n;->h:I

    .line 2
    .line 3
    iget v1, p0, Lhs/n;->e:I

    .line 4
    .line 5
    iget v2, p0, Lhs/n;->g:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final W(I)Lis/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/n;->P()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/n;->R()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lhs/n;->c:Lis/a;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lhs/n;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lhs/a;->b(I)Z

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-direct {p0}, Lhs/n;->s()Lis/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final Y()Lis/a;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/n;->b:Lis/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lhs/n;->c:Lis/a;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget v3, p0, Lhs/n;->e:I

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lhs/a;->b(I)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object v1, p0, Lhs/n;->b:Lis/a;

    .line 17
    .line 18
    iput-object v1, p0, Lhs/n;->c:Lis/a;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lhs/n;->e:I

    .line 22
    .line 23
    iput v1, p0, Lhs/n;->f:I

    .line 24
    .line 25
    iput v1, p0, Lhs/n;->g:I

    .line 26
    .line 27
    iput v1, p0, Lhs/n;->h:I

    .line 28
    .line 29
    sget-object v1, Lfs/c;->a:Lfs/c$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lfs/c$a;->a()Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lhs/n;->d:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    return-object v0
.end method

.method public final Z(Lis/a;)V
    .locals 2
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "chunkBuffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhs/n;->c:Lis/a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lhs/n;->p(Lis/a;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lhs/n;->a:Lio/ktor/utils/io/pool/b;

    .line 15
    .line 16
    invoke-direct {p0, v0, p1, v1}, Lhs/n;->c0(Lis/a;Lis/a;Lio/ktor/utils/io/pool/b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final a0(Lhs/j;)V
    .locals 2
    .param p1    # Lhs/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "packet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lhs/l;->y0()Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lhs/l;->release()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lhs/n;->c:Lis/a;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lhs/n;->p(Lis/a;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lhs/l;->Z()Lio/ktor/utils/io/pool/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, v1, v0, p1}, Lhs/n;->c0(Lis/a;Lis/a;Lio/ktor/utils/io/pool/b;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lhs/n;->l(C)Lhs/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lhs/n;->m(Ljava/lang/CharSequence;)Lhs/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lhs/n;->o(Ljava/lang/CharSequence;II)Lhs/n;

    move-result-object p1

    return-object p1
.end method

.method public final b0(Lhs/j;J)V
    .locals 4
    .param p1    # Lhs/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    .line 2
    .line 3
    const-string v1, "p"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v1, p2, v1

    .line 11
    .line 12
    if-lez v1, :cond_7

    .line 13
    .line 14
    invoke-virtual {p1}, Lhs/l;->T()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Lhs/l;->Y()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    int-to-long v1, v1

    .line 24
    cmp-long v3, v1, p2

    .line 25
    .line 26
    if-gtz v3, :cond_1

    .line 27
    .line 28
    sub-long/2addr p2, v1

    .line 29
    invoke-virtual {p1}, Lhs/l;->w0()Lis/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lhs/n;->t(Lis/a;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 40
    .line 41
    const-string p2, "Unexpected end of packet"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v1}, Lhs/l;->f0(I)Lis/a;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_6

    .line 53
    .line 54
    invoke-virtual {v2}, Lhs/a;->h()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    long-to-int p2, p2

    .line 59
    :try_start_0
    invoke-static {p0, v2, p2}, Lhs/o;->a(Lhs/n;Lhs/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lhs/a;->h()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-lt p2, v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2}, Lhs/a;->j()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-ne p2, p3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lhs/l;->r(Lis/a;)Lis/a;

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p1, p2}, Lhs/l;->o0(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :catchall_0
    move-exception p2

    .line 89
    invoke-virtual {v2}, Lhs/a;->h()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-lt p3, v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v2}, Lhs/a;->j()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne p3, v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Lhs/l;->r(Lis/a;)Lis/a;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p1, p3}, Lhs/l;->o0(I)V

    .line 106
    .line 107
    .line 108
    :goto_1
    throw p2

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_6
    invoke-static {v1}, Lhs/q;->a(I)Ljava/lang/Void;

    .line 116
    .line 117
    .line 118
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 119
    .line 120
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_7
    :goto_2
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lhs/n;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lhs/n;->u()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {p0}, Lhs/n;->u()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhs/n;->x()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 6
    .line 7
    invoke-virtual {v1}, Lis/a$d;->a()Lis/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lis/a;->x()Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lhs/a;->r()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lhs/a;->o(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lhs/n;->e:I

    .line 32
    .line 33
    iput v1, p0, Lhs/n;->g:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lhs/a;->f()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lhs/n;->f:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "Check failed."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhs/n;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhs/n;->c:Lis/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lhs/n;->e:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public l(C)Lhs/n;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lhs/n;->e:I

    .line 2
    .line 3
    iget v1, p0, Lhs/n;->f:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v1, v2, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lhs/n;->d:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    if-ge p1, v3, :cond_0

    .line 16
    .line 17
    int-to-byte p1, p1

    .line 18
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v4, 0x800

    .line 24
    .line 25
    if-gt v3, p1, :cond_1

    .line 26
    .line 27
    if-ge p1, v4, :cond_1

    .line 28
    .line 29
    shr-int/lit8 v2, p1, 0x6

    .line 30
    .line 31
    and-int/lit8 v2, v2, 0x1f

    .line 32
    .line 33
    or-int/lit16 v2, v2, 0xc0

    .line 34
    .line 35
    int-to-byte v2, v2

    .line 36
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v0, 0x1

    .line 40
    .line 41
    and-int/lit8 p1, p1, 0x3f

    .line 42
    .line 43
    or-int/2addr p1, v3

    .line 44
    int-to-byte p1, p1

    .line 45
    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/high16 v5, 0x10000

    .line 51
    .line 52
    if-gt v4, p1, :cond_2

    .line 53
    .line 54
    if-ge p1, v5, :cond_2

    .line 55
    .line 56
    shr-int/lit8 v4, p1, 0xc

    .line 57
    .line 58
    and-int/lit8 v4, v4, 0xf

    .line 59
    .line 60
    or-int/lit16 v4, v4, 0xe0

    .line 61
    .line 62
    int-to-byte v4, v4

    .line 63
    invoke-virtual {v1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v0, 0x1

    .line 67
    .line 68
    shr-int/lit8 v5, p1, 0x6

    .line 69
    .line 70
    and-int/lit8 v5, v5, 0x3f

    .line 71
    .line 72
    or-int/2addr v5, v3

    .line 73
    int-to-byte v5, v5

    .line 74
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v4, v0, 0x2

    .line 78
    .line 79
    and-int/lit8 p1, p1, 0x3f

    .line 80
    .line 81
    or-int/2addr p1, v3

    .line 82
    int-to-byte p1, p1

    .line 83
    invoke-virtual {v1, v4, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    if-gt v5, p1, :cond_3

    .line 88
    .line 89
    const/high16 v2, 0x110000

    .line 90
    .line 91
    if-ge p1, v2, :cond_3

    .line 92
    .line 93
    shr-int/lit8 v2, p1, 0x12

    .line 94
    .line 95
    and-int/lit8 v2, v2, 0x7

    .line 96
    .line 97
    or-int/lit16 v2, v2, 0xf0

    .line 98
    .line 99
    int-to-byte v2, v2

    .line 100
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v2, v0, 0x1

    .line 104
    .line 105
    shr-int/lit8 v4, p1, 0xc

    .line 106
    .line 107
    and-int/lit8 v4, v4, 0x3f

    .line 108
    .line 109
    or-int/2addr v4, v3

    .line 110
    int-to-byte v4, v4

    .line 111
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v0, 0x2

    .line 115
    .line 116
    shr-int/lit8 v4, p1, 0x6

    .line 117
    .line 118
    and-int/lit8 v4, v4, 0x3f

    .line 119
    .line 120
    or-int/2addr v4, v3

    .line 121
    int-to-byte v4, v4

    .line 122
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v0, 0x3

    .line 126
    .line 127
    and-int/lit8 p1, p1, 0x3f

    .line 128
    .line 129
    or-int/2addr p1, v3

    .line 130
    int-to-byte p1, p1

    .line 131
    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    const/4 v2, 0x4

    .line 135
    :goto_0
    add-int/2addr v0, v2

    .line 136
    iput v0, p0, Lhs/n;->e:I

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_3
    invoke-static {p1}, Lis/e;->j(I)Ljava/lang/Void;

    .line 140
    .line 141
    .line 142
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 143
    .line 144
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_4
    invoke-direct {p0, p1}, Lhs/n;->r(C)V

    .line 149
    .line 150
    .line 151
    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Lhs/n;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "null"

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lhs/n;->o(Ljava/lang/CharSequence;II)Lhs/n;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lhs/n;->o(Ljava/lang/CharSequence;II)Lhs/n;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;II)Lhs/n;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lhs/n;->o(Ljava/lang/CharSequence;II)Lhs/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-static {p0, p1, p2, p3, v0}, Lhs/q;->h(Lhs/n;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final p(Lis/a;)V
    .locals 5
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "head"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lhs/h;->a(Lis/a;)Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Lhs/h;->c(Lis/a;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    int-to-long v3, v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    const-wide/32 v3, 0x7fffffff

    .line 26
    .line 27
    .line 28
    cmp-long v3, v1, v3

    .line 29
    .line 30
    if-gez v3, :cond_0

    .line 31
    .line 32
    long-to-int v1, v1

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lhs/n;->q(Lis/a;Lis/a;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p1, "total size increase"

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Lis/d;->a(JLjava/lang/String;)Ljava/lang/Void;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 43
    .line 44
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lhs/n;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final t(Lis/a;)V
    .locals 1
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lis/a;->x()Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p1, v0}, Lhs/n;->q(Lis/a;Lis/a;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "It should be a single buffer chunk."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method protected abstract u()V
.end method

.method protected abstract v(Ljava/nio/ByteBuffer;II)V
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final x()Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/n;->b:Lis/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method
