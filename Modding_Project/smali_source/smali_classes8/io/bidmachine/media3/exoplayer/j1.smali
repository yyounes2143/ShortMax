.class public interface abstract Lio/bidmachine/media3/exoplayer/j1;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/j1$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/media3/exoplayer/source/r$b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/media3/exoplayer/j1;->a:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(JJF)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "shouldContinueLoading not implemented"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public b(JFZJ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "shouldStartPlayback not implemented"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public c(Lio/bidmachine/media3/exoplayer/j1$a;)Z
    .locals 9

    .line 1
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/j1$a;->b:Lzm/a0;

    .line 2
    .line 3
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/j1$a;->c:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/j1$a;->e:J

    .line 6
    .line 7
    iget v5, p1, Lio/bidmachine/media3/exoplayer/j1$a;->f:F

    .line 8
    .line 9
    iget-boolean v6, p1, Lio/bidmachine/media3/exoplayer/j1$a;->h:Z

    .line 10
    .line 11
    iget-wide v7, p1, Lio/bidmachine/media3/exoplayer/j1$a;->i:J

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/j1;->k(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;JFZJ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public d(Lio/bidmachine/media3/exoplayer/j1$a;)Z
    .locals 6

    .line 1
    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/j1$a;->d:J

    .line 2
    .line 3
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/j1$a;->e:J

    .line 4
    .line 5
    iget v5, p1, Lio/bidmachine/media3/exoplayer/j1$a;->f:F

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/j1;->a(JJF)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public e(Lhn/b2;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/j1;->onStopped()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;J)Z
    .locals 0

    .line 1
    const-string p1, "LoadControl"

    .line 2
    .line 3
    const-string p2, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public g(Lhn/b2;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/j1;->retainBackBufferFromKeyframe()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract getAllocator()Lwn/b;
.end method

.method public getBackBufferDurationUs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "getBackBufferDurationUs not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public h(Lhn/b2;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/j1;->onPrepared()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i(Lhn/b2;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/j1;->onReleased()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Lhn/b2;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/j1;->getBackBufferDurationUs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public k(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;JFZJ)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-wide v1, p3

    .line 3
    move v3, p5

    .line 4
    move v4, p6

    .line 5
    move-wide v5, p7

    .line 6
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/j1;->b(JFZJ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public l(Lio/bidmachine/media3/exoplayer/j1$a;Lsn/x;[Lvn/q;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "onTracksSelected not implemented"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public onPrepared()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "onPrepared not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public onReleased()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "onReleased not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public onStopped()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "onStopped not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "retainBackBufferFromKeyframe not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
