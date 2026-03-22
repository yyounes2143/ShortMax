.class final Lhu/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lfu/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfu/h<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field static final d:Lokhttp3/MediaType;


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

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json; charset=UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->e(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lhu/b;->d:Lokhttp3/MediaType;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhu/b;->a:Lcom/google/gson/Gson;

    .line 5
    .line 6
    iput-object p2, p0, Lhu/b;->b:Lcom/google/gson/TypeAdapter;

    .line 7
    .line 8
    iput-boolean p3, p0, Lhu/b;->c:Z

    .line 9
    .line 10
    return-void
.end method

.method static b(Lokio/BufferedSink;Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/BufferedSink;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 2
    .line 3
    invoke-interface {p0}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0, p3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lhu/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhu/d;

    .line 6
    .line 7
    iget-object v1, p0, Lhu/b;->a:Lcom/google/gson/Gson;

    .line 8
    .line 9
    iget-object v2, p0, Lhu/b;->b:Lcom/google/gson/TypeAdapter;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p1}, Lhu/d;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lokio/Buffer;

    .line 16
    .line 17
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lhu/b;->a:Lcom/google/gson/Gson;

    .line 21
    .line 22
    iget-object v2, p0, Lhu/b;->b:Lcom/google/gson/TypeAdapter;

    .line 23
    .line 24
    invoke-static {v0, v1, v2, p1}, Lhu/b;->b(Lokio/BufferedSink;Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lhu/b;->d:Lokhttp3/MediaType;

    .line 28
    .line 29
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lhu/b;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
