.class public final synthetic Lin/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

.field public final synthetic b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lin/o;->a:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 5
    .line 6
    iput-object p2, p0, Lin/o;->b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/o;->a:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 2
    .line 3
    iget-object v1, p0, Lin/o;->b:Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->s(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
