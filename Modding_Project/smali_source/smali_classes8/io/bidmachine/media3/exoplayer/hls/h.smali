.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/hls/k;

.field public final synthetic b:Lio/bidmachine/media3/exoplayer/hls/d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/k;Lio/bidmachine/media3/exoplayer/hls/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/h;->a:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/h;->b:Lio/bidmachine/media3/exoplayer/hls/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/h;->a:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/h;->b:Lio/bidmachine/media3/exoplayer/hls/d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/k;->m(Lio/bidmachine/media3/exoplayer/hls/k;Lio/bidmachine/media3/exoplayer/hls/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
