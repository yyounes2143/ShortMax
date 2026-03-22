.class public interface abstract Lp5/a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/l1$d;
.implements Lcom/google/android/exoplayer2/source/p;
.implements La7/d$a;
.implements Lcom/google/android/exoplayer2/drm/h;


# virtual methods
.method public abstract B()V
.end method

.method public abstract E(Lr5/e;)V
.end method

.method public abstract Y(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/o$b;",
            ">;",
            "Lcom/google/android/exoplayer2/source/o$b;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Exception;)V
.end method

.method public abstract b0(Lp5/b;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/Exception;)V
.end method

.method public abstract f(JI)V
.end method

.method public abstract g(J)V
.end method

.method public abstract h(Ljava/lang/Exception;)V
.end method

.method public abstract j(Ljava/lang/Object;J)V
.end method

.method public abstract k(IJJ)V
.end method

.method public abstract l(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract m(Lr5/e;)V
.end method

.method public abstract n(Lr5/e;)V
.end method

.method public abstract o(Lr5/e;)V
.end method

.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract p(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract t(Lcom/google/android/exoplayer2/l1;Landroid/os/Looper;)V
.end method
