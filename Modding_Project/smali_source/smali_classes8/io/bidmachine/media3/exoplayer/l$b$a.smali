.class Lio/bidmachine/media3/exoplayer/l$b$a;
.super Landroid/media/AudioDeviceCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/l$b;->a(Lio/bidmachine/media3/exoplayer/q2$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcn/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/l$b;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/l$b$a;->a:Lio/bidmachine/media3/exoplayer/l$b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/l$b$a;->a:Lio/bidmachine/media3/exoplayer/l$b;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/l$b;->g(Lio/bidmachine/media3/exoplayer/l$b;)Lcn/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/l$b$a;->a:Lio/bidmachine/media3/exoplayer/l$b;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/l$b;->f(Lio/bidmachine/media3/exoplayer/l$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcn/f;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/l$b$a;->a:Lio/bidmachine/media3/exoplayer/l$b;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/l$b;->g(Lio/bidmachine/media3/exoplayer/l$b;)Lcn/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/l$b$a;->a:Lio/bidmachine/media3/exoplayer/l$b;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/l$b;->f(Lio/bidmachine/media3/exoplayer/l$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcn/f;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
