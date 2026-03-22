.class final Lio/bidmachine/media3/exoplayer/source/b0$d;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lsn/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lio/bidmachine/media3/exoplayer/source/b0;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/b0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->b:Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/source/b0$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->b:Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/b0;->V(ILgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->b:Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/b0;->G(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->b:Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/b0;->O(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->b:Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/b0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/b0;->Z(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
