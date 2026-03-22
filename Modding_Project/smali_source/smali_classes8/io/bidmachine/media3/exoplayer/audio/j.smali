.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/j;->a:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/j;->a:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;->a(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;Landroid/media/AudioRouting;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
