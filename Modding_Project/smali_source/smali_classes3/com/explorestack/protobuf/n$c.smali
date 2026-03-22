.class final Lcom/explorestack/protobuf/n$c;
.super Lcom/explorestack/protobuf/n;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/nio/ByteBuffer;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:J

.field private s:J

.field private t:J


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/n;-><init>(Lcom/explorestack/protobuf/n$a;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 4
    iput p2, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 5
    iput-object p1, p0, Lcom/explorestack/protobuf/n$c;->f:Ljava/lang/Iterable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/n$c;->g:Ljava/util/Iterator;

    .line 7
    iput-boolean p3, p0, Lcom/explorestack/protobuf/n$c;->i:Z

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/explorestack/protobuf/n$c;->o:I

    iput p1, p0, Lcom/explorestack/protobuf/n$c;->p:I

    if-nez p2, :cond_0

    .line 9
    sget-object p1, Lcom/explorestack/protobuf/i0;->d:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 11
    iput-wide p1, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 12
    iput-wide p1, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 13
    iput-wide p1, p0, Lcom/explorestack/protobuf/n$c;->s:J

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->d0()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/explorestack/protobuf/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/n$c;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private P()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method private Q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n$c;->g:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->d0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    throw v0
.end method

.method private S([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-ltz p3, :cond_2

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p3, v0, :cond_2

    .line 8
    .line 9
    move v0, p3

    .line 10
    :goto_0
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Q()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    long-to-int v1, v1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 35
    .line 36
    sub-int v4, p3, v0

    .line 37
    .line 38
    add-int/2addr v4, p2

    .line 39
    int-to-long v5, v4

    .line 40
    int-to-long v9, v1

    .line 41
    move-object v4, p1

    .line 42
    move-wide v7, v9

    .line 43
    invoke-static/range {v2 .. v8}, Lcom/explorestack/protobuf/o2;->p(J[BJJ)V

    .line 44
    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 48
    .line 49
    add-long/2addr v1, v9

    .line 50
    iput-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    if-gtz p3, :cond_4

    .line 55
    .line 56
    if-nez p3, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    throw p1

    .line 64
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    throw p1
.end method

.method private X()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/n$c;->l:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 7
    .line 8
    iget v1, p0, Lcom/explorestack/protobuf/n$c;->p:I

    .line 9
    .line 10
    sub-int v1, v0, v1

    .line 11
    .line 12
    iget v2, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/explorestack/protobuf/n$c;->l:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->l:I

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private Y()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    return v0
.end method

.method private b0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method private c0(II)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p2, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    iget-object p2, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method private d0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n$c;->g:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    iget v1, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    long-to-int v2, v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    iput v1, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v0, v0

    .line 38
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 39
    .line 40
    iget-object v0, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/explorestack/protobuf/o2;->k(Ljava/nio/ByteBuffer;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->s:J

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 49
    .line 50
    add-long/2addr v2, v0

    .line 51
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 52
    .line 53
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 54
    .line 55
    add-long/2addr v2, v0

    .line 56
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 59
    .line 60
    add-long/2addr v2, v0

    .line 61
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(",
            "Lcom/explorestack/protobuf/j1<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 6
    .line 7
    iget v2, p0, Lcom/explorestack/protobuf/n;->b:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/n$c;->p(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iput v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 20
    .line 21
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/n$c;->a(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 32
    .line 33
    add-int/lit8 p2, p2, -0x1

    .line 34
    .line 35
    iput p2, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/n$c;->o(I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1
.end method

.method public B(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 6
    .line 7
    iget v2, p0, Lcom/explorestack/protobuf/n;->b:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/n$c;->p(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iput v1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 20
    .line 21
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/n$c;->a(I)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    iput p1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/n$c;->o(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1
.end method

.method public C()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 4
    .line 5
    cmp-long v2, v2, v0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 25
    .line 26
    return v6

    .line 27
    :cond_1
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 28
    .line 29
    iget-wide v7, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 30
    .line 31
    sub-long/2addr v2, v7

    .line 32
    const-wide/16 v7, 0xa

    .line 33
    .line 34
    cmp-long v2, v2, v7

    .line 35
    .line 36
    if-gez v2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_2
    const-wide/16 v2, 0x2

    .line 41
    .line 42
    add-long/2addr v2, v0

    .line 43
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    shl-int/lit8 v4, v4, 0x7

    .line 48
    .line 49
    xor-int/2addr v4, v6

    .line 50
    if-gez v4, :cond_3

    .line 51
    .line 52
    xor-int/lit8 v0, v4, -0x80

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_3
    const-wide/16 v5, 0x3

    .line 57
    .line 58
    add-long/2addr v5, v0

    .line 59
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    shl-int/lit8 v2, v2, 0xe

    .line 64
    .line 65
    xor-int/2addr v2, v4

    .line 66
    if-ltz v2, :cond_4

    .line 67
    .line 68
    xor-int/lit16 v0, v2, 0x3f80

    .line 69
    .line 70
    :goto_0
    move-wide v2, v5

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const-wide/16 v3, 0x4

    .line 73
    .line 74
    add-long/2addr v3, v0

    .line 75
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    shl-int/lit8 v5, v5, 0x15

    .line 80
    .line 81
    xor-int/2addr v2, v5

    .line 82
    if-gez v2, :cond_5

    .line 83
    .line 84
    const v0, -0x1fc080

    .line 85
    .line 86
    .line 87
    xor-int/2addr v0, v2

    .line 88
    :goto_1
    move-wide v2, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const-wide/16 v5, 0x5

    .line 91
    .line 92
    add-long/2addr v5, v0

    .line 93
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    shl-int/lit8 v4, v3, 0x1c

    .line 98
    .line 99
    xor-int/2addr v2, v4

    .line 100
    const v4, 0xfe03f80

    .line 101
    .line 102
    .line 103
    xor-int/2addr v2, v4

    .line 104
    if-gez v3, :cond_7

    .line 105
    .line 106
    const-wide/16 v3, 0x6

    .line 107
    .line 108
    add-long/2addr v3, v0

    .line 109
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-gez v5, :cond_8

    .line 114
    .line 115
    const-wide/16 v5, 0x7

    .line 116
    .line 117
    add-long/2addr v5, v0

    .line 118
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-gez v3, :cond_7

    .line 123
    .line 124
    const-wide/16 v3, 0x8

    .line 125
    .line 126
    add-long/2addr v3, v0

    .line 127
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-gez v5, :cond_8

    .line 132
    .line 133
    const-wide/16 v5, 0x9

    .line 134
    .line 135
    add-long/2addr v5, v0

    .line 136
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-gez v3, :cond_7

    .line 141
    .line 142
    add-long/2addr v0, v7

    .line 143
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-gez v3, :cond_6

    .line 148
    .line 149
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->W()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    long-to-int v0, v0

    .line 154
    return v0

    .line 155
    :cond_6
    move-wide v9, v0

    .line 156
    move v0, v2

    .line 157
    move-wide v2, v9

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    move v0, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_8
    move v0, v2

    .line 162
    goto :goto_1

    .line 163
    :goto_3
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 164
    .line 165
    return v0
.end method

.method public E()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public F()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->U()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public G()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/explorestack/protobuf/n;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public H()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->V()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/n;->c(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public I()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    int-to-long v8, v0

    .line 8
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    cmp-long v1, v8, v1

    .line 14
    .line 15
    if-gtz v1, :cond_0

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    move-wide v1, v3

    .line 22
    move-object v3, v0

    .line 23
    move-wide v4, v5

    .line 24
    move-wide v6, v8

    .line 25
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/o2;->p(J[BJJ)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/String;

    .line 29
    .line 30
    sget-object v2, Lcom/explorestack/protobuf/i0;->a:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 36
    .line 37
    add-long/2addr v2, v8

    .line 38
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Y()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-gt v0, v1, :cond_1

    .line 48
    .line 49
    new-array v1, v0, [B

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/n$c;->S([BII)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/String;

    .line 56
    .line 57
    sget-object v2, Lcom/explorestack/protobuf/i0;->a:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    .line 64
    .line 65
    const-string v0, ""

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    if-gez v0, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    throw v0

    .line 75
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    throw v0
.end method

.method public J()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    int-to-long v1, v0

    .line 8
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 9
    .line 10
    iget-wide v5, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 11
    .line 12
    sub-long/2addr v3, v5

    .line 13
    cmp-long v3, v1, v3

    .line 14
    .line 15
    if-gtz v3, :cond_0

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 18
    .line 19
    sub-long/2addr v5, v3

    .line 20
    long-to-int v3, v5

    .line 21
    iget-object v4, p0, Lcom/explorestack/protobuf/n$c;->h:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-static {v4, v3, v0}, Lcom/explorestack/protobuf/Utf8;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 28
    .line 29
    add-long/2addr v3, v1

    .line 30
    iput-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    if-ltz v0, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Y()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-gt v0, v1, :cond_1

    .line 40
    .line 41
    new-array v1, v0, [B

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/n$c;->S([BII)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/Utf8;->h([BII)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    if-gtz v0, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    throw v0

    .line 64
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    throw v0
.end method

.method public K()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->n:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/explorestack/protobuf/n$c;->n:I

    .line 16
    .line 17
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->n:I

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0
.end method

.method public L()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public M()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->V()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public O(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/n$c;->a0(I)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->Z()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/n$c;->a(I)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/n$c;->a0(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    const/16 p1, 0x8

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/n$c;->a0(I)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->b0()V

    .line 63
    .line 64
    .line 65
    return v1
.end method

.method public R()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Q()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 15
    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    add-long/2addr v2, v0

    .line 19
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public T()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x4

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 12
    .line 13
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    add-long/2addr v3, v0

    .line 25
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x8

    .line 32
    .line 33
    or-int/2addr v2, v3

    .line 34
    const-wide/16 v3, 0x2

    .line 35
    .line 36
    add-long/2addr v3, v0

    .line 37
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    shl-int/lit8 v3, v3, 0x10

    .line 44
    .line 45
    or-int/2addr v2, v3

    .line 46
    const-wide/16 v3, 0x3

    .line 47
    .line 48
    add-long/2addr v0, v3

    .line 49
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 54
    .line 55
    shl-int/lit8 v0, v0, 0x18

    .line 56
    .line 57
    or-int/2addr v0, v2

    .line 58
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    and-int/lit16 v0, v0, 0xff

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 70
    .line 71
    shl-int/lit8 v1, v1, 0x8

    .line 72
    .line 73
    or-int/2addr v0, v1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    and-int/lit16 v1, v1, 0xff

    .line 79
    .line 80
    shl-int/lit8 v1, v1, 0x10

    .line 81
    .line 82
    or-int/2addr v0, v1

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 88
    .line 89
    shl-int/lit8 v1, v1, 0x18

    .line 90
    .line 91
    or-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public U()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x8

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    const/16 v2, 0x38

    .line 12
    .line 13
    const/16 v7, 0x20

    .line 14
    .line 15
    const/16 v8, 0x18

    .line 16
    .line 17
    const/16 v9, 0x10

    .line 18
    .line 19
    const/16 v10, 0x8

    .line 20
    .line 21
    const-wide/16 v11, 0xff

    .line 22
    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    iget-wide v13, v0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 26
    .line 27
    add-long/2addr v3, v13

    .line 28
    iput-wide v3, v0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 29
    .line 30
    invoke-static {v13, v14}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v3, v1

    .line 35
    and-long/2addr v3, v11

    .line 36
    const-wide/16 v15, 0x1

    .line 37
    .line 38
    add-long/2addr v15, v13

    .line 39
    invoke-static/range {v15 .. v16}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-long v5, v1

    .line 44
    and-long/2addr v5, v11

    .line 45
    shl-long/2addr v5, v10

    .line 46
    or-long/2addr v3, v5

    .line 47
    const-wide/16 v5, 0x2

    .line 48
    .line 49
    add-long/2addr v5, v13

    .line 50
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v5, v1

    .line 55
    and-long/2addr v5, v11

    .line 56
    shl-long/2addr v5, v9

    .line 57
    or-long/2addr v3, v5

    .line 58
    const-wide/16 v5, 0x3

    .line 59
    .line 60
    add-long/2addr v5, v13

    .line 61
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-long v5, v1

    .line 66
    and-long/2addr v5, v11

    .line 67
    shl-long/2addr v5, v8

    .line 68
    or-long/2addr v3, v5

    .line 69
    const-wide/16 v5, 0x4

    .line 70
    .line 71
    add-long/2addr v5, v13

    .line 72
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    int-to-long v5, v1

    .line 77
    and-long/2addr v5, v11

    .line 78
    shl-long/2addr v5, v7

    .line 79
    or-long/2addr v3, v5

    .line 80
    const-wide/16 v5, 0x5

    .line 81
    .line 82
    add-long/2addr v5, v13

    .line 83
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    int-to-long v5, v1

    .line 88
    and-long/2addr v5, v11

    .line 89
    const/16 v1, 0x28

    .line 90
    .line 91
    shl-long/2addr v5, v1

    .line 92
    or-long/2addr v3, v5

    .line 93
    const-wide/16 v5, 0x6

    .line 94
    .line 95
    add-long/2addr v5, v13

    .line 96
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-long v5, v1

    .line 101
    and-long/2addr v5, v11

    .line 102
    const/16 v1, 0x30

    .line 103
    .line 104
    shl-long/2addr v5, v1

    .line 105
    or-long/2addr v3, v5

    .line 106
    const-wide/16 v5, 0x7

    .line 107
    .line 108
    add-long/2addr v13, v5

    .line 109
    invoke-static {v13, v14}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :goto_0
    int-to-long v5, v1

    .line 114
    and-long/2addr v5, v11

    .line 115
    shl-long v1, v5, v2

    .line 116
    .line 117
    or-long/2addr v1, v3

    .line 118
    return-wide v1

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    int-to-long v3, v1

    .line 124
    and-long/2addr v3, v11

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    int-to-long v5, v1

    .line 130
    and-long/2addr v5, v11

    .line 131
    shl-long/2addr v5, v10

    .line 132
    or-long/2addr v3, v5

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    int-to-long v5, v1

    .line 138
    and-long/2addr v5, v11

    .line 139
    shl-long/2addr v5, v9

    .line 140
    or-long/2addr v3, v5

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-long v5, v1

    .line 146
    and-long/2addr v5, v11

    .line 147
    shl-long/2addr v5, v8

    .line 148
    or-long/2addr v3, v5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    int-to-long v5, v1

    .line 154
    and-long/2addr v5, v11

    .line 155
    shl-long/2addr v5, v7

    .line 156
    or-long/2addr v3, v5

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    int-to-long v5, v1

    .line 162
    and-long/2addr v5, v11

    .line 163
    const/16 v1, 0x28

    .line 164
    .line 165
    shl-long/2addr v5, v1

    .line 166
    or-long/2addr v3, v5

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    int-to-long v5, v1

    .line 172
    and-long/2addr v5, v11

    .line 173
    const/16 v1, 0x30

    .line 174
    .line 175
    shl-long/2addr v5, v1

    .line 176
    or-long/2addr v3, v5

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    goto :goto_0
.end method

.method public V()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 4
    .line 5
    cmp-long v2, v2, v0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 25
    .line 26
    int-to-long v0, v6

    .line 27
    return-wide v0

    .line 28
    :cond_1
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 29
    .line 30
    iget-wide v7, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 31
    .line 32
    sub-long/2addr v2, v7

    .line 33
    const-wide/16 v7, 0xa

    .line 34
    .line 35
    cmp-long v2, v2, v7

    .line 36
    .line 37
    if-gez v2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    const-wide/16 v2, 0x2

    .line 42
    .line 43
    add-long/2addr v2, v0

    .line 44
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    shl-int/lit8 v4, v4, 0x7

    .line 49
    .line 50
    xor-int/2addr v4, v6

    .line 51
    if-gez v4, :cond_3

    .line 52
    .line 53
    xor-int/lit8 v0, v4, -0x80

    .line 54
    .line 55
    int-to-long v0, v0

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_3
    const-wide/16 v5, 0x3

    .line 59
    .line 60
    add-long/2addr v5, v0

    .line 61
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    shl-int/lit8 v2, v2, 0xe

    .line 66
    .line 67
    xor-int/2addr v2, v4

    .line 68
    if-ltz v2, :cond_4

    .line 69
    .line 70
    xor-int/lit16 v0, v2, 0x3f80

    .line 71
    .line 72
    int-to-long v0, v0

    .line 73
    move-wide v2, v5

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_4
    const-wide/16 v3, 0x4

    .line 77
    .line 78
    add-long/2addr v3, v0

    .line 79
    invoke-static {v5, v6}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    shl-int/lit8 v5, v5, 0x15

    .line 84
    .line 85
    xor-int/2addr v2, v5

    .line 86
    if-gez v2, :cond_5

    .line 87
    .line 88
    const v0, -0x1fc080

    .line 89
    .line 90
    .line 91
    xor-int/2addr v0, v2

    .line 92
    int-to-long v0, v0

    .line 93
    move-wide v2, v3

    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_5
    int-to-long v5, v2

    .line 97
    const-wide/16 v9, 0x5

    .line 98
    .line 99
    add-long/2addr v9, v0

    .line 100
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    int-to-long v2, v2

    .line 105
    const/16 v4, 0x1c

    .line 106
    .line 107
    shl-long/2addr v2, v4

    .line 108
    xor-long/2addr v2, v5

    .line 109
    const-wide/16 v4, 0x0

    .line 110
    .line 111
    cmp-long v6, v2, v4

    .line 112
    .line 113
    if-ltz v6, :cond_6

    .line 114
    .line 115
    const-wide/32 v0, 0xfe03f80

    .line 116
    .line 117
    .line 118
    :goto_0
    xor-long/2addr v0, v2

    .line 119
    :goto_1
    move-wide v2, v9

    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_6
    const-wide/16 v11, 0x6

    .line 123
    .line 124
    add-long/2addr v11, v0

    .line 125
    invoke-static {v9, v10}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    int-to-long v9, v6

    .line 130
    const/16 v6, 0x23

    .line 131
    .line 132
    shl-long/2addr v9, v6

    .line 133
    xor-long/2addr v2, v9

    .line 134
    cmp-long v6, v2, v4

    .line 135
    .line 136
    if-gez v6, :cond_7

    .line 137
    .line 138
    const-wide v0, -0x7f01fc080L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :goto_2
    xor-long/2addr v0, v2

    .line 144
    move-wide v2, v11

    .line 145
    goto :goto_4

    .line 146
    :cond_7
    const-wide/16 v9, 0x7

    .line 147
    .line 148
    add-long/2addr v9, v0

    .line 149
    invoke-static {v11, v12}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    int-to-long v11, v6

    .line 154
    const/16 v6, 0x2a

    .line 155
    .line 156
    shl-long/2addr v11, v6

    .line 157
    xor-long/2addr v2, v11

    .line 158
    cmp-long v6, v2, v4

    .line 159
    .line 160
    if-ltz v6, :cond_8

    .line 161
    .line 162
    const-wide v0, 0x3f80fe03f80L

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_8
    const-wide/16 v11, 0x8

    .line 169
    .line 170
    add-long/2addr v11, v0

    .line 171
    invoke-static {v9, v10}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    int-to-long v9, v6

    .line 176
    const/16 v6, 0x31

    .line 177
    .line 178
    shl-long/2addr v9, v6

    .line 179
    xor-long/2addr v2, v9

    .line 180
    cmp-long v6, v2, v4

    .line 181
    .line 182
    if-gez v6, :cond_9

    .line 183
    .line 184
    const-wide v0, -0x1fc07f01fc080L

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_9
    const-wide/16 v9, 0x9

    .line 191
    .line 192
    add-long/2addr v9, v0

    .line 193
    invoke-static {v11, v12}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    int-to-long v11, v6

    .line 198
    const/16 v6, 0x38

    .line 199
    .line 200
    shl-long/2addr v11, v6

    .line 201
    xor-long/2addr v2, v11

    .line 202
    const-wide v11, 0xfe03f80fe03f80L

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    xor-long/2addr v2, v11

    .line 208
    cmp-long v6, v2, v4

    .line 209
    .line 210
    if-gez v6, :cond_b

    .line 211
    .line 212
    add-long/2addr v0, v7

    .line 213
    invoke-static {v9, v10}, Lcom/explorestack/protobuf/o2;->w(J)B

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    int-to-long v6, v6

    .line 218
    cmp-long v4, v6, v4

    .line 219
    .line 220
    if-gez v4, :cond_a

    .line 221
    .line 222
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->W()J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    return-wide v0

    .line 227
    :cond_a
    move-wide v13, v0

    .line 228
    move-wide v0, v2

    .line 229
    move-wide v2, v13

    .line 230
    goto :goto_4

    .line 231
    :cond_b
    move-wide v0, v2

    .line 232
    goto :goto_1

    .line 233
    :goto_4
    iput-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 234
    .line 235
    return-wide v0
.end method

.method W()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->R()B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v2

    .line 16
    or-long/2addr v0, v4

    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    throw v0
.end method

.method public Z()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->K()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/n$c;->O(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->n:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method public a0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    iget v2, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 5
    .line 6
    iget v3, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 7
    .line 8
    sub-int/2addr v2, v3

    .line 9
    int-to-long v2, v2

    .line 10
    iget-wide v4, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 11
    .line 12
    sub-long/2addr v2, v4

    .line 13
    iget-wide v4, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 14
    .line 15
    add-long/2addr v2, v4

    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-gtz v0, :cond_2

    .line 19
    .line 20
    :goto_0
    if-lez p1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Q()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    long-to-int v0, v0

    .line 40
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr p1, v0

    .line 45
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 46
    .line 47
    int-to-long v3, v0

    .line 48
    add-long/2addr v1, v3

    .line 49
    iput-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    if-gez p1, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1

    .line 60
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->e()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/n$c;->p:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    return v0
.end method

.method public f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->o:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 5
    .line 6
    add-long/2addr v0, v2

    .line 7
    iget-wide v2, p0, Lcom/explorestack/protobuf/n$c;->r:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget v2, p0, Lcom/explorestack/protobuf/n$c;->k:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->X()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/explorestack/protobuf/n$c;->m:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->X()V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public q()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->V()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public r()Lcom/explorestack/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    int-to-long v8, v0

    .line 8
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->t:J

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    cmp-long v1, v8, v1

    .line 14
    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/explorestack/protobuf/n$c;->i:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/explorestack/protobuf/n$c;->j:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->s:J

    .line 26
    .line 27
    sub-long/2addr v3, v1

    .line 28
    long-to-int v1, v3

    .line 29
    add-int/2addr v0, v1

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/n$c;->c0(II)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 39
    .line 40
    add-long/2addr v1, v8

    .line 41
    iput-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    new-array v0, v0, [B

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    move-wide v1, v3

    .line 49
    move-object v3, v0

    .line 50
    move-wide v4, v5

    .line 51
    move-wide v6, v8

    .line 52
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/o2;->p(J[BJJ)V

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 56
    .line 57
    add-long/2addr v1, v8

    .line 58
    iput-wide v1, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 59
    .line 60
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_1
    if-lez v0, :cond_5

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Y()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-gt v0, v1, :cond_5

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/explorestack/protobuf/n$c;->i:Z

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/explorestack/protobuf/n$c;->j:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-lez v0, :cond_3

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    const-wide/16 v4, 0x0

    .line 93
    .line 94
    cmp-long v2, v2, v4

    .line 95
    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->Q()V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/n$c;->P()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    long-to-int v2, v2

    .line 106
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 111
    .line 112
    iget-wide v5, p0, Lcom/explorestack/protobuf/n$c;->s:J

    .line 113
    .line 114
    sub-long/2addr v3, v5

    .line 115
    long-to-int v3, v3

    .line 116
    add-int v4, v3, v2

    .line 117
    .line 118
    invoke-direct {p0, v3, v4}, Lcom/explorestack/protobuf/n$c;->c0(II)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/explorestack/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    sub-int/2addr v0, v2

    .line 130
    iget-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 131
    .line 132
    int-to-long v5, v2

    .line 133
    add-long/2addr v3, v5

    .line 134
    iput-wide v3, p0, Lcom/explorestack/protobuf/n$c;->q:J

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ByteString;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :cond_4
    new-array v1, v0, [B

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/n$c;->S([BII)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :cond_5
    if-nez v0, :cond_6

    .line 154
    .line 155
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_6
    if-gez v0, :cond_7

    .line 159
    .line 160
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    throw v0

    .line 165
    :cond_7
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    throw v0
.end method

.method public s()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->U()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public t()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public u()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public v()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->U()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public w()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public x(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/n;->b:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 10
    .line 11
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/n$c;->a(I)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    iput p1, p0, Lcom/explorestack/protobuf/n;->a:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    throw p1
.end method

.method public y()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public z()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n$c;->V()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
