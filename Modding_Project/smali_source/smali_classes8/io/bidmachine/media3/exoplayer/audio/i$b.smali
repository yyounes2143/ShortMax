.class final Lio/bidmachine/media3/exoplayer/audio/i$b;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/d;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lq5/u;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

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
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 11
    .line 12
    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/audio/d$b;-><init>()V

    .line 13
    .line 14
    .line 15
    sget v0, Lcn/m0;->a:I

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-ne p0, v0, :cond_1

    .line 24
    .line 25
    move p0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/audio/d$b;->e(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/audio/d$b;->f(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/d$b;->g(Z)Lio/bidmachine/media3/exoplayer/audio/d$b;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/d$b;->d()Lio/bidmachine/media3/exoplayer/audio/d;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
