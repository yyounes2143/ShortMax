.class final Lio/bidmachine/media3/exoplayer/audio/b$c;
.super Landroid/media/AudioDeviceCallback;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/audio/b;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/audio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/b$c;-><init>(Lio/bidmachine/media3/exoplayer/audio/b;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/b;->e(Lio/bidmachine/media3/exoplayer/audio/b;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 8
    .line 9
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/audio/b;->a(Lio/bidmachine/media3/exoplayer/audio/b;)Lzm/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 14
    .line 15
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/b;->b(Lio/bidmachine/media3/exoplayer/audio/b;)Lio/bidmachine/media3/exoplayer/audio/c;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/a;->f(Landroid/content/Context;Lzm/c;Lio/bidmachine/media3/exoplayer/audio/c;)Lio/bidmachine/media3/exoplayer/audio/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/b;->d(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/b;->b(Lio/bidmachine/media3/exoplayer/audio/b;)Lio/bidmachine/media3/exoplayer/audio/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcn/m0;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/b;->c(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/c;)Lio/bidmachine/media3/exoplayer/audio/c;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 20
    .line 21
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/b;->e(Lio/bidmachine/media3/exoplayer/audio/b;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 26
    .line 27
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/audio/b;->a(Lio/bidmachine/media3/exoplayer/audio/b;)Lzm/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/b$c;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 32
    .line 33
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/b;->b(Lio/bidmachine/media3/exoplayer/audio/b;)Lio/bidmachine/media3/exoplayer/audio/c;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/a;->f(Landroid/content/Context;Lzm/c;Lio/bidmachine/media3/exoplayer/audio/c;)Lio/bidmachine/media3/exoplayer/audio/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/b;->d(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/a;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
