.class Lio/bidmachine/media3/exoplayer/video/i$a;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/i;-><init>(Lio/bidmachine/media3/exoplayer/video/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/video/i;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/video/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$a;->a:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$a;->a:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->x(Lio/bidmachine/media3/exoplayer/video/i;)Lzm/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lzm/x;

    .line 12
    .line 13
    const-wide/16 v1, -0x2

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lzm/x;->c(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$a;->a:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->x(Lio/bidmachine/media3/exoplayer/video/i;)Lzm/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lzm/x;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lzm/x;->c(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
