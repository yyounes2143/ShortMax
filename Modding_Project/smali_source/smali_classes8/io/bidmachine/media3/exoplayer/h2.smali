.class public interface abstract Lio/bidmachine/media3/exoplayer/h2;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/f2$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/h2$a;
    }
.end annotation


# virtual methods
.method public abstract A(ILhn/b2;Lcn/h;)V
.end method

.method public abstract disable()V
.end method

.method public abstract e()J
.end method

.method public abstract getCapabilities()Lio/bidmachine/media3/exoplayer/i2;
.end method

.method public abstract getMediaClock()Lgn/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lsn/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTrackType()I
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public l(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public abstract maybeThrowStreamError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r(Lzm/a0;)V
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract t([Lio/bidmachine/media3/common/a;Lsn/s;JJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract w(Lgn/g0;[Lio/bidmachine/media3/common/a;Lsn/s;JZZJJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public z(JJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x2710

    .line 2
    .line 3
    return-wide p1
.end method
