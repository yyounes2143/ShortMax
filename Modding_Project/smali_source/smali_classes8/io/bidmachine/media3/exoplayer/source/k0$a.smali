.class final Lio/bidmachine/media3/exoplayer/source/k0$a;
.super Ljava/lang/Object;
.source "TimeOffsetMediaPeriod.java"

# interfaces
.implements Lsn/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lsn/s;

.field private final b:J


# direct methods
.method public constructor <init>(Lsn/s;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 5
    .line 6
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lsn/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lsn/s;->c(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p3, -0x4

    .line 8
    if-ne p1, p3, :cond_0

    .line 9
    .line 10
    iget-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 11
    .line 12
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->b:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    iput-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 16
    .line 17
    :cond_0
    return p1
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lsn/s;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lsn/s;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skipData(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->a:Lsn/s;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/k0$a;->b:J

    .line 4
    .line 5
    sub-long/2addr p1, v1

    .line 6
    invoke-interface {v0, p1, p2}, Lsn/s;->skipData(J)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
