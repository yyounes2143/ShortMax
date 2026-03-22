.class Lio/bidmachine/media3/exoplayer/video/h$a;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/h;->O(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/bidmachine/media3/exoplayer/video/h;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/video/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$a;->b:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lzm/i0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$a;->b:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h;->I1(Lio/bidmachine/media3/exoplayer/video/h;)Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$a;->b:Lio/bidmachine/media3/exoplayer/video/h;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/h;->L2(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$a;->b:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h;->I1(Lio/bidmachine/media3/exoplayer/video/h;)Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$a;->b:Lio/bidmachine/media3/exoplayer/video/h;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h;->J1(Lio/bidmachine/media3/exoplayer/video/h;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
