.class public final Len/e;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private final a:Len/d;

.field private final b:Len/g;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Len/d;Len/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Len/e;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Len/e;->e:Z

    .line 8
    .line 9
    iput-object p1, p0, Len/e;->a:Len/d;

    .line 10
    .line 11
    iput-object p2, p0, Len/e;->b:Len/g;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Len/e;->c:[B

    .line 17
    .line 18
    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Len/e;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Len/e;->a:Len/d;

    .line 6
    .line 7
    iget-object v1, p0, Len/e;->b:Len/g;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Len/d;->b(Len/g;)J

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Len/e;->d:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Len/e;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Len/e;->a:Len/d;

    .line 6
    .line 7
    invoke-interface {v0}, Len/d;->close()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Len/e;->e:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Len/e;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Len/e;->c:[B

    invoke-virtual {p0, v0}, Len/e;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Len/e;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Len/e;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Len/e;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 5
    invoke-direct {p0}, Len/e;->d()V

    .line 6
    iget-object v0, p0, Len/e;->a:Len/d;

    invoke-interface {v0, p1, p2, p3}, Lzm/h;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 7
    :cond_0
    iget-wide p2, p0, Len/e;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Len/e;->f:J

    return p1
.end method
