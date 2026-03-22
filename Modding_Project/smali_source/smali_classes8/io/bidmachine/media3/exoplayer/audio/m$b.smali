.class final Lio/bidmachine/media3/exoplayer/audio/m$b;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Lio/bidmachine/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
