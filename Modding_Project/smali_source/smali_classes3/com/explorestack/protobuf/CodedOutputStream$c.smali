.class Lcom/explorestack/protobuf/CodedOutputStream$c;
.super Lcom/explorestack/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final e:[B

.field private final f:I

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedOutputStream;-><init>(Lcom/explorestack/protobuf/CodedOutputStream$a;)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    or-int v0, p2, p3

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    add-int v2, p2, p3

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    or-int/2addr v0, v1

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 17
    .line 18
    iput p2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->f:I

    .line 19
    .line 20
    iput p2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 21
    .line 22
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    array-length p1, p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 45
    .line 46
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string p2, "buffer"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method


# virtual methods
.method public final A0(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 8
    .line 9
    long-to-int v3, p1

    .line 10
    and-int/lit16 v3, v3, 0xff

    .line 11
    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v0, v1

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x2

    .line 16
    .line 17
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    shr-long v5, p1, v4

    .line 22
    .line 23
    long-to-int v5, v5

    .line 24
    and-int/lit16 v5, v5, 0xff

    .line 25
    .line 26
    int-to-byte v5, v5

    .line 27
    aput-byte v5, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x3

    .line 30
    .line 31
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    shr-long v5, p1, v5

    .line 36
    .line 37
    long-to-int v5, v5

    .line 38
    and-int/lit16 v5, v5, 0xff

    .line 39
    .line 40
    int-to-byte v5, v5

    .line 41
    aput-byte v5, v0, v3

    .line 42
    .line 43
    add-int/lit8 v3, v1, 0x4

    .line 44
    .line 45
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 46
    .line 47
    const/16 v5, 0x18

    .line 48
    .line 49
    shr-long v5, p1, v5

    .line 50
    .line 51
    long-to-int v5, v5

    .line 52
    and-int/lit16 v5, v5, 0xff

    .line 53
    .line 54
    int-to-byte v5, v5

    .line 55
    aput-byte v5, v0, v2

    .line 56
    .line 57
    add-int/lit8 v2, v1, 0x5

    .line 58
    .line 59
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    shr-long v5, p1, v5

    .line 64
    .line 65
    long-to-int v5, v5

    .line 66
    and-int/lit16 v5, v5, 0xff

    .line 67
    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v0, v3

    .line 70
    .line 71
    add-int/lit8 v3, v1, 0x6

    .line 72
    .line 73
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 74
    .line 75
    const/16 v5, 0x28

    .line 76
    .line 77
    shr-long v5, p1, v5

    .line 78
    .line 79
    long-to-int v5, v5

    .line 80
    and-int/lit16 v5, v5, 0xff

    .line 81
    .line 82
    int-to-byte v5, v5

    .line 83
    aput-byte v5, v0, v2

    .line 84
    .line 85
    add-int/lit8 v2, v1, 0x7

    .line 86
    .line 87
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 88
    .line 89
    const/16 v5, 0x30

    .line 90
    .line 91
    shr-long v5, p1, v5

    .line 92
    .line 93
    long-to-int v5, v5

    .line 94
    and-int/lit16 v5, v5, 0xff

    .line 95
    .line 96
    int-to-byte v5, v5

    .line 97
    aput-byte v5, v0, v3

    .line 98
    .line 99
    add-int/2addr v1, v4

    .line 100
    iput v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 101
    .line 102
    const/16 v1, 0x38

    .line 103
    .line 104
    shr-long/2addr p1, v1

    .line 105
    long-to-int p1, p1

    .line 106
    and-int/lit16 p1, p1, 0xff

    .line 107
    .line 108
    int-to-byte p1, p1

    .line 109
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception p1

    .line 113
    new-instance p2, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 114
    .line 115
    iget v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 137
    .line 138
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p2, v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p2
.end method

.method public final H0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->I0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->f1(J)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final L0(ILcom/explorestack/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->N0(Lcom/explorestack/protobuf/MessageLite;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method final M0(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/explorestack/protobuf/a;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/a;->getSerializedSize(Lcom/explorestack/protobuf/q1;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStream;->a:Lcom/explorestack/protobuf/p;

    .line 16
    .line 17
    invoke-interface {p3, p2, p1}, Lcom/explorestack/protobuf/q1;->b(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final N0(Lcom/explorestack/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/MessageLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final O0(ILcom/explorestack/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->c1(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final P0(ILcom/explorestack/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->c1(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->r0(ILcom/explorestack/protobuf/ByteString;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Z0(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->a1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->g1(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    add-int v1, v0, v2

    .line 24
    .line 25
    iput v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->l0()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {p1, v3, v1, v4}, Lcom/explorestack/protobuf/Utf8;->i(Ljava/lang/CharSequence;[BII)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 38
    .line 39
    sub-int v3, v1, v0

    .line 40
    .line 41
    sub-int/2addr v3, v2

    .line 42
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 43
    .line 44
    .line 45
    iput v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8;->j(Ljava/lang/CharSequence;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 60
    .line 61
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->l0()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {p1, v1, v2, v3}, Lcom/explorestack/protobuf/Utf8;->i(Ljava/lang/CharSequence;[BII)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_0
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 75
    .line 76
    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :goto_1
    iput v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 81
    .line 82
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->f0(Ljava/lang/String;Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->h1([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b1(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c1(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/CodedOutputStream;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/d;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->l0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-lt v0, v1, :cond_4

    .line 19
    .line 20
    and-int/lit8 v0, p1, -0x80

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 25
    .line 26
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 31
    .line 32
    int-to-long v1, v1

    .line 33
    int-to-byte p1, p1

    .line 34
    invoke-static {v0, v1, v2, p1}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 39
    .line 40
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 41
    .line 42
    add-int/lit8 v2, v1, 0x1

    .line 43
    .line 44
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 45
    .line 46
    int-to-long v1, v1

    .line 47
    or-int/lit16 v3, p1, 0x80

    .line 48
    .line 49
    int-to-byte v3, v3

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 51
    .line 52
    .line 53
    ushr-int/lit8 v0, p1, 0x7

    .line 54
    .line 55
    and-int/lit8 v1, v0, -0x80

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 60
    .line 61
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 62
    .line 63
    add-int/lit8 v2, v1, 0x1

    .line 64
    .line 65
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 66
    .line 67
    int-to-long v1, v1

    .line 68
    int-to-byte v0, v0

    .line 69
    invoke-static {p1, v1, v2, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 74
    .line 75
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 80
    .line 81
    int-to-long v2, v2

    .line 82
    or-int/lit16 v0, v0, 0x80

    .line 83
    .line 84
    int-to-byte v0, v0

    .line 85
    invoke-static {v1, v2, v3, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 86
    .line 87
    .line 88
    ushr-int/lit8 v0, p1, 0xe

    .line 89
    .line 90
    and-int/lit8 v1, v0, -0x80

    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 95
    .line 96
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 97
    .line 98
    add-int/lit8 v2, v1, 0x1

    .line 99
    .line 100
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 101
    .line 102
    int-to-long v1, v1

    .line 103
    int-to-byte v0, v0

    .line 104
    invoke-static {p1, v1, v2, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 109
    .line 110
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 111
    .line 112
    add-int/lit8 v3, v2, 0x1

    .line 113
    .line 114
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 115
    .line 116
    int-to-long v2, v2

    .line 117
    or-int/lit16 v0, v0, 0x80

    .line 118
    .line 119
    int-to-byte v0, v0

    .line 120
    invoke-static {v1, v2, v3, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 121
    .line 122
    .line 123
    ushr-int/lit8 v0, p1, 0x15

    .line 124
    .line 125
    and-int/lit8 v1, v0, -0x80

    .line 126
    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 130
    .line 131
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 132
    .line 133
    add-int/lit8 v2, v1, 0x1

    .line 134
    .line 135
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 136
    .line 137
    int-to-long v1, v1

    .line 138
    int-to-byte v0, v0

    .line 139
    invoke-static {p1, v1, v2, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 144
    .line 145
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 146
    .line 147
    add-int/lit8 v3, v2, 0x1

    .line 148
    .line 149
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 150
    .line 151
    int-to-long v2, v2

    .line 152
    or-int/lit16 v0, v0, 0x80

    .line 153
    .line 154
    int-to-byte v0, v0

    .line 155
    invoke-static {v1, v2, v3, v0}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 156
    .line 157
    .line 158
    ushr-int/lit8 p1, p1, 0x1c

    .line 159
    .line 160
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 161
    .line 162
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 163
    .line 164
    add-int/lit8 v2, v1, 0x1

    .line 165
    .line 166
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 167
    .line 168
    int-to-long v1, v1

    .line 169
    int-to-byte p1, p1

    .line 170
    invoke-static {v0, v1, v2, p1}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 175
    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 179
    .line 180
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 181
    .line 182
    add-int/lit8 v2, v1, 0x1

    .line 183
    .line 184
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 185
    .line 186
    int-to-byte p1, p1

    .line 187
    aput-byte p1, v0, v1

    .line 188
    .line 189
    return-void

    .line 190
    :catch_0
    move-exception p1

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 193
    .line 194
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 195
    .line 196
    add-int/lit8 v2, v1, 0x1

    .line 197
    .line 198
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 199
    .line 200
    and-int/lit8 v2, p1, 0x7f

    .line 201
    .line 202
    or-int/lit16 v2, v2, 0x80

    .line 203
    .line 204
    int-to-byte v2, v2

    .line 205
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    ushr-int/lit8 p1, p1, 0x7

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :goto_1
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 211
    .line 212
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    const/4 v3, 0x1

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 234
    .line 235
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    throw v0
.end method

.method public e0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e1(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->f1(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f1(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/CodedOutputStream;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, -0x80

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->l0()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v6, 0xa

    .line 17
    .line 18
    if-lt v0, v6, :cond_1

    .line 19
    .line 20
    :goto_0
    and-long v6, p1, v4

    .line 21
    .line 22
    cmp-long v0, v6, v2

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 27
    .line 28
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 29
    .line 30
    add-int/lit8 v2, v1, 0x1

    .line 31
    .line 32
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 33
    .line 34
    int-to-long v1, v1

    .line 35
    long-to-int p1, p1

    .line 36
    int-to-byte p1, p1

    .line 37
    invoke-static {v0, v1, v2, p1}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 42
    .line 43
    iget v6, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 44
    .line 45
    add-int/lit8 v7, v6, 0x1

    .line 46
    .line 47
    iput v7, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 48
    .line 49
    int-to-long v6, v6

    .line 50
    long-to-int v8, p1

    .line 51
    and-int/lit8 v8, v8, 0x7f

    .line 52
    .line 53
    or-int/lit16 v8, v8, 0x80

    .line 54
    .line 55
    int-to-byte v8, v8

    .line 56
    invoke-static {v0, v6, v7, v8}, Lcom/explorestack/protobuf/o2;->Q([BJB)V

    .line 57
    .line 58
    .line 59
    ushr-long/2addr p1, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    and-long v6, p1, v4

    .line 62
    .line 63
    cmp-long v0, v6, v2

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 68
    .line 69
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 70
    .line 71
    add-int/lit8 v2, v1, 0x1

    .line 72
    .line 73
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 74
    .line 75
    long-to-int p1, p1

    .line 76
    int-to-byte p1, p1

    .line 77
    aput-byte p1, v0, v1

    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 83
    .line 84
    iget v6, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 85
    .line 86
    add-int/lit8 v7, v6, 0x1

    .line 87
    .line 88
    iput v7, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 89
    .line 90
    long-to-int v7, p1

    .line 91
    and-int/lit8 v7, v7, 0x7f

    .line 92
    .line 93
    or-int/lit16 v7, v7, 0x80

    .line 94
    .line 95
    int-to-byte v7, v7

    .line 96
    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    ushr-long/2addr p1, v1

    .line 99
    goto :goto_1

    .line 100
    :goto_2
    new-instance p2, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 101
    .line 102
    iget v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 124
    .line 125
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p2, v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p2
.end method

.method public final g1(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 6
    .line 7
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 13
    .line 14
    add-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v1, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 20
    .line 21
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 42
    .line 43
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public final h1([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 16
    .line 17
    iget v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 38
    .line 39
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-direct {p2, p3, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p2
.end method

.method public final l0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final m0(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 8
    .line 9
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 14
    .line 15
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 37
    .line 38
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final n0(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    int-to-byte p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$c;->m0(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q0([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->h1([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final r0(ILcom/explorestack/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->s0(Lcom/explorestack/protobuf/ByteString;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s0(Lcom/explorestack/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->d1(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/ByteString;->writeTo(Lcom/explorestack/protobuf/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;->y0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final y0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->e:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 8
    .line 9
    and-int/lit16 v3, p1, 0xff

    .line 10
    .line 11
    int-to-byte v3, v3

    .line 12
    aput-byte v3, v0, v1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    iput v3, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 17
    .line 18
    shr-int/lit8 v4, p1, 0x8

    .line 19
    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 21
    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v0, v2

    .line 24
    .line 25
    add-int/lit8 v2, v1, 0x3

    .line 26
    .line 27
    iput v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 28
    .line 29
    shr-int/lit8 v4, p1, 0x10

    .line 30
    .line 31
    and-int/lit16 v4, v4, 0xff

    .line 32
    .line 33
    int-to-byte v4, v4

    .line 34
    aput-byte v4, v0, v3

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    iput v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 39
    .line 40
    shr-int/lit8 p1, p1, 0x18

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 43
    .line 44
    int-to-byte p1, p1

    .line 45
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 50
    .line 51
    iget v1, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->h:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v2, p0, Lcom/explorestack/protobuf/CodedOutputStream$c;->g:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 73
    .line 74
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final z0(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream$c;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream$c;->A0(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
