.class public final Lio/bidmachine/analytics/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/g0$a;


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/y;->a:Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/h0$a;)Lcom/explorestack/protobuf/BytesValue;
    .locals 4

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->newBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/FileInputStream;

    .line 6
    .line 7
    new-instance v2, Ljava/io/File;

    .line 8
    .line 9
    iget-object v3, p0, Lio/bidmachine/analytics/internal/y;->a:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0$a;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/ByteString;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method
