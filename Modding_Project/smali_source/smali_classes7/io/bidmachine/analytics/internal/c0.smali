.class public final Lio/bidmachine/analytics/internal/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/g0$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/e0;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/c0;->a:Lio/bidmachine/analytics/internal/e0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/h0$a;)Lcom/explorestack/protobuf/BytesValue;
    .locals 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/c0;->a:Lio/bidmachine/analytics/internal/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/e0;->a()Lio/bidmachine/analytics/internal/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/n;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->newBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/n;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/ByteString;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 48
    .line 49
    const-string v0, "Empty data"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 56
    .line 57
    const-string v0, "No data received yet"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method
