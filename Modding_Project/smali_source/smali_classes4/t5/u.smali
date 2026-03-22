.class public Lt5/u;
.super Ljava/lang/Object;
.source "ForwardingExtractorInput.java"

# interfaces
.implements Lt5/l;


# instance fields
.field private final a:Lt5/l;


# direct methods
.method public constructor <init>(Lt5/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/u;->a:Lt5/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lt5/l;->a([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1}, Lt5/l;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1, p2}, Lt5/l;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lt5/l;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lt5/l;->getPeekPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lt5/l;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1, p2, p3}, Lt5/l;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lt5/l;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lt5/l;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1, p2, p3}, Lt5/l;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lt5/l;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lt5/l;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lt5/l;->skip(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt5/u;->a:Lt5/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lt5/l;->skipFully(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
