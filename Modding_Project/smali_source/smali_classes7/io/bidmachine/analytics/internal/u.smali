.class public final Lio/bidmachine/analytics/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/g0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/h0$a;)Lcom/explorestack/protobuf/BytesValue;
    .locals 3

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
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method
