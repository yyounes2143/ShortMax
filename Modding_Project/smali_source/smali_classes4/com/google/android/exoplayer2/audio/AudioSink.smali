.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/v0;)Z
.end method

.method public abstract b(Lcom/google/android/exoplayer2/k1;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
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

.method public abstract g(Lcom/google/android/exoplayer2/audio/a;)V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/k1;
.end method

.method public abstract h()V
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public i(Lp5/t3;)V
    .locals 0
    .param p1    # Lp5/t3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public abstract isEnded()Z
.end method

.method public abstract j(Lq5/t;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
.end method

.method public abstract l(Lcom/google/android/exoplayer2/v0;)I
.end method

.method public abstract m(Lcom/google/android/exoplayer2/v0;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
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
