.class public final Lio/ktor/utils/io/ByteReadChannelKt;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteReadChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,265:1\n74#2:266\n*S KotlinDebug\n*F\n+ 1 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n*L\n210#1:266\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/ByteReadChannel;)Z
    .locals 1
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
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
    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final b(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;
    .locals 4
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
    instance-of v0, p4, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->j:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->j:I

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
    iget-object p0, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lio/ktor/utils/io/e;

    .line 42
    .line 43
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->h:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, v0, Lio/ktor/utils/io/ByteReadChannelKt$copyAndClose$1;->j:I

    .line 61
    .line 62
    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->b(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    if-ne p4, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    :goto_1
    check-cast p4, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide p2

    .line 75
    invoke-static {p1}, Lio/ktor/utils/io/f;->a(Lio/ktor/utils/io/e;)Z

    .line 76
    .line 77
    .line 78
    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static synthetic c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
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
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelKt;->b(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final d(Lio/ktor/utils/io/ByteReadChannel;[BLrs/c;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "[B",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, p1, v1, v0, p2}, Lio/ktor/utils/io/ByteReadChannel;->e([BIILrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
