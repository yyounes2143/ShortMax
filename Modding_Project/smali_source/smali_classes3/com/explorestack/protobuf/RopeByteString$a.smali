.class Lcom/explorestack/protobuf/RopeByteString$a;
.super Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/RopeByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/explorestack/protobuf/RopeByteString$c;

.field b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

.field final synthetic c:Lcom/explorestack/protobuf/RopeByteString;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/RopeByteString;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$a;->c:Lcom/explorestack/protobuf/RopeByteString;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/RopeByteString$c;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$a;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$a;->a:Lcom/explorestack/protobuf/RopeByteString$c;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/explorestack/protobuf/RopeByteString$a;->a()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$a;->b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 19
    .line 20
    return-void
.end method

.method private a()Lcom/explorestack/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$a;->a:Lcom/explorestack/protobuf/RopeByteString$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$c;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$a;->a:Lcom/explorestack/protobuf/RopeByteString$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$c;->c()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$a;->b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$a;->b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$a;->b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/explorestack/protobuf/RopeByteString$a;->a()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$a;->b:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    .line 22
    .line 23
    :cond_0
    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
