.class public final Lhs/b;
.super Ljava/lang/Object;
.source "BufferAppend.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferAppend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,59:1\n69#2:60\n74#2:61\n69#2:76\n74#2:77\n59#2:78\n390#3,5:62\n372#3,7:67\n395#3,2:74\n*S KotlinDebug\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n*L\n10#1:60\n12#1:61\n32#1:76\n49#1:77\n49#1:78\n16#1:62,5\n17#1:67,7\n16#1:74,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lhs/a;Lhs/a;I)I
    .locals 4
    .param p0    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    if-gt v0, p2, :cond_0

    .line 34
    .line 35
    invoke-static {p0, p2}, Lhs/b;->b(Lhs/a;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0, v3, p2, v1}, Lfs/c;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lhs/a;->c(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lhs/a;->a(I)V

    .line 67
    .line 68
    .line 69
    return p2
.end method

.method private static final b(Lhs/a;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lhs/a;->e()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    add-int/2addr v0, v1

    .line 20
    if-lt v0, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sub-int/2addr v0, p1

    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lhs/a;->l()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "Can\'t append buffer: not enough free space at the end"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static final c(Lhs/a;Lhs/a;)I
    .locals 5
    .param p0    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lhs/a;->h()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lt v1, v0, :cond_0

    .line 25
    .line 26
    sub-int/2addr v1, v0

    .line 27
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v2, v3, v4, v0, v1}, Lfs/c;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lhs/a;->c(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lhs/a;->n(I)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "Not enough space in the beginning to prepend bytes"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method
