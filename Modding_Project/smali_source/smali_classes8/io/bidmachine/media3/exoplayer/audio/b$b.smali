.class final Lio/bidmachine/media3/exoplayer/audio/b$b;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lan/d;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lan/d;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
