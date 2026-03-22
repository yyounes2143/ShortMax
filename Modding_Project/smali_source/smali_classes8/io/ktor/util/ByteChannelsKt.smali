.class public final Lio/ktor/util/ByteChannelsKt;
.super Ljava/lang/Object;
.source "ByteChannels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/ByteReadChannel;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lrs/c<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lio/ktor/util/ByteChannelsKt$toByteArray$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/ktor/util/ByteChannelsKt$toByteArray$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/util/ByteChannelsKt$toByteArray$1;->i:I

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
    iput v1, v0, Lio/ktor/util/ByteChannelsKt$toByteArray$1;->i:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lio/ktor/util/ByteChannelsKt$toByteArray$1;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lio/ktor/util/ByteChannelsKt$toByteArray$1;-><init>(Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v4, Lio/ktor/util/ByteChannelsKt$toByteArray$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lio/ktor/util/ByteChannelsKt$toByteArray$1;->i:I

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v7, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput v7, v4, Lio/ktor/util/ByteChannelsKt$toByteArray$1;->i:I

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v1, p0

    .line 62
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/ByteReadChannel$a;->a(Lio/ktor/utils/io/ByteReadChannel;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_2
    check-cast p1, Lhs/j;

    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p1, p0, v7, v0}, Lhs/q;->c(Lhs/j;IILjava/lang/Object;)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
