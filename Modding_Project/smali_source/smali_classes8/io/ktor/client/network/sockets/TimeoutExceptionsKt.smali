.class public final Lio/ktor/client/network/sockets/TimeoutExceptionsKt;
.super Ljava/lang/Object;
.source "TimeoutExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lsr/c;)Lio/ktor/utils/io/b;
    .locals 3
    .param p0    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/network/sockets/TimeoutExceptionsKt$ByteChannelWithMappedExceptions$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lio/ktor/client/network/sockets/TimeoutExceptionsKt$ByteChannelWithMappedExceptions$1;-><init>(Lsr/c;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0, p0, v1}, Lio/ktor/utils/io/d;->d(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/utils/io/b;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
