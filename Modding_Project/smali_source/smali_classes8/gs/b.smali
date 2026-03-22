.class public final Lgs/b;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,204:1\n12#2,11:205\n12#2,11:216\n507#3,13:227\n488#3,4:240\n492#3,6:246\n507#3,6:252\n513#3,7:260\n74#4:244\n74#4:245\n74#4:258\n74#4:259\n*S KotlinDebug\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n*L\n63#1:205,11\n67#1:216,11\n76#1:227,13\n161#1:240,4\n161#1:246,6\n187#1:252,6\n187#1:260,7\n162#1:244\n168#1:245\n188#1:258\n192#1:259\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/nio/charset/CharsetDecoder;Lhs/l;I)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/nio/charset/CharsetDecoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhs/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {p1}, Lgs/b;->g(Lhs/l;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v0, v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v1, p2}, Lgs/a;->a(Ljava/nio/charset/CharsetDecoder;Lhs/l;Ljava/lang/Appendable;I)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static synthetic b(Ljava/nio/charset/CharsetDecoder;Lhs/l;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const p2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lgs/b;->a(Ljava/nio/charset/CharsetDecoder;Lhs/l;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final c(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lhs/j;
    .locals 3
    .param p0    # Ljava/nio/charset/CharsetEncoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lhs/i;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v1, v2, v1}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Lgs/b;->f(Ljava/nio/charset/CharsetEncoder;Lhs/n;Ljava/lang/CharSequence;II)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lhs/i;->h0()Lhs/j;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {v0}, Lhs/n;->release()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static synthetic d(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lhs/j;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lgs/b;->c(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lhs/j;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final e(Ljava/nio/charset/CharsetEncoder;Lhs/n;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    move v4, v2

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lhs/a;->f()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    sub-int/2addr v5, v6

    .line 19
    invoke-static {p0, v0}, Lgs/a;->e(Ljava/nio/charset/CharsetEncoder;Lhs/a;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    move v3, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/2addr v3, v1

    .line 28
    :goto_1
    invoke-virtual {v0}, Lhs/a;->f()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    sub-int/2addr v6, v7

    .line 37
    sub-int/2addr v5, v6

    .line 38
    add-int/2addr v4, v5

    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v1, v0}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {p1}, Lhs/n;->k()V

    .line 49
    .line 50
    .line 51
    return v4

    .line 52
    :goto_2
    invoke-virtual {p1}, Lhs/n;->k()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static final f(Ljava/nio/charset/CharsetEncoder;Lhs/n;Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0    # Ljava/nio/charset/CharsetEncoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhs/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
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
    const-string v0, "destination"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "input"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-lt p3, p4, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {p1, v2, v1}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move v3, v0

    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lhs/a;->f()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    sub-int/2addr v4, v5

    .line 36
    invoke-static {p0, p2, p3, p4, v1}, Lgs/a;->f(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILhs/a;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ltz v5, :cond_4

    .line 41
    .line 42
    add-int/2addr p3, v5

    .line 43
    invoke-virtual {v1}, Lhs/a;->f()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    sub-int/2addr v6, v7

    .line 52
    sub-int/2addr v4, v6

    .line 53
    add-int/2addr v3, v4

    .line 54
    if-lt p3, p4, :cond_1

    .line 55
    .line 56
    move v4, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    if-nez v5, :cond_2

    .line 59
    .line 60
    const/16 v4, 0x8

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v4, v2

    .line 64
    :goto_1
    if-lez v4, :cond_3

    .line 65
    .line 66
    invoke-static {p1, v4, v1}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p1}, Lhs/n;->k()V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Lgs/b;->e(Ljava/nio/charset/CharsetEncoder;Lhs/n;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    add-int/2addr v3, p0

    .line 81
    return v3

    .line 82
    :cond_4
    :try_start_1
    const-string p0, "Check failed."

    .line 83
    .line 84
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_2
    invoke-virtual {p1}, Lhs/n;->k()V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static final g(Lhs/l;)J
    .locals 4
    .param p0    # Lhs/l;
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
    instance-of v0, p0, Lhs/j;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lhs/l;->a0()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lhs/l;->a0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x10

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :goto_0
    return-wide v0
.end method
