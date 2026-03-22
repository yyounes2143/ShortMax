.class public final synthetic Lin/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lin/m;->a:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput-object p2, p0, Lin/m;->b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 7
    .line 8
    iput-object p3, p0, Lin/m;->c:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lin/m;->d:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lin/m;->a:Landroid/media/AudioTrack;

    .line 2
    .line 3
    iget-object v1, p0, Lin/m;->b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 4
    .line 5
    iget-object v2, p0, Lin/m;->c:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, p0, Lin/m;->d:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->r(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
