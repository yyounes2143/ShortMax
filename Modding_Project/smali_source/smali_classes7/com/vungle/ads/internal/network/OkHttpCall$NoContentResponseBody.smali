.class public final Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoContentResponseBody"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lokhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0
    .param p1    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot read raw response body of a converted body."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
