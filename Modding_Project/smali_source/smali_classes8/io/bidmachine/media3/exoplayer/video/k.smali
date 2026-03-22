.class public final synthetic Lio/bidmachine/media3/exoplayer/video/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/video/i$d;

.field public final synthetic b:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

.field public final synthetic c:Lzm/i0;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/k;->a:Lio/bidmachine/media3/exoplayer/video/i$d;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/k;->b:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/video/k;->c:Lzm/i0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/k;->a:Lio/bidmachine/media3/exoplayer/video/i$d;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/k;->b:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/k;->c:Lzm/i0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/i$d;->B(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
