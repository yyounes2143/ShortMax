.class public final Lio/ktor/utils/io/d;
.super Ljava/lang/Object;
.source "ByteChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Z)Lio/ktor/utils/io/b;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move v1, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/b;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static final b(ZLkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/b;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/ktor/utils/io/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "exceptionMapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/utils/io/d$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/d$a;-><init>(ZLkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static synthetic c(ZILjava/lang/Object;)Lio/ktor/utils/io/b;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/d;->a(Z)Lio/ktor/utils/io/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic d(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/utils/io/b;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/d;->b(ZLkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final e([BII)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel;

    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "wrap(content, offset, length)"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
