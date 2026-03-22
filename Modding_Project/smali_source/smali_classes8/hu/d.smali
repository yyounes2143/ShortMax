.class final Lhu/d;
.super Lokhttp3/RequestBody;
.source "GsonStreamingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;

.field private final b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhu/d;->a:Lcom/google/gson/Gson;

    .line 5
    .line 6
    iput-object p2, p0, Lhu/d;->b:Lcom/google/gson/TypeAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lhu/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lhu/b;->d:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhu/d;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    iget-object v1, p0, Lhu/d;->b:Lcom/google/gson/TypeAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lhu/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Lhu/b;->b(Lokio/BufferedSink;Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
