.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoSink;
.super Ljava/lang/Object;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoSink$b;,
        Lio/bidmachine/media3/exoplayer/video/VideoSink$a;,
        Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
    }
.end annotation


# virtual methods
.method public abstract a()Landroid/view/Surface;
.end method

.method public abstract b(Z)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f(ILio/bidmachine/media3/common/a;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract g(Z)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Lio/bidmachine/media3/common/a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract j(Lyn/f;)V
.end method

.method public abstract k(I)V
.end method

.method public abstract l(Lio/bidmachine/media3/exoplayer/h2$a;)V
.end method

.method public abstract m(JJ)V
.end method

.method public abstract o(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract p(Z)Z
.end method

.method public abstract r(F)V
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation
.end method

.method public abstract s()V
.end method

.method public abstract t(JZLio/bidmachine/media3/exoplayer/video/VideoSink$b;)Z
.end method

.method public abstract u()V
.end method

.method public abstract v()V
.end method

.method public abstract w(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract x(Landroid/view/Surface;Lcn/d0;)V
.end method

.method public abstract y(Z)V
.end method
