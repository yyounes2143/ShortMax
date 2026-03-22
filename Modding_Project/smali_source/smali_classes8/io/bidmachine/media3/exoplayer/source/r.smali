.class public interface abstract Lio/bidmachine/media3/exoplayer/source/r;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/r$c;,
        Lio/bidmachine/media3/exoplayer/source/r$b;,
        Lio/bidmachine/media3/exoplayer/source/r$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lzm/q;
.end method

.method public b()Lzm/a0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public d(Lzm/q;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e(Lio/bidmachine/media3/exoplayer/source/r$c;)V
.end method

.method public abstract f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;
.end method

.method public abstract g(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/h;)V
.end method

.method public abstract h(Lio/bidmachine/media3/exoplayer/source/s;)V
.end method

.method public abstract i(Lio/bidmachine/media3/exoplayer/drm/h;)V
.end method

.method public abstract k(Lio/bidmachine/media3/exoplayer/source/r$c;)V
.end method

.method public abstract l(Lio/bidmachine/media3/exoplayer/source/r$c;Len/o;Lhn/b2;)V
    .param p2    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract m(Lio/bidmachine/media3/exoplayer/source/q;)V
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n(Lio/bidmachine/media3/exoplayer/source/r$c;)V
.end method

.method public abstract p(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/s;)V
.end method
