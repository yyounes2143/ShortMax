.class public final Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1;
.super Lokio/ForwardingSource;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;Lokio/BufferedSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 1
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-wide p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;->setThrownException(Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
