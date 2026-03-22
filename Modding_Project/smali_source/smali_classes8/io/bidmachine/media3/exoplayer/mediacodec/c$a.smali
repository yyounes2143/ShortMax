.class Lio/bidmachine/media3/exoplayer/mediacodec/c$a;
.super Landroid/os/Handler;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/c;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/mediacodec/c;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->e(Lio/bidmachine/media3/exoplayer/mediacodec/c;Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
