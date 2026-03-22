.class final Lio/bidmachine/media3/exoplayer/audio/i$a;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq5/v;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lio/bidmachine/media3/exoplayer/audio/d;->d:Lio/bidmachine/media3/exoplayer/audio/d;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 11
    .line 12
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/d$b;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/d$b;->e(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/d$b;->g(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/d$b;->d()Lio/bidmachine/media3/exoplayer/audio/d;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
