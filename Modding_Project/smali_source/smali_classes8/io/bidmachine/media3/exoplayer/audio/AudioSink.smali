.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/media3/common/a;)Z
.end method

.method public abstract b(Lzm/v;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public e(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract f(Z)V
.end method

.method public abstract flush()V
.end method

.method public abstract g()J
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Lzm/v;
.end method

.method public h(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    return-void
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract i(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;)V
.end method

.method public abstract isEnded()Z
.end method

.method public j(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/audio/d;
    .locals 0

    .line 1
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/d;->d:Lio/bidmachine/media3/exoplayer/audio/d;

    .line 2
    .line 3
    return-object p1
.end method

.method public abstract k(Lzm/d;)V
.end method

.method public l(Lhn/b2;)V
    .locals 0
    .param p1    # Lhn/b2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public abstract m(Lio/bidmachine/media3/common/a;)I
.end method

.method public abstract n(Lzm/c;)V
.end method

.method public abstract o(Lio/bidmachine/media3/common/a;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public p(Lcn/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public q(II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    return-void
.end method

.method public abstract setVolume(F)V
.end method
