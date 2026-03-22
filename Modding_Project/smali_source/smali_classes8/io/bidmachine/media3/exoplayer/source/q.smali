.class public interface abstract Lio/bidmachine/media3/exoplayer/source/q;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/q$a;
    }
.end annotation


# virtual methods
.method public abstract a(JLgn/i0;)J
.end method

.method public abstract b(Lio/bidmachine/media3/exoplayer/k1;)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract e(Lio/bidmachine/media3/exoplayer/source/q$a;J)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lsn/x;
.end method

.method public abstract i([Lvn/q;[Z[Lsn/s;[ZJ)J
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method
