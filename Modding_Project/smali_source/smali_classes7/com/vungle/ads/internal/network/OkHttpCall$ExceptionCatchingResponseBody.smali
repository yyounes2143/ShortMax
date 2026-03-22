.class public final Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionCatchingResponseBody"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final delegate:Lokhttp3/ResponseBody;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegateSource:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thrownException:Ljava/io/IOException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 1
    .param p1    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lokhttp3/ResponseBody;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;Lokio/BufferedSource;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Lokio/BufferedSource;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getThrownException()Ljava/io/IOException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setThrownException(Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 2
    .line 3
    return-void
.end method

.method public source()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Lokio/BufferedSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method
